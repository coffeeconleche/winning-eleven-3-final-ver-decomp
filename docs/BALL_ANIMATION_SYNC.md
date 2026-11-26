# Cơ chế đồng bộ Animation, Khung xương và Quả bóng — Winning Eleven 3 Final Ver.

Tài liệu này tổng hợp cơ chế hoạt động thực tế được xác minh từ mã nguồn C đã decompile (`src/resident/`) và file thực thi `SLPM_861.62` về cách game điều phối animation, tiếp xúc bóng và chuyển trạng thái cầu thủ.

---

## 1. Kiến trúc tổng quát: Tại sao WE3 tạo cảm giác bóng thật trên PS1?

Thay vì tách rời **logic vật lý bóng** và **animation hình ảnh**, Winning Eleven 3 Final Ver. gắn chặt cả hai qua **3 lớp dữ liệu**:

1. **Dữ liệu 12 xương mỗi frame (`ANIME.BIN` tại `0x8014A000`)**: Mỗi frame chứa sẵn góc xoay và tọa độ 3D `(px, py, pz)` của từng bộ phận (đầu, 2 bàn chân...).
2. **Bảng vector tiếp xúc bóng theo `(anim_id, frame_idx)` (`func_8004E6D4`)**: Switch-table cho `114` animation (`0..113`), trả về tọa độ 6-byte `(s16 x, y, z)` của điểm tiếp xúc bóng chuẩn tương ứng với đúng frame đang phát.
3. **Cờ lật gương Trái ↔ Phải (`record[0x3AC]`) & Nhảy pha frame (`record[0x390]`)**: Cho phép dùng 1 animation cho cả 2 chân và nối chuỗi động tác mượt mà không cần nội suy quaternion nặng máy.

---

## 2. Chu trình 4 bước đồng bộ khi cầu thủ xử lý bóng

### Bước 1: Áp sát bóng & Chọn chân thuận theo chu kỳ chạy ([func_80028C68.c](file:///C:/Users/akihungac/.gemini/antigravity/scratch/winning-eleven-3-final-ver-decomp/src/resident/func_80028C68.c))
Trước khi vào động tác đón/xử lý bóng (`anim 35` — 15 frame):
- Game kiểm tra cầu thủ đang ở **nửa chu kỳ chân trái hay chân phải** của animation chạy hiện tại:
  - `anim 27` / `38` (16 frame): kiểm tra `frame` có nằm trong `7..14` không.
  - `anim 4` (14 frame): kiểm tra `frame` có nằm trong `4..10` không.
  - Nếu lệch pha chân, game **tự động đảo `mode ^= 1`** (lật gương trái/phải) để chân gần bóng nhất thực hiện động tác.
- Gọi `func_8005C2AC(actor, 35, 0, heading, mode)` để lấy **tọa độ điểm tiếp xúc của `anim 35` frame 0**, sau đó tính vận tốc tiếp cận:
  - `speed = khoảng_cách / 6` (chia cho 6 frame, giới hạn bởi `actor[0x3B4] + 4`).
  - Cầu thủ di chuyển vừa khít `6` frame tới đúng điểm tiếp xúc rồi mới kích hoạt `func_8005BA30(actor, 35, 0)`.

### Bước 2: Kiểm tra va chạm theo đúng xương & frame hiện tại ([func_8004D7D4.c](file:///C:/Users/akihungac/.gemini/antigravity/scratch/winning-eleven-3-final-ver-decomp/src/resident/func_8004D7D4.c), [func_8005C1CC.c](file:///C:/Users/akihungac/.gemini/antigravity/scratch/winning-eleven-3-final-ver-decomp/src/resident/func_8005C1CC.c))
Khi bóng ở gần (`dx² + dz² < 0x4001`):
- Game gọi `func_8005C1CC` cho 3 xương tiếp xúc:
  - `func_8005C1CC(record, 0)` — **Đầu** (`00_Head`)
  - `func_8005C1CC(record, 8)` — **Bàn chân phải** (`08_R_Foot`)
  - `func_8005C1CC(record, 11)` — **Bàn chân trái** (`11_L_Foot`)
- `func_8005C1CC` lấy tọa độ `(px, py, pz)` của xương đó ở **đúng frame đang phát**, đảo `-px` nếu `record[0x3AC] != 0`, xoay qua ma trận GTE (`func_800B12C8`) và so sánh độ cao thực tế với quả bóng (`ballView + 4`) để xác định chạm bóng hợp lệ.

### Bước 3: Dẫn bóng (Dribble) & Tung lực tại đúng frame tiếp xúc ([func_80053B44.c](file:///C:/Users/akihungac/.gemini/antigravity/scratch/winning-eleven-3-final-ver-decomp/src/resident/func_80053B44.c), [func_800332EC.c](file:///C:/Users/akihungac/.gemini/antigravity/scratch/winning-eleven-3-final-ver-decomp/src/resident/func_800332EC.c))
- **Khi giữ/dẫn bóng (`func_80053B44.c`)**: Mỗi frame gọi `func_8005C2AC(record, anim_id, frame_idx, angle, mirror)` để lấy tọa độ điểm chạm ở frame hiện tại và **cập nhật trực tiếp vị trí bóng (`ball + 2`, `ball + 6`)** theo điểm chạm đó cộng vận tốc cầu thủ.
- **Khi sút / chuyền (`func_800332EC.c`)**:
  - **Động tác 44 frame (`case 2`, ví dụ `anim 15`)**: Animation chạy từng frame qua `func_8005BD1C`; **chỉ tại đúng `phase == 26` (frame 26)** mới kiểm tra `func_80053B44` và gọi `func_80033888(record)` để **đẩy bóng rời khỏi chân**. Từ `phase >= 27` giảm dần tốc độ theo bảng `D_800C6C04[phase]` (theo đà), đến `phase == 43` quay về `Idle` (`anim 1`).
  - **Động tác nhanh (`case 3`)**: Frame `0..7` xoay dần góc thân theo `D_800C6C44[phase]`; **đúng `phase == 7`** kiểm tra đẩy bóng; đến `phase == 9` chuyển sang `anim 84` từ frame `16` để thu chân.

### Bước 4: Giữ chân không lún xuống mặt sân ([func_8003DB08.c](file:///C:/Users/akihungac/.gemini/antigravity/scratch/winning-eleven-3-final-ver-decomp/src/resident/func_8003DB08.c))
- Mỗi frame kiểm tra độ cao Y thực tế của xương `8` (bàn chân phải) và `11` (bàn chân trái) qua `func_8005C1CC`. Nếu chân nào bị lún xuống dưới mặt cỏ (`D_1F8000F2 > 0`), game nâng trực tiếp độ cao cầu thủ `record[2]` lên đúng phần lún đó.

---

## 3. Cơ chế chuyển tiếp & "Nhảy cóc frame" (Frame-Offset Transition)

Vì phần cứng PS1 không đủ tài nguyên nội suy quaternion mượt cho 22 cầu thủ cùng lúc, WE3 dùng hai kỹ thuật:
1. **Đồng bộ pha chu kỳ chạy ([func_8005BA78.c](file:///C:/Users/akihungac/.gemini/antigravity/scratch/winning-eleven-3-final-ver-decomp/src/resident/func_8005BA78.c))**: Khi chuyển giữa `Idle (1)` ↔ `Run (2, 3)` ↔ `Sprint (4, 89)` ↔ `Dribble/Turn (27, 38, 52)`, game tra bảng (`D_800C6B84`, `D_800C6B98`, `D_800C6BA8`, `D_800C6BB8`, `D_800C6BC8`) để chọn frame khởi đầu có tư thế chân tương ứng.
2. **Nhảy thẳng vào giữa animation (`func_8005BA30(actor, anim_id, start_frame)`)**:
   - [func_800259F0.c](file:///C:/Users/akihungac/.gemini/antigravity/scratch/winning-eleven-3-final-ver-decomp/src/resident/func_800259F0.c): Bắt đầu `anim 89` ở `(frame + 7) % 14` (lệch nửa chu kỳ) hoặc `anim 4` ở frame `6`.
   - [func_800332EC.c](file:///C:/Users/akihungac/.gemini/antigravity/scratch/winning-eleven-3-final-ver-decomp/src/resident/func_800332EC.c): Nối sang `anim 84` bắt đầu ở frame `16`.
   - [func_80034470.c](file:///C:/Users/akihungac/.gemini/antigravity/scratch/winning-eleven-3-final-ver-decomp/src/resident/func_80034470.c): Bắt đầu `anim 15` ở frame `22`.
   - [func_80040324.c](file:///C:/Users/akihungac/.gemini/antigravity/scratch/winning-eleven-3-final-ver-decomp/src/resident/func_80040324.c): Bắt đầu `anim 30` (`0x1E`) ở frame `21` (`0x15`).

---

## 4. Tóm tắt các trường quan trọng trên struct cầu thủ (`record`)

| Offset | Kiểu | Ý nghĩa đã xác minh |
|---:|---|---|
| `+0x02, +0x04, +0x06` | `s16` | Tọa độ thế giới `(X, Y, Z)` của cầu thủ |
| `+0x08, +0x10` | `s32` | Vận tốc di chuyển `(vx, vz)` |
| `+0x18` | `u32 *` | Con trỏ tới bảng frame của animation hiện tại (`D_8014A000[anim_id]`) |
| `+0x1C` | `u32` | Con trỏ tới dữ liệu 12 xương của frame hiện tại |
| `+0x40` | `MATRIX` | Ma trận xoay hướng mặt cầu thủ (dùng cho GTE) |
| `+0x38E` | `u16` | `anim_id` đang phát |
| `+0x390` | `u8` | `frame_idx` hiện tại trong animation |
| `+0x3AA` | `u8` | Góc hướng di chuyển / hướng mặt (`0..255`) |
| `+0x3AC` | `u8` | Cờ lật gương Trái ↔ Phải (`0` = bình thường, `!= 0` = đảo trục X) |
| `+0x3AD` | `u8` | Cờ kích hoạt animation |
