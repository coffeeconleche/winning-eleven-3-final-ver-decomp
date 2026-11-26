# Cơ chế Di chuyển, Xoạc bóng & Sút/Phá bóng — Winning Eleven 3 Final Ver.

Tài liệu này tổng hợp các công thức di chuyển, xoay người, xoạc bóng và sút/phá bóng trích xuất từ `src/resident/func_80048AD8.c`, `func_80054A68.c` và `func_80040324.c`, kèm **mã giả C thuần (độc lập với mọi engine)**.

---

## 1. Hệ thống Di chuyển & Rê bóng 2 góc (`func_80048AD8.c`, `func_80054A68.c`)

Điểm tạo nên "độ đầm" đặc trưng của cầu thủ WE3 là **tách biệt góc thân (`body_angle`) và góc chạy (`move_angle`)** (thang góc `0..255` = `360°`):

| Độ lệch góc mục tiêu (`delta`) | Animation sử dụng | Tốc độ quay thân / chạy | Tốc độ tối đa & Hành vi |
|---|---|---|---|
| `< 33` (`< 46°`, chạy thẳng) | `anim 38` (`16f`) | Thân: `12/frame` · Chạy: `24/frame` | `min(limit, 48)` nếu đã thẳng hàng; `34` nếu đang xoay. |
| `33..80` (`46°..114°`, rẽ vừa) | `anim 27` (`16f`, có lật gương `0x3AC`) | Thân: `12/frame` (nghiêng thêm `±40` = `±56°`) · Chạy: `24/frame` | `min(limit, 48)` hoặc `34`; tạo dáng nghiêng vai khi ngoặt bóng. |
| `>= 81` (`>= 114°`, bẻ hướng gắt) | `anim 13` (`17f`) | Quay gấp | Giảm tốc rồi xoay sang hướng mới. |
| `> 64` (`> 90°`) khi `speed >= 32` | `anim 14` (frame `2`) | Phanh trượt đổi hướng | Giảm `speed -= 8` mỗi frame tới `0` rồi mới quay hẳn sang hướng mới (`func_80054A68.c`). |

- **Gia tốc mỗi frame**: Tăng đều thêm `max_speed / 4` cho tới khi đạt `max_speed`.

---

## 2. Cơ chế Xoạc bóng & Phục hồi (`func_80040324.c` — `case 1, 2`)

- **Pha trượt (`frame 0..11`)**:
  - Di chuyển theo vector vận tốc xoạc `(vx, vz)`, thân chỉ xoay rất chậm (`8` đơn vị góc/frame).
  - Bắt đầu từ `frame >= 5`: Kích hoạt vùng kiểm tra cắt/cướp bóng (`func_80040DD4(actor, 1)`).
- **Pha hãm đà trên cỏ (`frame >= 12`)**:
  - Mỗi frame giảm **20% vận tốc trượt**: `vx = vx * 0.8`, `vz = vz * 0.8`.
- **Pha đứng dậy (`frame == 25`)**:
  - Chuyển về `Idle` (`anim 1` với pha ngẫu nhiên `rand(21)`) và khóa `4` frame hồi phục (`recovery = 4`) trước khi cho điều khiển tiếp.

---

## 3. Cơ chế Sút / Phá bóng (`func_80040324.c` — `case 3`)

- Kiểm tra tiếp xúc ở đúng **`frame 9`**:
  - Nếu cầu thủ ở vùng tấn công/khung thành (`|X| >= 0x1991`, `|Z| < 0x12F4`):
    - Hướng mục tiêu nhắm vào tâm khung thành đối phương `(±0x33A0, 0)` cộng nhiễu `±0x10`, nhưng bị giới hạn góc xoay tối đa `±0x30` quanh hướng sút tự nhiên của chân (`body_angle ∓ 0x38`) — nghĩa là **tư thế thân người quyết định độ chuẩn của cú sút**.
    - Lực sút ngang: `128 + rand(16)` (`128..143`); độ bổng dọc: `12 + rand(4)` (`12..15`).

---

## 4. Mã giả C chuẩn (độc lập với mọi Engine)

```c
#define TURN_STEP_BODY 12.0f   // ~16.9 deg/frame
#define TURN_STEP_MOVE 24.0f   // ~33.8 deg/frame

typedef struct {
    float x, z;
    float vx, vz;
    float speed;
    float body_angle;   // radian (hướng mặt hiển thị)
    float move_angle;   // radian (hướng vector chạy)
    int is_sliding;
    int slide_frame;
    int recovery_frames;
} PlayerMotion;

float move_angle_toward(float current, float target, float max_step) {
    float diff = fmodf(target - current + 3.14159265f, 6.2831853f) - 3.14159265f;
    if (fabsf(diff) <= max_step) return target;
    return current + (diff > 0.0f ? max_step : -max_step);
}

void player_step_movement(PlayerMotion *p, float input_angle, float has_input, float speed_limit) {
    if (p->recovery_frames > 0) {
        p->recovery_frames--;
        return;
    }
    if (p->is_sliding) {
        p->slide_frame++;
        p->x += p->vx;
        p->z += p->vz;
        if (p->slide_frame >= 12) {
            p->vx *= 0.8f; // Ma sát hãm đà xoạc
            p->vz *= 0.8f;
        }
        if (p->slide_frame >= 25) {
            p->is_sliding = 0;
            p->recovery_frames = 4;
        }
        return;
    }
    if (!has_input) {
        p->speed = fmaxf(0.0f, p->speed - 8.0f);
        return;
    }

    float diff = fabsf(fmodf(input_angle - p->move_angle + 3.14159265f, 6.2831853f) - 3.14159265f);
    // Phanh trượt nếu bẻ lái > 90 độ khi đang chạy nhanh
    if (diff > 1.570796f && p->speed >= 32.0f) {
        p->speed = fmaxf(0.0f, p->speed - 8.0f);
        return;
    }

    float step_body = TURN_STEP_BODY * (6.2831853f / 256.0f);
    float step_move = TURN_STEP_MOVE * (6.2831853f / 256.0f);
    p->body_angle = move_angle_toward(p->body_angle, input_angle, step_body);
    p->move_angle = move_angle_toward(p->move_angle, input_angle, step_move);

    float cap = (fabsf(p->body_angle - input_angle) < 0.05f) ? fminf(speed_limit, 48.0f) : 34.0f;
    p->speed = fminf(cap, p->speed + cap * 0.25f);
    p->vx = cosf(p->move_angle) * p->speed * 0.004f;
    p->vz = sinf(p->move_angle) * p->speed * 0.004f;
    p->x += p->vx;
    p->z += p->vz;
}
```
