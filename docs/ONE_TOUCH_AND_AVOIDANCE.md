# Sút/Chuyền một chạm, Chân thuận & Né đường bóng đồng đội — WE3

Tài liệu này tổng hợp 2 cơ chế tinh tế giúp lối chơi WE3 mượt mà trích xuất từ `src/resident/func_80034470.c` và `func_8003172C.c`, kèm **mã giả C thuần (độc lập với mọi engine)**.

---

## 1. Chọn động tác Sút/Chuyền & Chân thuận (`func_80034470.c`)

Khi cầu thủ chuẩn bị thực hiện cú sút hoặc chuyền tới mục tiêu `(tx, tz)`:
- **Trường hợp 1 — Mục tiêu thẳng trước mặt (`delta < 33`, `< 46°`)**:
  - **Nhảy thẳng vào `anim 15` ở `frame 22`** (động tác sút/chuyền tức thời, bỏ qua đoạn lấy đà dài).
  - Đọc **chân thuận** (`preferred_foot = (stat_word >> 4) & 1`, `0` = phải, `1` = trái) từ bảng chỉ số cầu thủ `D_8010C330` để đặt cờ lật gương trái/phải.
- **Trường hợp 2 — Mục tiêu lệch vừa (`33..87`, `46°..123°`)**:
  - Phát **`anim 20` (`29f`)** (vung chân xoay hông `±90°` theo hướng lệch).
- **Trường hợp 3 — Mục tiêu ở sau lưng (`>= 88`, `>= 124°`)**:
  - Nếu bóng ở trong tầm chân, **khống chế giữ bóng trước (`ball_state = 3`)** rồi mới xoay người (`anim 84`) chứ không sút mù ra sau lưng.

---

## 2. Tự động bước né đường chuyền của đồng đội (`func_8003172C.c`)

Khi một cầu thủ không giữ bóng đứng gần quả bóng (`dist² <= 0xFFFFF`, tức `<= ~4.1 m`) và đường bóng đang hướng về phía mình (`|ball_dir - move_dir| < 46°`), nhưng cầu thủ đó không hướng mặt đón bóng (`|angle_to_ball - body_dir| >= 79°`):
- Cầu thủ **tự động bước né ngang `±90°`** (vuông góc với hướng chạy) một bước nhỏ (`12` đơn vị PS1 ≈ `0.048 m/frame`) để **tránh vô tình chặn đường chuyền của đồng đội**!

---

## 3. Mã giả C chuẩn (độc lập với mọi Engine)

```c
// Chọn động tác sút/chuyền theo độ lệch góc tới mục tiêu
int pick_kick_action(float angle_to_target, float body_angle, int preferred_foot, int *out_mirror) {
    float diff = fabsf(fmodf(angle_to_target - body_angle + 3.14159265f, 6.2831853f) - 3.14159265f);
    if (diff < 0.80f) { // < 46 độ: sút/chuyền nhanh dùng chân thuận
        *out_mirror = preferred_foot;
        return 15; // anim 15 (bắt đầu từ frame 22)
    }
    if (diff < 2.15f) { // 46..123 độ: vung chân xoay hông
        *out_mirror = (fmodf(angle_to_target - body_angle + 6.2831853f, 6.2831853f) >= 3.14159265f);
        return 20; // anim 20
    }
    return 84; // >= 124 độ: khống chế giữ bóng rồi xoay người (anim 84)
}

// Bước né ngang khi không phải người nhận bóng
void step_avoid_pass_lane(float *px, float *pz, float move_angle, float body_angle,
                          float ball_x, float ball_z, float ball_angle) {
    float dx = ball_x - *px, dz = ball_z - *pz;
    if (dx * dx + dz * dz > 16.8f) return; // > ~4.1m

    float diff_move = fabsf(fmodf(move_angle - ball_angle + 3.14159265f, 6.2831853f) - 3.14159265f);
    float ang_to_ball = atan2f(dz, dx);
    float diff_face = fabsf(fmodf(ang_to_ball - body_angle + 3.14159265f, 6.2831853f) - 3.14159265f);

    if (diff_move < 0.80f && diff_face >= 1.37f) {
        float side_sign = (fmodf(ang_to_ball - move_angle + 6.2831853f, 6.2831853f) >= 3.14159265f) ? 1.0f : -1.0f;
        float dodge_ang = move_angle + side_sign * 1.5707963f;
        *px += cosf(dodge_ang) * 0.048f;
        *pz += sinf(dodge_ang) * 0.048f;
    }
}
```
