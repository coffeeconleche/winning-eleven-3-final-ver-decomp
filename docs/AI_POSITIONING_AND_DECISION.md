# AI Chạy chỗ, Đón bóng, Nước rút & Tránh dẫm chân đồng đội — WE3

Tài liệu này tổng hợp các quy tắc AI và điều khiển nâng cao trích xuất từ `src/resident/func_800243D8.c`, `func_800259F0.c`, `func_80052A68.c` và `func_80052C6C.c`, kèm **mã giả C thuần (độc lập với mọi engine)**.

---

## 1. Tránh 2 đồng đội cùng lao vào 1 quả bóng (`func_80052A68.c`)

Trước khi cho một cầu thủ chạy tới điểm rơi bóng ở frame thứ `k` (`ball_pred_x[k], ball_pred_z[k]`):
- Kiểm tra xem **đồng đội được phân công ở nửa sân đó** (`func_8005CE30` cho nửa sân tấn công / `func_8005CE14` cho nửa sân nhà) có đang đứng gần điểm bóng hơn ngưỡng `threshold + 0x4000` (và còn nằm trong sân `|x| <= 0x32DF`) hay không.
- Nếu **đồng đội đã ở trong vùng đón bóng** → trả về `1` để **cầu thủ hiện tại nhường bóng**, giữ vị trí đội hình thay vì chạy đâm vào đồng đội.

---

## 2. Cơ chế Nước rút & Giới hạn góc rẽ (`func_800259F0.c`)

Điểm khiến nước rút (`Sprint`) trong WE3 khác biệt với chạy thường (`Run`):
- **Rẽ nhẹ (`delta < 33`, `< 46°`)**:
  - Phát `anim 4` (`14f`), **tốc độ quay bị khóa xuống `4` đơn vị góc/frame** (rất chậm — chỉ `~5.6°/frame`!).
  - Gia tốc mỗi frame: `max_speed / (accel_stat - 2)`, giới hạn trong `[30 .. max_speed]`.
- **Rẽ vừa (`33..95`, `46°..134°`)**:
  - Tự động hạ từ `anim 4` xuống **`anim 38`** (`16f`), mở lại tốc độ quay `12/24`, nhưng **ép trần tốc độ xuống `34`** — muốn rẽ phải giảm tốc.
- **Bẻ lái gắt (`delta >= 96`, `>= 135°`) khi đang đạt `max_speed`**:
  - Kích hoạt **`anim 7` (`10f`)** (phanh gấp đổi hướng).

---

## 3. Đón bóng bổng & Khống chế theo chỉ số (`func_800243D8.c`)

- Khi bóng đang ở trạng thái bay (`ball_state == 1`) và cầu thủ nằm trong danh sách đón bóng:
  - Game đọc chỉ số khống chế (`tech_stat = 0..9`, lấy từ `word >> 28` trong bảng cầu thủ `D_8010C328`), tính `margin = 10 - tech_stat`.
  - Nếu bộ đếm thời gian tới điểm rơi `time_to_land < margin`, cầu thủ giữ nguyên hướng đón bóng ổn định thay vì xoay loạn ở phút chót (cầu thủ chỉ số cao `tech_stat` lớn sẽ ít bị lệch hơn).
- Nếu người chơi **không giữ phím hướng** (`!has_input`), AI hỗ trợ tự quay cầu thủ về hướng quả bóng theo bảng góc chuẩn (`D_800C6B74`).

---

## 4. Trạng thái bận không thể nhận bóng (`func_80052C6C.c`)

Một cầu thủ chỉ được tính là hợp lệ để cắt/nhận bóng khi:
- Đang chạm đất (`y == 0`), đang hoạt động (`active != 0`), và trạng thái hành động `state` (`0x396`) **không** nằm trong nhóm đang bận (đang xoạc, ngã, đánh đầu, đổ người thủ môn, ăn mừng...).

---

## 5. Mã giả C chuẩn (độc lập với mọi Engine)

```c
#define SPRINT_TURN_STEP (4.0f * 6.2831853f / 256.0f) // ~5.6 deg/frame

typedef struct {
    float x, y, z;
    float speed;
    float max_speed;     // ~48..64 tùy chỉ số cầu thủ
    float accel_stat;    // ~6..10
    float body_angle;
    float move_angle;
    int is_busy;         // 1 nếu đang xoạc/ngã/nhảy/đổ người
    int team_side;       // 0 hoặc 1
} AIPlayer;

// Trả về 1 nếu có đồng đội đã đứng gần điểm đón bóng -> nhường bóng
int should_yield_to_teammate(const AIPlayer *me, const AIPlayer *teammate_nearest,
                               float pred_x, float pred_z, float threshold_sq) {
    if (!teammate_nearest || teammate_nearest == me) return 0;
    float dx = teammate_nearest->x - pred_x;
    float dz = teammate_nearest->z - pred_z;
    if (dx * dx + dz * dz < threshold_sq + 1.0f) {
        return 1; // Nhường cho đồng đội đón
    }
    return 0;
}

void player_step_sprint(AIPlayer *p, float target_angle) {
    float diff = fabsf(fmodf(target_angle - p->move_angle + 3.14159265f, 6.2831853f) - 3.14159265f);
    if (diff < 0.80f) { // < ~46 độ: giữ nước rút, quay rất hẹp
        p->body_angle = move_angle_toward(p->body_angle, target_angle, SPRINT_TURN_STEP);
        p->move_angle = move_angle_toward(p->move_angle, target_angle, SPRINT_TURN_STEP);
        float inc = p->max_speed / fmaxf(2.0f, p->accel_stat - 2.0f);
        p->speed = fminf(p->max_speed, fmaxf(30.0f, p->speed + inc));
    } else if (diff >= 2.35f && p->speed >= p->max_speed) { // >= 135 độ: phanh gấp
        p->speed = fmaxf(0.0f, p->speed - 10.0f);
    } else { // Rẽ vừa: hạ trần tốc độ xuống 34 để cua
        float turn_step = 12.0f * (6.2831853f / 256.0f);
        p->body_angle = move_angle_toward(p->body_angle, target_angle, turn_step);
        p->move_angle = move_angle_toward(p->move_angle, target_angle, turn_step * 2.0f);
        p->speed = fminf(34.0f, p->speed + 8.0f);
    }
}
```
