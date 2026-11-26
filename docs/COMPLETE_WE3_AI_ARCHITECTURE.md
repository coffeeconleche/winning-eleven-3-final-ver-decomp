# Tổng hợp Toàn bộ Hệ thống AI — Winning Eleven 3 Final Ver.

Tài liệu này tổng kết **bức tranh toàn cảnh hệ thống AI của WE3** đã trích xuất từ `src/resident/`, bổ sung thêm **bộ giải lực chuyền & thời gian bay (`func_8002EB3C.c`, `func_8002F0FC.c`)** và **bộ đo áp lực đối phương (`func_800494C0.c`)**, kèm **mã giả C thuần (độc lập với mọi engine)**.

---

## 1. Bộ giải Lực chuyền & Chọc khe bằng mô phỏng vật lý (`func_8002EB3C.c`, `func_8002F0FC.c`)

WE3 không dùng công thức ước lượng thô cho lực chuyền; thay vào đó, AI **dùng chính hàm vật lý bóng (`ball_step`) để chạy thử**:

- **Tìm lực chuyền vừa đủ (`func_8002EB3C(distance, min_arrival_speed)`)**:
  - Thử tăng dần lực chuyền `trial` (bước `+2.0` đơn vị PS1), mô phỏng đường bóng bằng `ball_step` cho tới khi bóng đi hết `distance` mà vận tốc còn lại vẫn `>= min_arrival_speed`.
  - Kết quả là **lực chuyền nhỏ nhất nhưng đủ tới chân đồng đội** (chuyền gần thì nhẹ, chuyền dài thì tự động tăng lực + độ bổng `func_8002F6C8`).
- **Đo số frame bóng tới mục tiêu (`func_8002F0FC(angle, speed, targetX, targetZ, lift)`)**:
  - Mô phỏng đường bóng từ vị trí hiện tại tới gần `(targetX, targetZ)` để đếm chính xác số frame `flight_frames` bóng bay tới nơi — dùng để tính điểm đón bóng khi chọc khe hoặc căn thời điểm AI nhảy đánh đầu.

---

## 2. Đo Áp lực đối phương có dự phòng người thứ 2 (`func_800494C0.c`)

- Mỗi đội luôn lưu sẵn **2 cầu thủ gần bóng nhất** (`closest_1` tại `0x31E`, `closest_2` tại `0x31F`).
- Khi đo khoảng cách áp sát tới một cầu thủ (`func_800494C0`), nếu `closest_1` đang ở trạng thái ngã/bận (`state == 16`), hệ thống tự động chuyển sang đo khoảng cách từ `closest_2` — giúp AI không bao giờ tưởng nhầm là đang thoáng người chỉ vì hậu vệ số 1 vừa xoạc trượt.

---

## 3. Bản đồ toàn bộ 6 Lớp AI của WE3 (liên kết các tài liệu đã giải mã)

| Lớp AI | Chức năng chính | Nguồn code gốc đã xác minh | Tài liệu chi tiết |
|---|---|---|---|
| **1. Phân vai & Nhường bóng** | Chỉ `1` người áp sát + `1` bọc lót; tự nhường nếu đồng đội đã đứng gần điểm rơi | `func_800243D8.c`, `func_80052A68.c`, `func_80052C6C.c` | `AI_CHAY_CHO_VA_CHON_MUC_TIEU_WE3.md` |
| **2. Áp lực & Phá bóng an toàn** | Đo áp lực (`closest_1/2`); quay lưng ở sân nhà thì phá ra biên dọc gần nhất | `func_800494C0.c`, `func_80033B88.c` | `KICH_THUOC_SAN_FIFA_VA_PHA_BONG_WE3.md` |
| **3. Bộ giải Chuyền & Điểm rơi** | Mô phỏng thử `ball_step` để tìm lực chuyền chuẩn và đếm frame bóng tới | `func_8002EB3C.c`, `func_8002F0FC.c`, `func_8004B2E0.c` | *Tài liệu này* & `VAT_LY_BONG_VA_GAMEPLAY_WE3.md` |
| **4. Sút, Xoạc & Né đường chuyền** | Sút kẹp theo hướng chân; xoạc giảm tốc 20%; đồng đội tự bước né `±90°` | `func_80040324.c`, `func_80034470.c`, `func_8003172C.c` | `DI_CHUYEN_XOAC_BONG_VA_SUT_WE3.md`, `SUT_MOT_CHAM_CHON_CHAN_VA_NE_BONG_WE3.md` |
| **5. Thủ môn (GK)** | Đứng phân giác cầu môn; bay chạm bóng ở đúng frame `7` (`anim 109`); bắt ở frame `6` (`anim 115`) | `func_8008F2DC.c`, `func_8008ECC0.c` | `THU_MON_VA_KICH_THUOC_SAN_WE3.md` |
| **6. Trọng tài & Bù giờ** | Thổi còi ngay ở giữa sân; cho đá tiếp ở 1/3 sân tấn công tới khi chững `> 128` frame | `func_80076E7C.c`, `func_80055974.c`, `func_80055CD4.c` | `VONG_LAP_TRAN_DAU_VA_BU_GIO_WE3.md` |

---

## 4. Mã giả C chuẩn: Bộ giải Lực chuyền & Đo áp lực đối phương

```c
// Tìm lực chuyền nhỏ nhất (24..112 PS1) để bóng đi hết distance với tốc độ cuối >= min_spd
float ai_solve_pass_power(float distance_m, float min_arrival_spd, float lift_frames) {
    for (float power = 24.0f; power <= 112.0f; power += 2.0f) {
        Ball sim = {0};
        sim.state = BALL_AIRBORNE;
        sim.y = BALL_RADIUS;
        ball_kick(&sim, 1.0f, 0.0f, power, lift_frames, 0.0f);

        int steps = 0;
        while (sim.x < distance_m && steps < 240) {
            ball_step(&sim, 1.0f / 60.0f);
            steps++;
            float spd = sqrtf(sim.vx * sim.vx + sim.vz * sim.vz);
            if (spd < min_arrival_spd) break;
        }
        float final_spd = sqrtf(sim.vx * sim.vx + sim.vz * sim.vz);
        if (sim.x >= distance_m && final_spd >= min_arrival_spd) {
            return power;
        }
    }
    return 112.0f;
}

// Đo bình phương khoảng cách tới đối thủ gần nhất đang hoạt động (dự phòng người thứ 2)
float ai_nearest_opponent_dist_sq(float px, float pz,
                                  const AIPlayer *opp1, const AIPlayer *opp2) {
    const AIPlayer *active = (opp1 && !opp1->is_busy) ? opp1 : opp2;
    if (!active) return 1e9f;
    float dx = px - active->x;
    float dz = pz - active->z;
    return dx * dx + dz * dz;
}
```
