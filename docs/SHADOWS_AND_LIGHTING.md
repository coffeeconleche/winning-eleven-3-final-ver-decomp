# Hệ Thống Đổ Bóng & Ánh Sáng (Shadows & Lighting) trong Winning Eleven 3

Tài liệu này giải mã hoàn chỉnh cơ chế **đổ bóng (shadow projection)** của bóng và 23 nhân vật (22 cầu thủ + 1 trọng tài) trích xuất trực tiếp từ `src/resident/func_8001FF7C.c` và `src/resident/func_80098428.c` của *Winning Eleven 3 Final Ver.*, viết bằng **mã giả C thuần (engine-agnostic)**.

---

## 1. Nguyên Lý Đổ Bóng Của WE3 Trên PS1

Thay vì dùng shadow map hay stencil buffer (PS1 không có), WE3 dùng kỹ thuật **Ground-Projected Textured Quads với Subtractive Blending**:
- Mọi cái bóng đều là **hình chữ nhật nằm phẳng trên mặt cỏ (`y = 0`)**.
- Texture bóng nằm tại TPage `(0x280, 0)`, CLUT `(0, 0x1F8)`:
  - **Vùng UV `(32, 128) -> (63, 159)`:** Bóng tròn mềm 32×32 (dùng cho bóng và cầu thủ trời âm u/mưa).
  - **Vùng UV `(32, 160) -> (63, 191)`:** Vòng/bóng phụ dưới chân cầu thủ (`±0x40` = `±64` đơn vị).
  - **Vùng UV `(0, 128) -> (31, 255)`:** Bóng dài hình người kéo giãn (dùng cho ban ngày nắng hoặc 4 đèn pha ban đêm).
- **Chế độ hòa trộn (`abr = 2`):** `Framebuffer = Background - ShadowColor` (**Subtractive Blending**), giúp làm tối trực tiếp màu cỏ xanh bên dưới mà không bị bệt đen!

---

## 2. Ba Chế Độ Đổ Bóng Theo Thời Tiết & Thời Gian (`func_8001FF7C`)

WE3 tính chỉ số chế độ ánh sáng theo công thức:
```c
int mode = time_of_day + weather * 3;
```
Trong đó `time_of_day` (`0x1F8002E4`) và `weather` (`0x1F8002E5`) quyết định cấu hình bóng cho toàn bộ 23 nhân vật (`0..22`):

| `mode` | Điều kiện sân | Số quad / người | Kích thước quad (`X × Z`, `y = 0`) | Độ đậm (`RGB`) | Mô tả |
| :--- | :--- | :---: | :--- | :---: | :--- |
| **`0`** | **Ban ngày nắng (Day / Fine)** | `1` | `X: [-96, +96]`, `Z: [-352, +32]` | `(128, 128, 128)` | 1 bóng đổ dài theo hướng mặt trời. |
| **`1`** | **Trời râm / Mưa (Overcast / Rain)** | `1` | `X: [-112, +112]`, `Z: [-112, +112]` | `(128, 128, 128)` | 1 bóng tròn mềm ngay dưới chân cầu thủ. |
| **`default` (`>= 2`)** | **Ban đêm đèn pha (Night Stadium)** | **`4`** | `X: [-64, +64]`, `Z: [-448, 0]` | **`(80, 80, 80)`** | **4 bóng tỏa ra 4 hướng** từ 4 cột đèn pha sân vận động! Vì 4 bóng chồng nhau nên cường độ mỗi bóng giảm từ `128` xuống `80` (`~62.5%`). |

### Bóng của quả bóng (`quad[0]`)
- Luôn dùng 1 quad phẳng trên mặt sân (`y = 0`): `X: [-48, +48]`, `Z: [-48, +48]` (`±0x30`), UV `(32, 128)..(63, 159)`, `RGB = (128, 128, 128)`, subtractive blend.
- Khi bóng bay cao trên không (`ball.y > 0`), tâm bóng vẫn nằm tại `(ball.x, 0, ball.z)` để người chơi dễ căn điểm rơi!

---

## 3. Mã Giả C Thuần (Pure Engine-Agnostic C)

```c
typedef enum {
    SHADOW_MODE_DAY_SUNNY = 0,
    SHADOW_MODE_OVERCAST  = 1,
    SHADOW_MODE_NIGHT_4LIGHT = 2
} WE3_ShadowMode;

typedef struct {
    float min_x, max_x;
    float min_z, max_z;
    uint8_t intensity; /* 0..255 (128 = ~50% darken, 80 = ~31% darken per light) */
    int quad_count;
} WE3_ShadowProfile;

void we3_get_actor_shadow_profile(uint8_t time_of_day, uint8_t weather, WE3_ShadowProfile *out) {
    int mode = time_of_day + weather * 3;
    if (mode == 0) {
        out->min_x = -96.0f;  out->max_x = 96.0f;
        out->min_z = -352.0f; out->max_z = 32.0f;
        out->intensity = 128;
        out->quad_count = 1;
    } else if (mode == 1) {
        out->min_x = -112.0f; out->max_x = 112.0f;
        out->min_z = -112.0f; out->max_z = 112.0f;
        out->intensity = 128;
        out->quad_count = 1;
    } else {
        /* 4 stadium floodlights: render 4 directional shadow quads rotated toward each tower */
        out->min_x = -64.0f;  out->max_x = 64.0f;
        out->min_z = -448.0f; out->max_z = 0.0f;
        out->intensity = 80;
        out->quad_count = 4;
    }
}
```
> **Ghi chú khi remake:** Với shader hiện đại, bạn có thể dùng **Subtractive Blending** (`glBlendEquation(GL_FUNC_REVERSE_SUBTRACT); glBlendFunc(GL_SRC_ALPHA, GL_ONE);`) hoặc nhân trực tiếp màu cỏ với `(1.0 - shadow_alpha)` trên 4 quad xoay hướng về 4 góc sân vào ban đêm để tái tạo đúng chất **4 bóng đèn pha kinh điển của WE3**!
