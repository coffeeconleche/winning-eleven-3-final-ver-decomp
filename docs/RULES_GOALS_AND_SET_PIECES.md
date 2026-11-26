# Luật Biên, Bàn Thắng, Phạt Góc, Phát Bóng & Ném Biên (Winning Eleven 3)

Tài liệu này tổng hợp logic **bắt bóng ra ngoài sân, tính bàn thắng, phạt góc, phát bóng lên, và ném biên** trích xuất trực tiếp từ `src/resident/func_800A7450.c` và `src/resident/func_800171C4.c` của *Winning Eleven 3 Final Ver.*, viết bằng **mã giả C thuần (engine-agnostic)**.

---

## 1. Hằng Số Biên Sân (Pitch Boundaries)

Trong hệ tọa độ thế giới của WE3 (`s16 x, z`):
- **Đường biên ngang (Goal line / Endline):** `|ball.x| >= 0x3361` (`13153` đơn vị).
- **Đường biên dọc (Touchline / Sideline):** `|ball.z| >= 0x2141` (`8513` đơn vị).
- **Vị trí đặt bóng phạt góc / phát bóng / ném biên:**
  - `scratch[0x2BC]` (`s16`): Tọa độ `X` điểm đặt bóng chết.
  - `scratch[0x2BE]` (`s16`): Tọa độ `Z` điểm đặt bóng chết.
  - Chế độ tập luyện (`scratch[0x2E1] == 5`): Đặt bóng cố định tại `X = 0x3320` (`13088`).

---

## 2. Quy Trình Xử Lý Khi Bóng Vượt Biên (`func_800A7450`)

Mỗi frame, `func_800A7450()` kiểm tra vị trí bóng `ballPointer` (`0x1F8002F4`):

### A. Bóng vượt đường biên ngang (`|ball.x| >= 0x3361`)

1. Gọi `func_800A8B24()` để kiểm tra bóng có đi vào **trong khung thành (Goal)** hay chỉ ra ngoài đường biên ngang:
   - Nếu **VÀO GÔN** (`func_800A8B24() & 0xFF != 0`):
     - Nếu đang ở chế độ tập luyện (`scratch[0x2E1] == 5`): reset về phát bóng (`outMode = 4`).
     - Kiểm tra người chạm bóng cuối (`scratch[0x2AC]`) và bên sân (`record[0x399]`) so với dấu `ball.x`:
       - Nếu cầu thủ đội **tấn công** chạm cuối (hoặc hợp lệ): `base[0xABDB] = 0`.
       - Nếu `scratch[0x2A9] != 0 && base[0xABDB] == 0`:
         - **Cộng 1 bàn thắng** cho đội ghi bàn: `base[0x8EC8 + team] += 1` (`team = record[0x398]`).
         - **Cộng 1 bàn thắng cá nhân** cho cầu thủ ghi bàn: `base[0x88D1 + team * 22 + slot] += 1` (`slot = record[0x392]`).
     - Chuyển trạng thái trận đấu sang **Ăn mừng / Giao bóng lại**: `outMode = 7` -> `func_800171C4(7)`.

2. Nếu **KHÔNG VÀO GÔN** (bóng ra hết đường biên ngang):
   - Lưu tọa độ bóng ra biên vào `scratch[0x2BC] = ball.x`, `scratch[0x2BE] = ball.z`.
   - Kiểm tra người chạm cuối (`scratch[0x2AC]`) thuộc đội tấn công hay phòng ngự so với khung thành (`record[0x399]` vs dấu `ball.x`):
     - **Phạt góc (Corner Kick):** Nếu **đội phòng ngự** chạm bóng cuối:
       - `func_8004F58C(1)` (hiệu ứng/âm thanh trọng tài chỉ góc).
       - `func_800171C4(9)` (**Mode 9 = Phạt góc**).
       - Chọn cầu thủ đá phạt góc (`func_8005CE30(lastToucher)`).
     - **Phát bóng lên (Goal Kick):** Nếu **đội tấn công** chạm bóng cuối:
       - `func_8004F58C(2)` (trọng tài chỉ 5m50).
       - `func_800171C4(4)` (**Mode 4 = Phát bóng lên**).
       - Chọn thủ môn/cầu thủ phát bóng (`func_8007BA04(...)`), đồng thời tăng bộ đếm phát bóng `base[0x8ED2 + team] += 1`.

### B. Bóng vượt đường biên dọc (`|ball.z| >= 0x2141`)

- Nếu không đang trong trạng thái bóng chết đặc biệt (`scratch[0x2B0] != 6`):
  - Thổi còi biên (`func_800AB620(0x518)`), đặt timer `scratch[0x294] = 0x1E` (30 frames).
  - Chọn cầu thủ đội đối phương (`record[0x399] ^ 1`) đi ném biên (`scratch[0x2AD]`, tránh thủ môn nếu `record[0x391] < 6`).
  - Lưu vị trí ném biên `scratch[0x2BC] = ball.x`, `scratch[0x2BE] = ball.z`.
  - Gọi `func_800171C4(3)` (**Mode 3 = Ném biên**).

---

## 3. Mã Giả C Thuần (Pure Engine-Agnostic C)

```c
#define PITCH_ENDLINE_X   0x3361  /* 13153 */
#define PITCH_SIDELINE_Z  0x2141  /*  8513 */

typedef enum {
    SETPIECE_THROW_IN  = 3,
    SETPIECE_GOAL_KICK = 4,
    SETPIECE_GOAL      = 7,
    SETPIECE_CORNER    = 9
} WE3_MatchEventMode;

void we3_check_out_of_bounds_and_goals(WE3_MatchState *m) {
    int16_t bx = m->ball.x;
    int16_t bz = m->ball.z;
    int32_t abs_x = (bx < 0) ? -bx : bx;
    int32_t abs_z = (bz < 0) ? -bz : bz;

    /* 1. Kiem tra duong bien ngang (Goal line) */
    if (abs_x >= PITCH_ENDLINE_X) {
        if (we3_is_ball_inside_goal(&m->ball)) {
            WE3_Player *last = &m->players[m->last_touch_actor];
            if (m->is_valid_goal && !m->is_own_goal_blocked) {
                m->team_score[last->team_side] += 1;
                m->player_goals[last->team_side][last->squad_slot] += 1;
            }
            m->restart_actor = last->actor_id;
            we3_set_match_event(SETPIECE_GOAL);
            return;
        }

        /* Khong vao gon -> Phat goc hoac Phat bong len */
        m->setpiece_x = bx;
        m->setpiece_z = bz;
        WE3_Player *last = &m->players[m->last_touch_actor];
        bool defender_touched_last = (last->attacking_dir != 0) ? (bx < 0) : (bx > 0);

        if (defender_touched_last) {
            we3_referee_signal(1); /* Phat goc */
            we3_set_match_event(SETPIECE_CORNER);
            m->restart_actor = we3_pick_corner_taker(m->last_touch_actor);
        } else {
            we3_referee_signal(2); /* Phat bong len */
            we3_set_match_event(SETPIECE_GOAL_KICK);
            m->restart_actor = we3_pick_goalkeeper_for_kick(m->last_touch_actor);
            m->team_goal_kicks[m->players[m->restart_actor].team_side] += 1;
        }
        return;
    }

    /* 2. Kiem tra duong bien doc (Sideline -> Nem bien) */
    if (abs_z >= PITCH_SIDELINE_Z && m->play_substate != 6) {
        WE3_Player *last = &m->players[m->last_touch_actor];
        uint8_t opp_side = last->attacking_dir ^ 1;
        m->restart_actor = we3_pick_throw_in_taker(m, opp_side);
        m->setpiece_x = bx;
        m->setpiece_z = bz;
        we3_referee_signal(0); /* Nem bien */
        we3_set_match_event(SETPIECE_THROW_IN);
    }
}
```
