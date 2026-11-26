# Vật lý Bóng & Logic Gameplay cốt lõi — Winning Eleven 3 Final Ver.

Tài liệu này tổng hợp **100% công thức thật** được trích xuất từ mã nguồn decompile (`func_8004B0F0.c`, `func_8004B2E0.c`, `func_80054A68.c`, `func_80054D2C.c`, `func_800550C8.c`, `func_800951C4.c`) và file Assembly `func_8004BAA4.s` của WE3, kèm **mã giả chuẩn C độc lập với engine (engine-agnostic)**.

---

## 1. Hệ tọa độ & Đơn vị gốc của WE3
- **Tỷ lệ không gian**: Đỉnh model cầu thủ/bóng đã xuất sang `.gltf`/`.obj` dùng `world_scale = 0.004` (tức `250` đơn vị PS1 = `1.0` mét; bán kính bóng `32` đơn vị PS1 ≈ `0.128–0.16m`).
- **Trục Y**: Trong PS1, `-Y` hướng lên trên (`ball_y = -32` là mặt đất). Với hệ tọa độ `+Y` hướng lên, mặt đất tương ứng `ball_y = +ball_radius`.
- **Góc hướng (`0..255`)**: `256` đơn vị = `360°` (`1` đơn vị ≈ `1.40625°`).
- **Vận tốc fixed-point**: Vận tốc ngang `h_speed` và vận tốc dọc `vy` lưu ở dạng nhân `256` (`>> 8` mới ra bước dịch chuyển mỗi frame).

---

## 2. Năm trạng thái của Quả bóng (`func_8004BAA4.s`)

| State (`0xB0`) | Tên trạng thái | Điều kiện & Hành vi chính |
|---:|---|---|
| `0` | **Đứng yên (`Stopped`)** | `ball_y = ground_y`, `h_speed = 0`. |
| `1` | **Bay trên không / Nảy (`Airborne`)** | Áp dụng **xoáy (curve)**, **trọng lực**, **lực cản không khí bậc 2** và **nảy khi chạm sân**. |
| `2` | **Lăn trên cỏ (`Rolling`)** | `ball_y = ground_y`, `spin = 0`, áp dụng **ma sát cỏ**; khi `h_speed < 256` (`1.0` đơn vị/frame) chuyển về State `0`. |
| `3` | **Đang dẫn bóng (`Attached`)** | Gắn với cầu thủ giữ bóng (`owner`), tịnh tiến theo tốc độ và hướng của cầu thủ. |
| `4` | **Bật nảy / Đổi hướng (`Deflected`)** | Thiết lập khi bóng chạm người (`func_80095090.c`), sau đó chuyển sang `1` hoặc `2`. |

---

## 3. Công thức Vật lý Bóng chính xác của WE3

### A. Trọng lực theo loại mặt sân (`0xBC = 0..3`)
Mỗi frame (ở nhịp chuẩn PS1), `vy += gravity`:
- Sân thường / Khô (`0`): `736` (`0x2E0` -> `2.875` đơn vị PS1/frame²)
- Sân ướt / Mưa (`1`): `704` (`0x2C0`)
- Sân bùn / Tuyết (`2`): `800` (`0x320`)
- Sân cỏ nhân tạo / Trong nhà (`3`): `824` (`0x338`)

### B. Độ xoáy / Sút cong (`Curve / Spin`)
- Nếu `spin_interval != 0` và `frame_count % spin_interval == 0`:
  - `angle += (spin_dir != 0) ? +1 : -1` (xoay `±1.40625°`).
- Mỗi lần bóng **chạm đất nảy lên**, `spin_interval += 2` (bóng mất dần độ xoáy sau khi chạm đất). Khi chuyển sang **lăn (`State 2`)**, `spin_interval = 0`.

### C. Va chạm & Nảy mặt sân (khi `ball_y` chạm đất)
- Tính hệ số góc chạm `k = min(8, h_speed / (|vy| + 1))`.
- Với sân khô (`0xBC == 0`):
  - Giảm tốc ngang khi nảy: `h_speed -= (h_speed * (64 - 4 * k)) >> 8` (giữ `75%–87.5%` tốc độ ngang tùy góc sút sệt hay bổng).
  - Hệ số nảy dọc: `vy -= (vy * (96 - 4 * k)) >> 8`, rồi đảo dấu `vy = -vy` (giữ `62.5%–75%` độ nảy).
- **Ngưỡng dừng nảy**: Nếu sau khi nảy mà `|vy| < 1471` (`0x5BF`, tương đương `< 2` frame trọng lực), đặt `vy = 0` và chuyển sang **State `2` (Lăn)**.

### D. Lực cản không khí & Ma sát mặt cỏ
- **Khi bay (`State 1`)**: Lực cản tỷ lệ với bình phương vận tốc 3D (`speed_3d = sqrt(h_speed² + vy²)`):
  - `h_speed -= ((speed_3d * h_speed) >> 21) / 7`
  - `vy -= ((speed_3d * vy) >> 23) / 7`
- **Khi lăn (`State 2`)**: Kết hợp ma sát tuyến tính và cản bậc 2:
  - `h_speed -= (h_speed >> 6)` *(giảm ~`1.56%` mỗi frame)*
  - `h_speed -= ((h_speed * h_speed) >> 21) / 7`

---

## 4. Các cơ chế Điều khiển & Tranh chấp đã giải mã

1. **Tung lực khi sút/chuyền (`func_8004B0F0.c` & `func_800951C4.c`)**:
   - Lực đẩy ngang tổng hợp được kẹp trong khoảng `[24 .. 112]` (`<< 8` thành `6,144 .. 28,672`), lực nâng dọc tỉ lệ theo `level * 736`.
   - Ngay khi bóng rời chân, game gọi `func_8004B2E0(255)` **chạy giả lập trước tối đa 255 frame** quỹ đạo bóng để tìm sẵn **điểm rơi (`scratch0F8, scratch0FC`)** cho AI chạy ra đón bóng!
2. **Phanh & Đổi hướng gấp (`func_80054A68.c`)**:
   - Nếu cầu thủ đang chạy (`speed >= 32`) mà người chơi bẻ hướng lệch `> 90°`, game kích hoạt **`anim 14` (frame 2)** (trượt phanh đổi hướng), giảm tốc `speed -= 8` mỗi frame và tự chọn hướng xoay trái/phải.
3. **Nhảy đánh đầu / Bóng bổng (`func_800550C8.c`)**:
   - Khi bóng cao hơn `127` đơn vị (`~0.5m`) và cầu thủ là người gần điểm rơi nhất của đội, tự động chuyển sang nhóm animation trên không (`anim 15, 16, 18, 20, 84`).

---

## 5. Mã giả C chuẩn (độc lập với mọi Engine)

```c
typedef enum { BALL_STOPPED = 0, BALL_AIRBORNE = 1, BALL_ROLLING = 2, BALL_ATTACHED = 3 } BallState;

typedef struct {
    BallState state;
    float x, y, z;       // mét (+Y hướng lên, ground = BALL_RADIUS)
    float vx, vy, vz;    // m/s
    float spin_rate;     // rad/s
} Ball;

#define PS1_TO_M     0.004f
#define BALL_RADIUS  (32.0f * PS1_TO_M)
#define GRAVITY_DRY  ((736.0f / 256.0f) * PS1_TO_M * 3600.0f)

void ball_kick(Ball *b, float dir_x, float dir_z, float power_ps1, float lift_frames, float spin) {
    float len = sqrtf(dir_x * dir_x + dir_z * dir_z);
    float h_speed = clampf(power_ps1, 24.0f, 112.0f) * PS1_TO_M * 60.0f;
    b->vx = (dir_x / len) * h_speed;
    b->vz = (dir_z / len) * h_speed;
    b->vy = lift_frames * (736.0f / 256.0f) * PS1_TO_M * 60.0f;
    b->spin_rate = spin;
    b->state = BALL_AIRBORNE;
}

void ball_step(Ball *b, float dt) {
    if (b->state == BALL_AIRBORNE) {
        if (fabsf(b->spin_rate) > 0.01f) {
            float c = cosf(b->spin_rate * dt), s = sinf(b->spin_rate * dt);
            float nx = b->vx * c - b->vz * s;
            float nz = b->vx * s + b->vz * c;
            b->vx = nx; b->vz = nz;
        }
        b->vy -= GRAVITY_DRY * dt;
        float spd = sqrtf(b->vx*b->vx + b->vy*b->vy + b->vz*b->vz);
        if (spd > 1e-4f) {
            float drag = spd * 0.0018f * dt;
            b->vx -= b->vx * drag; b->vy -= b->vy * drag; b->vz -= b->vz * drag;
        }
        b->x += b->vx * dt; b->y += b->vy * dt; b->z += b->vz * dt;

        if (b->y <= BALL_RADIUS) {
            b->y = BALL_RADIUS;
            float h_spd = sqrtf(b->vx*b->vx + b->vz*b->vz);
            float k = fminf(8.0f, h_spd / (fabsf(b->vy) + 0.01f));
            float h_keep = 1.0f - (64.0f - 4.0f * k) / 256.0f;
            float v_keep = 1.0f - (96.0f - 4.0f * k) / 256.0f;
            b->vx *= h_keep; b->vz *= h_keep;
            b->vy = -b->vy * v_keep;
            b->spin_rate *= 0.5f;
            if (fabsf(b->vy) < 1.2f) {
                b->vy = 0.0f; b->spin_rate = 0.0f; b->state = BALL_ROLLING;
            }
        }
    } else if (b->state == BALL_ROLLING) {
        b->y = BALL_RADIUS;
        b->x += b->vx * dt; b->z += b->vz * dt;
        float damp = powf(1.0f - 1.0f / 64.0f, dt * 60.0f);
        b->vx *= damp; b->vz *= damp;
        if (sqrtf(b->vx*b->vx + b->vz*b->vz) < 0.25f) {
            b->vx = b->vz = 0.0f; b->state = BALL_STOPPED;
        }
    }
}
```
