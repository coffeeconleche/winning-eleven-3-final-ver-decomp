# Camera, Replay & Đá Phạt / Luân Lưu (Winning Eleven 3)

Tài liệu này tổng hợp hệ thống **Camera trận đấu, Replay/Attract và Đá phạt / Penalty** trích xuất từ `src/resident/func_80078EF8.c`, `func_80079D5C.c`, và `func_8005A580.c`, viết bằng **mã giả C thuần (engine-agnostic)**.

---

## 1. Camera Trận Đấu & Replay (`func_80078EF8.c` & `func_80079D5C.c`)

- **Camera bám bóng trong trận (Wide / Broadcast):**
  - Bám mượt theo tọa độ bóng `(ball.x, ball.z)` với độ trễ nội suy (`lerp ~ 0.10 - 0.12`).
  - Trong `func_80079D5C.c`: lưu góc/khoảng cách đặt camera tạm vào `scratch[0x2EA] = 0x500`, `scratch[0x2EC] = -0x200` khi chuyển pha phát bóng / phạt góc / sút phạt.
- **Camera khi Replay / Pha bóng chậm (`func_80078EF8.c`):**
  - Kiểm tra khoảng cách camera tới mục tiêu và cửa sổ lân cận (`u8` proximity window).
  - Chọn góc quay theo bảng tra dựa trên loại pha bóng (`replay classifier`), chuyển qua lại giữa góc toàn cảnh và góc cận cảnh cầu thủ dứt điểm.

---

## 2. Đá Phạt Trực Tiếp & Penalty (`func_80079D5C.c`)

Khi trọng tài thổi phạt hoặc chuẩn bị đá phạt (`D_8010C538` state machine):
- **State `0` (Thiết lập điểm đá phạt):**
  - Gọi `func_80098428()` và `func_80089BD8()` cập nhật khung hình & hàng rào.
  - Kiểm tra thẻ phạt (`row[0x88A5 + number] >= 2` -> truất quyền thi đấu, gọi `func_800732B0()`).
  - Đặt bóng tại vị trí phạt (`x = ±(0x28F0 - rand(0x15))` cho chấm 11m / khu vực cấm địa, `y = -32`, `z = 0`).
  - Tăng bộ đếm đá phạt của đội (`base[0x8ED6 + team]++`).
- **State `1` (Vào tư thế sút):**
  - Đặt toàn bộ 22 cầu thủ về trạng thái chờ (`49`, `14`), gán chân thuận của người sút (`record[0x3AC] = (D_8010C330[...] >> 4) & 1`), tính góc chạy đà (`angle ± 4`), chọn thủ môn bắt (`scratch[0x2AE]`), và chuyển quyền điều khiển cho người sút (`func_800512B8(record, 5)`).

---

## 3. Loạt Sút Luân Lưu / Chênh Lệch Tỉ Số (`func_8005A580.c`)

- Trong chế độ đá luân lưu / hiệp phụ (`scratch[0x2DF] = 1..3`):
  - So sánh tỉ số 2 đội (`bank[0x8EC8]`, `bank[0x8EC9]`): nếu chênh lệch `>= 6` bàn hoặc điều kiện kết thúc sớm thỏa mãn (`bank[0x8EC8] < 2` / `bank[0x8EC9] < 2`), bật cờ kết thúc/thắng cuộc (`state[0x11] = 1` hoặc `state[0x12] = 1`).

---

## 4. Mã Giả C Thuần (Pure Engine-Agnostic C)

```c
void we3_setup_penalty_kick(WE3_MatchState *m, int kicker_id) {
    WE3_Player *kicker = &m->players[kicker_id];
    float spot_x = (kicker->team_side == 0) ? (WE3_PITCH_ENDLINE_X - 2800.0f)
                                            : -(WE3_PITCH_ENDLINE_X - 2800.0f);
    m->ball.x = spot_x;
    m->ball.y = 0.0f;
    m->ball.z = 0.0f;
    m->ball.vx = m->ball.vy = m->ball.vz = 0.0f;
    m->restart_actor = kicker_id;
    m->active_user_actor = kicker_id;
}
```
