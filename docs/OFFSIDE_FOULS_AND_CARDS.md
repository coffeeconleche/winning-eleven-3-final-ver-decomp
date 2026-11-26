# Bắt Việt Vị, Phạm Lỗi & Thẻ Vàng / Thẻ Đỏ (Winning Eleven 3)

Tài liệu này tổng hợp logic **bắt lỗi việt vị, thổi phạt va chạm, rút thẻ vàng / 2 thẻ vàng thành đỏ / thẻ đỏ trực tiếp** trích xuất từ `src/resident/func_8001F2D0.c` và `src/resident/func_8007CC00.c`, viết bằng **mã giả C thuần (engine-agnostic)**.

---

## 1. Thổi Phạt & Việt Vị (`func_8001F2D0.c`)

Khi trọng tài bắt lỗi việt vị hoặc phạm lỗi trên sân:
1. Gọi `func_8004FB68(0)` tạm dừng luồng bóng sống.
2. Đặt trạng thái bóng về chờ đá phạt: `func_800477A0(ball, 5)`.
3. Gán người phạm lỗi/việt vị (`scratch[0x2A8] % 24`) qua `func_80096094(record)`.
4. Nếu `scratch[0x309] != 0`:
   - Gọi `func_8004F58C(9)` (hiệu ứng trọng tài chỉ tay).
   - Phát còi trọng tài: `func_800AB620(0x51A)` và `func_800AB620(0x517)`.
   - Chuyển sang `func_8001720C()` để dựng cảnh đá phạt / thẻ phạt.

---

## 2. Rút Thẻ Vàng / Thẻ Đỏ & Truất Quyền (`func_8007CC00.c`)

Trọng tài (`r0 = buf + 0x59D8`) chạy máy trạng thái `D_801054B6` (`0..4`):
- **Đọc mức độ lỗi (`scratch[0x2AF]`):**
  - `severity == 2`: **Thẻ đỏ trực tiếp** (`a0 = 1` nếu `r0[0x3B1] == 0`, hiển thị thẻ đỏ `func_800500B0`).
  - Khác `2`: **Thẻ vàng** (`a0 = 2`).
- **Kiểm tra tích lũy 2 thẻ vàng (`buf + side * 22 + 0x88A5 + player_slot`):**
  - Mỗi lần dính thẻ vàng, giá trị tại `0x88A5` tăng lên (`0 -> 1 -> 2`).
  - Khi đạt **`== 2`** (2 thẻ vàng = **1 thẻ đỏ gián tiếp**): trọng tài thực hiện thêm pha rút thẻ thứ 2 (`r0[0x3B1]++`, `r0[0x396] = 2`), sau đó cầu thủ bị truất quyền thi đấu và `func_800730F8()` tự động hoán đổi slot đội hình để lấp chỗ trống.

---

## 3. Mã Giả C Thuần (Pure Engine-Agnostic C)

```c
typedef enum {
    CARD_NONE   = 0,
    CARD_YELLOW = 1,
    CARD_RED    = 2
} WE3_CardType;

void we3_apply_foul_card(
    WE3_Player *offender,
    uint8_t player_yellow_count[2][22],
    WE3_CardType severity
) {
    if (severity == CARD_RED) {
        offender->sent_off = true;
    } else if (severity == CARD_YELLOW) {
        uint8_t *cnt = &player_yellow_count[offender->team_side][offender->squad_slot];
        *cnt += 1;
        if (*cnt >= 2) {
            /* 2 the vang -> The do gian tiep */
            offender->sent_off = true;
        }
    }
}
```
