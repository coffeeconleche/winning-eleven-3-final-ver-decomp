# Cơ chế Khung xương (Skeleton) & Animation — Winning Eleven 3 Final Ver.

Tài liệu này tổng hợp kết quả phân tích trực tiếp từ mã nguồn decompile (`src/resident/`), file thực thi `SLPM_861.62` và các file dữ liệu trong `assets/06_game_data/BIN/`.

---

## 1. Tổng quan kiến trúc

Winning Eleven 3 Final Ver. sử dụng **khung xương 12 khớp nối cứng (12-bone rigid-part hierarchy)** đặc trưng của PS1:
- Mỗi cầu thủ gồm **12 bộ phận (mesh) tách rời** tương ứng với **12 khớp xương**.
- Không dùng soft-skinning (trọng số đỉnh); thay vào đó, mỗi bộ phận là một mesh PS1 **TMD** (`0x00000041`) riêng biệt, được đặt vào vị trí và góc xoay của xương tương ứng trong không gian cục bộ của cầu thủ (**character-local space** — tọa độ từng xương trong `ANIME.BIN` đã được tính sẵn, không cần nhân chuỗi cha–con ở runtime).
- Toàn bộ phép biến đổi ma trận và dựng hình chạy qua bộ đồng xử lý **GTE (Geometry Transformation Engine)** của PS1 (hệ số fixed-point `4096 = 1.0`, góc xoay `4096 = 360°`, trục `-Y` hướng lên trên).

### Danh sách 12 khớp xương

| Index | Bộ phận | Tọa độ mẫu (tư thế đứng `anim[1]`) |
|---:|---|---|
| `0` | Đầu (`Head`) | `(0, -388, -37)` |
| `1` | Thân / Ngực (`Torso`) | `(0, -307, -2)` |
| `2` | Bắp tay phải (`R_UpperArm`) | `(-72, -335, -3)` |
| `3` | Cẳng tay phải (`R_Forearm`) | `(-90, -251, -7)` |
| `4` | Bắp tay trái (`L_UpperArm`) | `(+73, -334, -3)` |
| `5` | Cẳng tay trái (`L_Forearm`) | `(+90, -250, -7)` |
| `6` | Đùi phải (`R_Thigh`) | `(-28, -207, +7)` |
| `7` | Cẳng chân phải (`R_Shin`) | `(-57, -82, -24)` |
| `8` | Bàn chân phải (`R_Foot`) | `(-57, -32, -15)` |
| `9` | Đùi trái (`L_Thigh`) | `(+28, -205, +10)` |
| `10` | Cẳng chân trái (`L_Shin`) | `(+62, -79, 0)` |
| `11` | Bàn chân trái (`L_Foot`) | `(+66, -32, +21)` |

---

## 2. Định dạng file Animation (`BIN/ANIME.BIN`)

- **Địa chỉ nạp RAM:** `0x8014A000` (`D_8014A000[]`).
- **Bảng đầu file:** `123` con trỏ 32-bit (`0x000..0x1EB`), trỏ tới danh sách frame của từng animation (nhiều slot có giá trị `0` nếu trống; có 92 animation hợp lệ được parse).
- **Danh sách frame của mỗi animation:** Mảng các con trỏ 32-bit trỏ tới dữ liệu từng frame, kết thúc bằng giá trị sentinel **`11` (`0x0000000B`)** (xác nhận tại `src/resident/func_8005BD1C.c`).
- **Dữ liệu mỗi frame (`144` bytes):** Gồm đúng **12 bản ghi xương × 12 bytes** (`6 × s16` little-endian):
  - `+0x00` (`s16`): `rx` — góc xoay trục X (`4096 = 2π`)
  - `+0x02` (`s16`): `ry` — góc xoay trục Y (`4096 = 2π`)
  - `+0x04` (`s16`): `rz` — góc xoay trục Z (`4096 = 2π`)
  - `+0x06` (`s16`): `px` — vị trí X trong không gian cầu thủ (bị đảo dấu `-px` khi bật cờ lật gương `record[0x3AC] != 0`)
  - `+0x08` (`s16`): `py` — vị trí Y (âm = hướng lên)
  - `+0x0A` (`s16`): `pz` — vị trí Z

### Tham chiếu mã nguồn decompile liên quan
- `src/resident/func_8005BA30.c`: Nạp `D_8014A000[anim_id]`, lưu con trỏ bảng frame vào `record + 0x18` và frame hiện tại vào `record + 0x1C`.
- `src/resident/func_8005BD1C.c`: Tăng chỉ số frame `record[0x390]`, quay vòng về `0` khi gặp sentinel `11`.
- `src/resident/func_8005BA78.c`: Chuyển đổi trạng thái animation (ví dụ `0x02` = chạy 18 frame, `0x04` = chạy nhanh 14/18 frame, `0x1B`/`0x26`/`0x34` = đứng/chuyển pha).
- `src/resident/func_8005C1CC.c`: Đọc trực tiếp tọa độ `(px, py, pz)` của xương `index * 12` từ frame hiện tại và biến đổi qua ma trận cầu thủ `record + 0x40` bằng GTE.

---

## 3. Định dạng file Model 3D (`BIN/MOD1_*.BIN`, `BIN/MOD2_*.BIN`)

- **Địa chỉ nạp RAM:** `MOD1_*.BIN` tại `0x801B0000`, `MOD2_*.BIN` tại `0x801C8000` (cho 2 đội trên sân).
- **Bảng đầu file:** `22` con trỏ 32-bit trỏ tới `22` bản ghi cầu thủ (`200` bytes = `0xC8` mỗi bản ghi).
- **Cấu trúc mỗi bản ghi `200` bytes:** Gồm `25` slot × `8` bytes (`u32 opcode, u32 tmd_ptr`):
  - **Slot `0..11`:** 12 bộ phận cơ thể ở mức chi tiết cao (**LOD 0**).
  - **Slot `12..23`:** 12 bộ phận cơ thể ở mức chi tiết thấp (**LOD 1**).
  - **Slot `24`:** `opcode = 0xFF` (kết thúc bản ghi).
- **Ý nghĩa `opcode`:**
  - `0x02`: `tmd_ptr` trỏ trực tiếp tới mesh **PS1 TMD** (`0x00000041`) nằm ngay trong file `MOD1_*.BIN` / `MOD2_*.BIN` (sử dụng primitive `mode = 0x2C` `POLY_FT4` — tứ giác có texture).
  - Các mã khác (`0x82..0x88`, `0xAE..0xB1`, `0xBE`, `0xBF`, v.v., với `tmd_ptr = 0`): Tham chiếu tới các bộ phận dùng chung (giày, cẳng tay, kiểu đầu) nạp từ `BIN/MODEL.BIN` (`0x8013B498`).

---

## 4. Công cụ kiểm tra & xuất sang 3D (`.gltf` / `.obj`)

Sử dụng script [export_skeleton_anim.py](file:///C:/Users/akihungac/.gemini/antigravity/scratch/winning-eleven-3-final-ver-decomp/tools_src/export_skeleton_anim.py):

```powershell
# Xem danh sách animation trong ANIME.BIN và 12 slot xương của cầu thủ
python tools_src\export_skeleton_anim.py --inspect

# Xuất model + animation chạy (anim 2, 18 frame) sang glTF 2.0 (mở được trong Blender / Windows 3D Viewer)
python tools_src\export_skeleton_anim.py --anim 2 --gltf assets\07_exported_3d\player_run_anim2.gltf

# Xuất tư thế đứng (anim 1) sang glTF và OBJ
python tools_src\export_skeleton_anim.py --anim 1 --gltf assets\07_exported_3d\player_idle_anim1.gltf --obj assets\07_exported_3d\player_idle_anim1.obj
```

Các file 3D mẫu đã được xuất sẵn trong `assets/07_exported_3d/`:
- `player_run_anim2.gltf` (18 frame chạy)
- `player_idle_anim1.gltf` (21 frame đứng)
- `player_idle_anim1.obj` (mesh tĩnh frame 0)
