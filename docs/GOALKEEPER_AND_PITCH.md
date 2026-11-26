# Cơ chế Thủ môn (GK) & Kích thước Sân chuẩn — Winning Eleven 3 Final Ver.

Tài liệu này tổng hợp các thông số sân và thuật toán bắt bóng/đổ người của thủ môn trích xuất trực tiếp từ `src/resident/func_8008ECC0.c`, `func_8008F2DC.c`, `func_800547A4.c` và `func_8001C5A8.c`.

---

## 1. Kích thước Sân & Vùng cấm địa (quy đổi `1m ≈ 250` đơn vị PS1)

| Vùng / Mốc | Giá trị PS1 | Quy đổi (`* 0.004`) | Nguồn xác minh |
|---|---:|---:|---|
| **Bán kính bóng** | `32` (`0x20`) | `~0.128 m` | `func_8004BAA4.s` |
| **Đường biên ngang / Khung thành (`|X|`)** | `8,163` (`0x1FE3`) | `~32.65 m` (nửa chiều dài sân) | `func_800547A4.c` |
| **Giới hạn vùng cấm địa (`|Z|`)** | `4,852` (`0x12F4`) | `~19.41 m` (nửa chiều rộng vòng cấm) | `func_800547A4.c` |
| **Nửa chiều rộng khung thành / Vùng 5m50 (`|Z|`)** | `3,584` (`0xE00`) | `~14.34 m` (vùng kiểm tra biên/sút gần) | `func_8001C5A8.c` |

---

## 2. Cơ chế Đổ người & Bắt bóng của Thủ môn (`func_8008F2DC.c` & `func_8008ECC0.c`)

WE3 không để thủ môn "bay bừa" hoặc "dịch chuyển tức thời", mà tính toán **giao điểm 3D sau 7 frame** khớp đúng với tay thủ môn ở frame tiếp xúc:

### A. Đổ người cản phá bóng bổng/góc xa (`func_8008F2DC.c` — `anim 109` / `0x6D`, 19 frame)
1. **Chọn hướng đổ người Trái ↔ Phải**:
   - Tính góc từ thủ môn tới vị trí dự đoán của bóng sau 6–7 frame (`scratch42, scratch5A, scratch72`).
   - So sánh với góc tới bóng hiện tại: `side = ((angle - second) & 255) < 129`, gán vào `actor[0x3AC]` để lật gương animation đổ người trái/phải.
2. **Tính quỹ đạo tay chạm bóng tại đúng `frame 7`**:
   - Gọi `func_8005C2AC(actor, 0x6D, 7, ...)` để lấy tọa độ bàn tay của `anim 109` ở **frame 7** (`scratchF0, scratchF2, scratchF4`).
   - Tính vận tốc bay mỗi frame để bàn tay chạm đúng bóng tại frame 7:
     - `vx = (target_x - hand_x) / 7`
     - `vz = (target_z - hand_z) / 7`
     - `vy = (target_y - hand_y) / 4` (áp dụng nâng độ cao trong các frame `4, 5, 6`).
3. **Kích hoạt bay**: Gọi `func_8005BA30(actor, 109, 1)` và cập nhật vị trí thủ môn mỗi frame.

### B. Bắt gọn / Đứng dậy ôm bóng (`func_8008ECC0.c` — `anim 115` / `0x73`, 18 frame)
- Khi ở `frame 6` (`case 6`), gọi `func_80094EEC` kiểm tra va chạm tay–bóng. Nếu bắt được, gắn quyền giữ bóng cho thủ môn (`scratch[0x2A9] = record[0x38D]`) và đặt bóng vào tay.
- Từ `frame 12..16`, giảm dần tốc độ trượt trên cỏ (`speed = 8`).
- Tại `frame 17`: Nếu thủ môn đang ôm bóng (`record[0x38D] == scratch[0x2A9]`), chuyển sang trạng thái ôm bóng đứng dậy (`0x87`, có thể phát bóng/ném bóng); nếu đấm/đẩy bóng ra thì chuyển về trạng thái đứng bình thường (`0x9D`).

---

## 3. Mã giả C chuẩn (độc lập với mọi Engine) cho Thủ môn kiểu WE3

```c
typedef struct {
    float x, y, z;
    float vx, vy, vz;
    int is_diving;
    int dive_frame;
} Goalkeeper;

void gk_trigger_dive(Goalkeeper *gk, float pred_x, float pred_y, float pred_z,
                     float hand_off_x, float hand_off_y, float hand_off_z) {
    gk->is_diving = 1;
    gk->dive_frame = 0;
    gk->vx = (pred_x - (gk->x + hand_off_x)) / 7.0f;
    gk->vz = (pred_z - (gk->z + hand_off_z)) / 7.0f;
    gk->vy = (pred_y - (gk->y + hand_off_y)) / 4.0f;
}

void gk_step(Goalkeeper *gk, float ball_x, float ball_z,
             float goal_x, float goal_z, float dt) {
    if (gk->is_diving) {
        gk->dive_frame++;
        float step = dt * 30.0f;
        gk->x += gk->vx * step;
        gk->z += gk->vz * step;
        if (gk->dive_frame >= 4 && gk->dive_frame <= 6) {
            gk->y += gk->vy * step;
        }
        if (gk->dive_frame >= 18) {
            gk->is_diving = 0;
            gk->y = 0.0f;
        }
        return;
    }

    // Đứng trên đường phân giác giữa tâm khung thành và quả bóng
    float dx = ball_x - goal_x, dz = ball_z - goal_z;
    float len = sqrtf(dx * dx + dz * dz);
    float dist = clampf(len * 0.15f, 1.2f, 3.5f);
    float tx = goal_x + (len > 1e-4f ? (dx / len) * dist : 0.0f);
    float tz = clampf(goal_z + (len > 1e-4f ? (dz / len) * dist : 0.0f), -3.4f, 3.4f);

    float mx = tx - gk->x, mz = tz - gk->z;
    float mlen = sqrtf(mx * mx + mz * mz);
    float max_step = 4.5f * dt;
    if (mlen > max_step && mlen > 1e-4f) {
        gk->x += (mx / mlen) * max_step;
        gk->z += (mz / mlen) * max_step;
    } else {
        gk->x = tx; gk->z = tz;
    }
}
```
