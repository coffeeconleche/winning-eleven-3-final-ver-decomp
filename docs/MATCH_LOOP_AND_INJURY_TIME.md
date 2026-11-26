# Vòng lặp Trận đấu, Luật Bù giờ & Kích hoạt Âm thanh/Bình luận — WE3

Tài liệu này tổng hợp cơ chế vòng lặp trận đấu, luật thổi còi hết hiệp/hết trận thông minh (không cắt ngang pha tấn công) và hệ thống kích hoạt âm thanh khán giả/bình luận viên trích xuất từ `src/resident/func_80076E7C.c`, `func_80055974.c` và `func_80055CD4.c`, kèm **mã giả C thuần**.

---

## 1. Kiến trúc Vòng lặp Open Play (`func_80076E7C.c`)

Mỗi frame trong pha thi đấu chính (`Phase 1`):
1. Cập nhật toàn bộ `22` cầu thủ, quả bóng và va chạm (`func_8002283C`, `func_8004A2D0`, `func_80051810`).
2. Phân bổ các tác vụ kiểm tra phụ theo **chu kỳ 4 frame (`frame % 4`)** để giảm tải CPU:
   - `step 0, 1`: Cập nhật trạng thái phụ & thống kê trận đấu.
   - `step 2`: Kiểm tra đồng hồ trận đấu & kích hoạt bình luận/khán giả theo phút (`func_80055974`).

---

## 2. Cơ chế Thổi còi Hết hiệp / Bù giờ thông minh (`func_80076E7C.c`)

Khi đồng hồ chính và thời gian bù giờ đều đã về `0` (`clock == 0 && added_time == 0`), WE3 **không cắt còi ngay lập tức nếu đang có pha tấn công**:
- **Trường hợp 1 (`|ball_x| < 0x110A`, tức trong khoảng `±17.46 m` quanh vạch giữa sân)**:
  - Thổi còi hết hiệp/hết trận **ngay lập tức** (`end_half()`).
- **Trường hợp 2 (`|ball_x| >= 17.46 m`, bóng đang ở 1/3 sân tấn công)**:
  - Nếu bóng đang bay cao (`ball_y < -116`, tức `> 0.46 m`) hoặc cầu thủ giữ bóng vẫn đang dâng lên phía khung thành đối phương → reset bộ đếm `idle_stall = 0` và **cho đá tiếp**.
  - Nếu cầu thủ giữ bóng đứng yên hoặc lùi về sân nhà, hoặc bóng nằm thấp trên mặt sân không có pha dứt điểm → tăng `idle_stall++`; khi `idle_stall > 128` frame (**~2–4 giây** tùy tick), mới thổi còi hết giờ!

---

## 3. Hệ thống Đồng hồ & Kích hoạt Khán giả / Bình luận (`func_80055974.c`, `func_80055CD4.c`)

- **Quy đổi phút thi đấu (`func_80055974.c`)**:
  - `minutes = ticks / 3600` (cộng thêm `+45` ở hiệp 2, `+90` ở hiệp phụ 1, `+105` ở hiệp phụ 2).
  - Tùy mức độ sôi động khán giả (`0, 1, 2`), cứ mỗi `18`, `9` hoặc `6` phút thi đấu, game phát ngẫu nhiên 1 câu bình luận/âm thanh sân trong nhóm `20` clip (`0x13BA..0x13CD`), luôn kiểm tra `id != last_id` để không lặp lại 2 lần liên tiếp.
- **Kích hoạt hưng phấn khi vào vùng nguy hiểm (`func_80076E7C.c`, `func_80055CD4.c`)**:
  - Khi bóng tiến sâu qua mốc `|x| >= 0x22E3` (`~35.7 m` từ giữa sân), kích hoạt tiếng hò reo khán giả (`0x501`) với bộ đếm `300` frame (~5s); chỉ reset cờ kích hoạt khi bóng rời khỏi vùng `|x| < 0x1990` (`~26.2 m`).
  - Khi có pha dứt điểm trong vòng cấm (`|x| >= 0x1FE2`, `|z| < 0x12F4`), kích hoạt gọi tên cầu thủ (`func_80057AE4`) và bình luận sút bóng (`0xCBD..0xCC9`).

---

## 4. Mã giả C chuẩn (độc lập với mọi Engine)

```c
#define MIDFIELD_WHISTLE_X  17.46f  // 0x110A * 0.004
#define DANGER_EXCITE_X     35.70f  // 0x22E3 * 0.004
#define DANGER_RESET_X      26.20f  // 0x1990 * 0.004

typedef struct {
    int clock_ticks;
    int added_ticks;
    int stall_frames;
    int crowd_excited;
    int crowd_timer;
    int last_commentary_id;
} MatchLoopState;

// Trả về 1 nếu trọng tài thổi còi hết hiệp/trận
int check_fulltime_whistle(MatchLoopState *m, float ball_x, float ball_y,
                           int has_owner, float owner_speed, int owner_attacking_dir) {
    if (m->clock_ticks > 0 || m->added_ticks > 0) {
        m->stall_frames = 0;
        return 0;
    }
    // Bóng ở khu vực giữa sân -> thổi còi ngay
    if (fabsf(ball_x) < MIDFIELD_WHISTLE_X) {
        return 1;
    }
    // Bóng ở gần vòng cấm -> cho đá tiếp nếu còn tấn công
    int attacking_forward = has_owner && owner_speed > 0.1f && (ball_x * owner_attacking_dir > 0.0f);
    if (attacking_forward || ball_y > 0.46f) {
        m->stall_frames = 0;
    } else {
        m->stall_frames++;
    }
    return (m->stall_frames > 128) ? 1 : 0;
}
```
