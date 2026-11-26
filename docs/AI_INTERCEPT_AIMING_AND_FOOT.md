# AI Cắt Bóng, Ngắm Sút, Độ Xoáy & Chân Thuận (Winning Eleven 3)

Tài liệu này giải mã **4 cơ chế AI cốt lõi khi cắt bóng, tăng tốc đuổi bóng, ngắm góc sút và xử lý chân thuận/nghịch** trích xuất trực tiếp từ `src/resident/func_80028C68.c`, `func_800264CC.c`, `func_8002B38C.c`, và `func_8002AFE0.c` của *Winning Eleven 3 Final Ver.*, viết bằng **mã giả C thuần (engine-agnostic)**.

---

## 1. AI Dự Đoán & Cắt Bóng Một Chạm (`func_80028C68.c`)

Khi bóng đang lăn/bay (`ball.vz > 0` hoặc mode đặc biệt):
1. Tính vector từ cầu thủ tới điểm dự đoán bóng `6 frame` tới:
   - `speed = dist_to_projected_ball / 6` (giới hạn tối đa `max_speed = actor.base_speed + 4`).
2. Tiến thử tọa độ dự đoán lên 6 bước (`projected += vel * 6`).
3. Kiểm tra va chạm vùng cản phá (`func_80052A68` bán kính `0x40000` và `func_8003CEE4` bán kính `0x14400`):
   - Nếu nằm trong tầm cắt: chuyển ngay sang **animation cắt bóng `35`** (`state = 33`), xoay hướng về điểm cắt và bước vào quỹ đạo chạm bóng!

---

## 2. AI Tăng Tốc, Giảm Tốc & Xoay Người Đuổi Bóng (`func_800264CC.c`)

| State (`0x397`) | Hành vi AI |
| :--- | :--- |
| **`0` (Chuẩn bị vào pha)** | Đồng bộ vị trí, xoay thân về phía bóng (`step = 16`), kiểm tra tầm xoạc/tranh chấp (`func_80045504(6)`). |
| **`16` (Phanh gấp)** | Giảm tốc tuyến tính **`-18` đơn vị/frame** cho tới `0`, kiểm tra chuyển pha (`func_80045504(5)`). |
| **`32` (Tăng tốc đuổi bóng)** | Tăng tốc mỗi frame thêm **`max_speed / 6`** tới khi đạt đỉnh `max_speed`, đồng thời xoay hướng chạy (`step = 12`) và hướng mặt (`step = 24`) bám theo bóng. |

---

## 3. Ảnh Hưởng Của Chân Thuận & Chỉ Số Sút / Độ Xoáy (`func_8002B38C.c` & `func_8002AFE0.c`)

### A. Độ trễ ra chân & Độ xoáy (`func_8002B38C.c`)
- Kiểm tra chân sút hiện tại (`kick_foot`) có trùng **chân thuận (`preferred_foot = (w2 >> 4) & 1`)** không:
  - **Đúng chân thuận:** Tra chỉ số `curve_pass` (`w1[7]`):
    - `>= 9` -> độ trễ ra chân `3` frames (ra chân cực nhanh & xoáy mạnh).
    - `7..8` -> `4` frames.
    - `5..6` -> `5` frames.
    - `< 5` -> `6` frames.
  - **Chân nghịch:** Độ trễ ngẫu nhiên `6 - rand(3)` frames, bóng xoay ngược chiều (`kick_foot ^ 1`).

### B. Độ lệch góc ngắm sút (`func_8002AFE0.c`)
- Lấy chỉ số **độ chính xác sút (`w1[1]`)** làm gốc sai số `err`:
  - Nếu đang bị áp sát / mất thăng bằng (`pressured != 0`): **`err += 8`**.
  - Nếu sút bằng **chân nghịch**: **`err += 4`**.
  - Kẹp `err` trong khoảng **`[2, 16]`** (đơn vị góc 0..255).
- Mục tiêu Z trên khung thành được chọn ngẫu nhiên về hai góc khung thành (`(rand(128) * 2 + 1344) / 3`), sau đó cộng thêm độ lệch ngẫu nhiên `±err`!

---

## 4. Mã Giả C Thuần (Pure Engine-Agnostic C)

```c
int we3_compute_shot_scatter_angle(
    uint8_t accuracy_stat, /* w1[1]: 1..9 */
    int bias,
    bool is_pressured,
    bool is_weak_foot
) {
    int err = (10 - accuracy_stat) + bias;
    if (is_pressured) err += 8;
    if (is_weak_foot) err += 4;
    if (err < 2)  err = 2;
    if (err > 16) err = 16;
    return err; /* Max angular scatter in 256-step circle */
}

int we3_compute_kick_windup_frames(uint8_t curve_stat, bool is_preferred_foot, int rng_val) {
    if (!is_preferred_foot) {
        return 6 - (rng_val % 3);
    }
    if (curve_stat >= 9) return 3;
    if (curve_stat >= 7) return 4;
    if (curve_stat >= 5) return 5;
    return 6;
}
```
