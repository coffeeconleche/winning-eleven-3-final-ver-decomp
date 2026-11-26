# Kích thước Sân chuẩn FIFA, Phá bóng an toàn & Va chạm Bóng–Người — WE3

Tài liệu này tổng hợp các hằng số kích thước sân đầy đủ, logic phá bóng an toàn của hậu vệ và công thức tính độ bật nảy/chính xác trích xuất từ `src/resident/func_80033B88.c`, `func_8004E410.c`, `func_8004E5A8.c` và `func_80036230.c`.

---

## 1. Kích thước Sân đầy đủ của WE3 (`func_80033B88.c`, `func_800547A4.c`, `func_8001C5A8.c`)

Với tỷ lệ `world_scale = 0.004` (`250` đơn vị PS1 = `1.0 m`):

| Mốc sân | Giá trị PS1 | Quy đổi mét (`* 0.004`) | Kích thước toàn sân |
|---|---:|---:|---|
| **Đường biên ngang / Vạch cầu môn (`±X`)** | `±13,088` (`±0x3320`) | `±52.35 m` | **Chiều dài sân = `104.7 m`** |
| **Đường biên dọc (`±Z`)** | `±8,704` (`±0x2200`) | `±34.82 m` | **Chiều rộng sân = `69.6 m`** |
| **Vùng 16m50 / Vùng kiểm tra khung thành (`|X|`)** | `8,163` (`0x1FE3`) | `32.65 m` từ giữa sân | Cách vạch cầu môn `~19.7 m` |
| **Nửa chiều rộng vùng cấm địa (`|Z|`)** | `4,852` (`0x12F4`) | `±19.41 m` | Rộng `~38.8 m` |
| **Vùng biên sút/camera (`|X|`)** | `7,138` (`0x1BE2`) | `28.55 m` | — |

---

## 2. AI Phá bóng an toàn ra biên của Hậu vệ (`func_80033B88.c`)

Khi hậu vệ AI bị đối phương áp sát ở phần sân nhà:
1. Kiểm tra nếu đang ở sân nhà (`x < -0x1BE1`) và hướng mặt đang quay lưng với khung thành đối phương (`|angle - forward| >= 80` đơn vị góc, tức `>= 112.5°`):
2. Kiểm tra góc hướng ra đường biên dọc gần nhất (`z >= 0 ? +0x2200 : -0x2200`): nếu đường ra biên nằm trong tầm quay thân (`< 73` đơn vị góc), **hậu vệ chọn phá bóng ra biên dọc** thay vì xoay người mạo hiểm chuyền ngang trước khung thành nhà.
3. Ngược lại (nếu thoáng người hoặc đang hướng lên trên), AI phá/chuyền thẳng lên phía khung thành đối phương `(±0x3320, 0)`.

---

## 3. Tính Góc & Độ nảy khi bóng bật người (`func_8004E410.c`, `func_8004E5A8.c`)

Khi bóng chạm vào thân/đầu/chân cầu thủ ngoài ý muốn (deflection / block):
- **Góc bật ngang (`func_8004E410.c`)**:
  - Lấy vector từ tâm cầu thủ tới điểm va chạm bóng (chọn vị trí bóng hiện tại hoặc vị trí frame trước nếu gần hơn).
  - Độ lệch góc phản xạ so với hướng bóng tới bị kẹp tối đa `60` (`~84°`), cộng thêm sai số ngẫu nhiên nhỏ (`±6` đơn vị góc).
- **Độ nảy dọc (`func_8004E5A8.c`)**:
  - Tính mức dao động ngẫu nhiên theo tốc độ bóng: `level = |vy / 1472| + (h_speed >> 12)`.
  - Nếu bóng đi cùng hướng cầu thủ (`delta <= 48`, tức `<= 67.5°`), kẹp độ nảy tối đa `+8`; nếu bật ngược lại (`delta > 48`), cho phép nảy cao tới `+16` (và tối thiểu `-16`).

---

## 4. Điểm số chính xác khi Đánh đầu / Chạm bóng (`func_80036230.c`)

- Đọc chỉ số kỹ thuật/đánh đầu (`nibble = 0..9`) từ bảng cầu thủ (`D_8010C32C`).
- Cộng thêm sai số ngẫu nhiên trong khoảng `[0 .. 9 - nibble]` — cầu thủ có chỉ số `9` gần như không có sai số ngẫu nhiên, còn cầu thủ chỉ số thấp dễ đánh đầu hụt hoặc lệch.
- Nếu bóng cao hơn đầu cầu thủ quá `64` đơn vị (`~0.256 m`) hoặc thể lực cạn (`stamina < 40`), trừ thẳng `-13` đến `-14` điểm chính xác.

---

## 5. Mã giả C chuẩn (độc lập với mọi Engine)

```c
#define PITCH_HALF_LEN  52.35f  // ±X (0x3320 * 0.004)
#define PITCH_HALF_WID  34.82f  // ±Z (0x2200 * 0.004)
#define SAFE_CLEAR_X   -28.55f  // -0x1BE1 * 0.004

// Chọn mục tiêu phá bóng an toàn cho hậu vệ AI (tấn công về +X)
void ai_pick_clearance_target(float px, float pz, float body_angle,
                              float *out_tx, float *out_tz) {
    float forward_angle = 0.0f; // +X
    float diff_fwd = fabsf(fmodf(forward_angle - body_angle + 3.14159265f, 6.2831853f) - 3.14159265f);

    // Nếu đang ở sân nhà và quay lưng với hướng tấn công -> ưu tiên phá ra biên gần nhất
    if (px < SAFE_CLEAR_X && diff_fwd >= 1.96f) { // >= ~112.5 độ
        float sideline_z = (pz >= 0.0f) ? PITCH_HALF_WID : -PITCH_HALF_WID;
        float side_angle = atan2f(sideline_z - pz, 0.0f);
        float diff_side = fabsf(fmodf(side_angle - body_angle + 3.14159265f, 6.2831853f) - 3.14159265f);
        if (diff_side < 1.79f) { // < ~102 độ
            *out_tx = px;
            *out_tz = sideline_z;
            return;
        }
    }
    // Mặc định phá/chuyền hướng lên khung thành đối phương
    *out_tx = PITCH_HALF_LEN;
    *out_tz = 0.0f;
}
```
