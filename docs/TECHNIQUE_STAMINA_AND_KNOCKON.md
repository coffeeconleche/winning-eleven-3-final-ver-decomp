# Kỹ thuật Đẩy bóng dài, Vấp bóng, Thể lực & Đà chạy biên — WE3

Tài liệu này tổng hợp các cơ chế xử lý bóng nâng cao và ảnh hưởng của thể lực trích xuất từ `src/resident/func_80027140.c`, `func_800267D8.c` và `func_80035184.c`, kèm **mã giả C thuần (độc lập với mọi engine)**.

---

## 1. Đẩy bóng dài bứt tốc — Knock-on (`func_80027140.c`)

Khi cầu thủ đang dẫn bóng thực hiện đẩy bóng dài để bứt tốc:
- **Tung bóng ra trước**: Gọi `ball_kick` với hướng mặt hiện tại, lực đẩy ngang `66` và độ nảy nhỏ `2`.
- **Thời gian chạy đuổi**:
  - Nếu đang chạy nhanh (`speed >= 49`): chạy đà trong `16` frame.
  - Nếu chạy chậm hơn: chạy đà trong `12` frame (hoặc `6` frame nếu đang đứng yên).
  - Trong pha chạy đuổi, ép tốc độ chạy lên `44` (và dừng ngay nếu gần đường biên ngang `|x| >= 13,088` = `52.35 m` để tránh tự đẩy bóng ra ngoài).
- **Kết thúc**: Giảm dần tốc độ `speed -= 18/frame`, chuyển về `anim 38` rồi `Idle` (`anim 1`) và quay mặt về phía bóng (`8` đơn vị góc/frame).

---

## 2. Vấp bóng / Khống chế hỏng & Ảnh hưởng của Thể lực (`func_800267D8.c`)

Khi cầu thủ bị tác động mạnh hoặc xử lý lỗi ở tốc độ cao:
- Phát **`anim 31` (`27f`)**, tiêu hao thể lực (`stamina -= 3`), đặt tốc độ ban đầu `48` rồi giảm dần `speed -= 2/frame`.
- **Nếu đang là người giữ bóng**:
  - 50% giữ hướng thẳng (`bias = 0`) hoặc văng xa với lực `64 - rand(stamina / 10)` và góc lệch ngẫu nhiên `±32` (`±45°`).
  - Mất ngay quyền sở hữu bóng (`ball_owner = 0`).
- **Pha hồi phục (sau `frame 26`)**:
  - Chuyển về `Idle` (`anim 1`), khóa điều khiển trong `12 - rand(stamina / 10)` frame — nghĩa là **cầu thủ càng mệt (thể lực thấp), thời gian khựng lại càng lâu**!

---

## 3. Hãm đà khi chạy vượt biên (`func_80035184.c`)

- Khi bóng đã ngừng/chết và cầu thủ chạy theo quán tính tới mốc `|x| >= 0x27F1` (`~40.9 m`), game chuyển về `Idle` (`anim 1`), giảm tốc `speed -= 18/frame` và xoay mặt về phía bóng (`16` đơn vị góc/frame).

---

## 4. Mã giả C chuẩn (độc lập với mọi Engine)

```c
typedef struct {
    float x, z;
    float speed;
    float body_angle;
    int stamina;          // 0..255
    int knockon_timer;
    int stumble_timer;
    int recovery_timer;
} PlayerTechState;

void trigger_knock_on(PlayerTechState *p, Ball *b) {
    float dir_x = cosf(p->body_angle);
    float dir_z = sinf(p->body_angle);
    ball_kick(b, dir_x, dir_z, 66.0f, 0.2f, 0.0f);
    p->knockon_timer = (p->speed >= 49.0f) ? 16 : 12;
}

void trigger_stumble(PlayerTechState *p, Ball *b, int is_owner, int rand_val) {
    p->stamina = (p->stamina >= 3) ? (p->stamina - 3) : 0;
    p->speed = 48.0f;
    p->stumble_timer = 26;
    p->recovery_timer = 12 - (rand_val % ((p->stamina / 10) + 1));
    if (is_owner) {
        float jitter = ((rand_val % 65) - 32) * (6.2831853f / 256.0f);
        float ang = p->body_angle + jitter;
        float power = 64.0f - (float)(rand_val % ((p->stamina / 10) + 1));
        ball_kick(b, cosf(ang), sinf(ang), power, 0.0f, 0.0f);
    }
}
```
