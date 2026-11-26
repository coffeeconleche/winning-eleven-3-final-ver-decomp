# Chiến Thuật, Đội Hình & Thay Người Tự Động (Tactics & Formations) — Winning Eleven 3

Tài liệu này tổng hợp toàn bộ cấu trúc **đội hình (Formation), phân nhóm vị trí, cờ chiến thuật (Tactics flags) và cơ chế tự động bù vị trí khi có thẻ đỏ/thay người** trích xuất trực tiếp từ `src/resident/func_8001617C.c`, `func_8001E310.c`, `func_80053728.c`, `func_8005C8D0.c`, `func_800730F8.c` và overlay `src/overlays/selform/func_80120698.c`, `func_801211E8.c`.

---

## 1. Cấu Trúc Dữ Liệu Đội Hình & Cầu Thủ Trong Trận

Mỗi đội (`side = 0` hoặc `1`) có các bảng sau trong RAM:
1. **`formation_id[side]` (`0x1F8002FD + side`):** Mã sơ đồ chiến thuật đang chọn (ví dụ: 4-4-2, 4-3-3, 3-5-2...).
   - Trong `SELFORM.BIN` (`func_801211E8.c`): Bit `(D_801222F0[formation_id] >> 12) & 0xF == 4` cho biết sơ đồ dùng **4 hậu vệ** (tự động dịch chuyển vị trí trung vệ/hậu vệ biên `slot 1, 2` trên sa bàn).
2. **`lineup_map[side][22]` (`base + 0x8E9C + side * 22`):** Ánh xạ 22 slot đội hình (`0..10` = 11 cầu thủ đá chính trên sân, `11..21` = 11 cầu thủ dự bị).
3. **`position_group[side][22]` (`D_800E78A8[side][player]`):** Nhóm vị trí tự nhiên của từng cầu thủ (`0 = GK`, `1 = DF`, `2 = MF`, `3 = FW`), dùng để tô màu icon và tìm người thay thế.
4. **`formation_slot_role[formation_id][11]` (`D_800CA30C[formation_id][slot]`):** Vai trò chiến thuật của từng ô `0..10` trong sơ đồ (`func_8005C8D0.c`).
5. **`shirt_number[side][22]` (`D_800F0420[side][player]`):** Số áo của từng cầu thủ.

---

## 2. Các Cờ Chiến Thuật & Trạng Thái Đội (`base + 0x8F07 .. 0x8F23`)

Trích xuất từ `func_8001E310.c`, `func_8001617C.c`, `func_80085C68.c`, `func_801211E8.c`:

| Offset trong `base` | Ý nghĩa | Giá trị mặc định |
| :--- | :--- | :--- |
| `0xABDC + side` | Bật/tắt chế độ Libero / điều chỉnh hàng thủ (`D_800C6AF0 & 3`) | `0` hoặc `1` |
| `0x1F800301 + side` | Chiến thuật chủ động A (`D_800C6AF1 >> 4`) | `0..15` |
| `0x1F800303 + side` | Chiến thuật chủ động B (`D_800C6AF1 & 0xF`) | `0..15` |
| `0x8F12 + side` | Chiến thuật chủ động của từng đội (`side 0, 1`) | `1` |
| `0x8F16`, `0x8F17` | Thiết lập nhịp độ / chiến thuật hiệp đấu | `0`, `0` (hoặc `0`, `3`) |
| `0x8F1A + side*2` | Thanh cân bằng Công / Thủ (Attack/Defense bias, `u16`) | `128` (trung lập) |
| `0x8F1F`, `0x8F23` | Cờ trạng thái chiến thuật đặc biệt (luân lưu / cuối trận) | `0` |

---

## 3. Tự Động Bù Đội Hình Khi Bị Thẻ Đỏ (`func_800730F8`)

Khi một cầu thủ trong 11 người đá chính bị **thẻ đỏ** (hoặc bị loại khỏi sân, cờ `FlagView->flag != 0` tại `base + selector * 132 + player * 6 + 0x93A9`):
1. Game kiểm tra nhóm vị trí tự nhiên `group = D_800E78A8[side][player]`.
2. Tra bảng ưu tiên thay thế **`D_800CA458[group][0..10]`** (11 slot theo thứ tự ưu tiên phù hợp nhất với vị trí vừa mất).
3. Tìm slot đầu tiên có cầu thủ còn đang thi đấu hợp lệ (`flag == 0`).
4. **Hoán đổi** vị trí hai cầu thủ trong `lineup_map` (`0x8E9C`) và bảng ghép cặp (`D_800E7620`) để AI tự động lấp chỗ trống chiến thuật mà không bị hổng đội hình!

---

## 4. Mã Giả C Thuần (Pure Engine-Agnostic C)

```c
typedef struct {
    uint8_t formation_id;
    uint8_t lineup_map[22];     /* 0..10: on pitch, 11..21: bench */
    uint8_t natural_group[22];  /* 0=GK, 1=DF, 2=MF, 3=FW */
    uint8_t shirt_number[22];
    uint16_t attack_defense_bias; /* 128 = neutral */
    uint8_t tactic_mode;
    bool sweeper_enabled;
} WE3_TeamTactics;

/* Tu dong dieu chinh doi hinh khi mot cau thu bi the do (func_800730F8) */
void we3_rebalance_on_red_card(
    WE3_TeamTactics *team,
    const bool player_sent_off[22],
    const uint8_t priority_order[4][11] /* D_800CA458 */
) {
    for (int slot = 0; slot < 11; slot++) {
        uint8_t p = team->lineup_map[slot];
        if (!player_sent_off[p]) continue;

        uint8_t group = team->natural_group[p];
        for (int k = 0; k < 11; k++) {
            uint8_t cand_slot = priority_order[group][k];
            uint8_t cand_player = team->lineup_map[cand_slot];
            if (!player_sent_off[cand_player]) {
                /* Swap slot de lap khoang trong chien thuat */
                team->lineup_map[slot] = cand_player;
                team->lineup_map[cand_slot] = p;
                break;
            }
        }
    }
}
```
