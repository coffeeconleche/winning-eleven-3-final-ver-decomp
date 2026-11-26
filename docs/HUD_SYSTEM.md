# Hệ Thống HUD, Bảng Điểm, Radar & Sprite 2D (Winning Eleven 3)

Tài liệu này tổng hợp toàn bộ kiến trúc **HUD trong trận đấu** (Bảng điểm, Đồng hồ, Radar, Thanh lực sút, Tên/Số áo cầu thủ, Nhóm vị trí) trích xuất từ `src/resident/func_8005C8D0.c`, `func_8007524C.c`, `func_80057AE4.c` và gói texture đã giải nén tại `we3_remake_assets/textures/hud/`.

---

## 1. Tài Nguyên Đồ Họa HUD Đã Giải Nén (`textures/hud/`)

Tất cả sprite 2D của HUD được lưu trong **18 texture atlas VRAM** (`hud_00_vram_384_0.png` .. `hud_17_vram_416_384.png`) kèm **245 bảng màu BGR555** trong `hud_cluts.json`:
- **Tài sản sẵn có:**
  - `we3_remake_assets/textures/hud/hud_*.png` (18 file PNG atlas 4-bit/8-bit theo tọa độ VRAM `(x, y)`).
  - `we3_remake_assets/textures/hud/hud_cluts.json` (245 bảng màu CLUT dùng để đổi màu áo trên radar, màu chữ vàng/xanh/đỏ, thẻ phạt, thanh lực).

---

## 2. Cơ Chế Vẽ Sprite HUD (`func_8001CEE0` & `func_8001D004`)

WE3 quản lý các phần tử HUD bằng **Slot ID** cố định:
1. Cấp phát/khởi tạo nhóm sprite HUD qua `func_8001CEE0(slot_count, slot_id, flags, ...)`.
2. Lấy con trỏ tới mảng packet của slot đó qua `func_8001D004(slot_id)` và cập nhật tọa độ `(x, y)`, UV `(u, v)`, `clut` mỗi frame.

### Các Slot HUD Chính Đã Giải Mã:
| Slot ID | Thành phần HUD | Nguồn C | Chi tiết |
| :--- | :--- | :--- | :--- |
| **`0x30`** | **Biển tên / Số áo / Nhóm vị trí góc dưới** | `func_8005C8D0.c` | Vẽ icon nhóm vị trí (`GK/DF/MF/FW` lấy từ `D_800E78A8` hoặc `D_800CA30C`), **số áo 2 chữ số** (`D_800F0420`: hàng chục `tens * 8 + 0x30`, hàng đơn vị `units * 8 + 0x30`), và thanh trạng thái (`packet[0x2E] = 7` khi bật cờ). |
| **`0x31`** | **Khung/Nền thông tin cầu thủ đang cầm bóng** | `func_8005C8D0.c` | UV chọn theo chỉ số đội `record[0x398]` (`<< 7`) và vị trí trong danh sách (`initial / 11`, `initial % 11`). |
| **`0x73`, `0x79`** | **Bảng đội hình / Tên cầu thủ & Chỉ số trên HUD** | `func_8007524C.c` | Tọa độ X căn theo đội (`side * 75 - 41`, riêng slot 9, 10 căn `side * 75 - 46`). Hiển thị 11 cầu thủ đá chính (`counter < 11`) hoặc dự bị (`counter >= 11`). |

---

## 3. Bình Luận Viên Gọi Tên Theo HUD (`func_80057AE4.c`)

Khi cầu thủ nhận bóng (`record[0x394] != base[0xAC48]` hoặc có cờ ép gọi tên `first != 0`):
- Hệ thống lấy **số áo** của cầu thủ từ `D_800F0420[side][slot]` và cộng offset âm thanh bình luận:
  - **Đội 0 (Home):** `+ 0x10E7` (bình thường) hoặc `+ 0x10FD` (nhấn mạnh khi sút/nguy hiểm).
  - **Đội 1 (Away):** `+ 0x1113` (bình thường) hoặc `+ 0x1129` (nhấn mạnh).
- Sau đó gọi `func_800AB620(sound_id)` để phát giọng đọc tên cầu thủ!

---

## 4. Mã Giả C Thuần (Pure Engine-Agnostic C)

```c
typedef struct {
    int16_t screen_x, screen_y;
    uint8_t u, v, w, h;
    uint16_t clut_id;
    bool visible;
} WE3_HudSprite;

void we3_update_active_player_hud(
    const WE3_Player *p,
    uint8_t shirt_number,
    uint8_t pos_group, /* 0=GK, 1=DF, 2=MF, 3=FW */
    bool show_highlight,
    WE3_HudSprite *out_pos_icon,
    WE3_HudSprite *out_tens,
    WE3_HudSprite *out_units
) {
    /* Icon nhom vi tri (GK/DF/MF/FW) */
    out_pos_icon->u = (uint8_t)(pos_group * 8 + 0x20);

    /* So ao 2 chu so */
    if (shirt_number < 10) {
        out_tens->visible = false;
    } else {
        out_tens->visible = true;
        out_tens->u = (uint8_t)((shirt_number / 10) * 8 + 0x30);
    }
    out_units->visible = true;
    out_units->u = (uint8_t)((shirt_number % 10) * 8 + 0x30);
    out_pos_icon->visible = true;
    (void)p;
    (void)show_highlight;
}
```
