# Hướng dẫn trích xuất và sắp xếp Asset — Winning Eleven 3 Final Ver. (`SLPM_861.62`)

Tài liệu này hướng dẫn cách trích xuất toàn bộ file và asset từ đĩa game **World Soccer Jikkyou Winning Eleven 3 Final Ver.** (PS1, `SLPM_861.62`) vào thư mục riêng `assets/` và phân loại rõ ràng theo từng nhóm.

> **Lưu ý bản quyền:** Repository không chứa file đĩa game. Bạn cần cung cấp bản dump hợp pháp của riêng mình (`.zip`, `.cue` + `.bin`, `.bin`, hoặc `.iso`). Thư mục `assets/` đã được cấu hình trong `.gitignore` nên không bị đẩy nhầm lên Git.

---

## 1. Cấu trúc thư mục sau khi trích xuất

Khi chạy script trích xuất, toàn bộ asset sẽ được sắp xếp vào `assets/` như sau:

```text
assets/
├── 01_executables/     # File khởi động & thực thi chính (SYSTEM.CNF, SLPM_861.62)
├── 02_overlays/        # Các module code nạp động theo màn chơi (SELECT.BIN, ENTER.BIN, TRAINING.BIN, ...)
├── 03_movies/          # Video cắt cảnh PS1 (.STR trong thư mục MOVIE/)
├── 04_audio_data/      # Dữ liệu âm thanh nén / stream (SD_COMP/*.RA, *.DA, *.XA, *.SEQ, *.VAB...)
├── 05_cd_audio/        # Các track nhạc CD Audio (Track 2–9 .bin và file .cue nếu nguồn là .zip/.cue)
├── 06_game_data/       # Toàn bộ dữ liệu game còn lại (đồ họa, sân, đội bóng, bảng dữ liệu...), giữ nguyên cấu trúc thư mục gốc trên đĩa
├── asset_manifest.json # Danh sách chi tiết toàn bộ file đã trích xuất (đường dẫn gốc, kích thước, LBA, SHA-1)
└── HUONG_DAN.md        # Bản sao của file hướng dẫn này
```

### Giải thích chi tiết từng nhóm

| Thư mục | Nội dung chính | Ghi chú kỹ thuật |
|---|---|---|
| `01_executables/` | `SLPM_861.62`, `SYSTEM.CNF` | `SLPM_861.62` là file thực thi PS-X EXE chính (`882,688` bytes, SHA-1 chuẩn: `7e480656a295dced6ec187286773ab897651e995`). |
| `02_overlays/` | `SELECT.BIN`, `ENTER.BIN`, `MOVIE.BIN`, `TRAINING.BIN`, `UNIFORM.BIN`, `SELFORM.BIN`, `SELSND.BIN`, `ENDING.BIN`, `STAFF.BIN` | Các overlay code được nạp vào RAM tùy theo chế độ chơi. |
| `03_movies/` | `MOVIE/*.STR` | Định dạng video MDEC của PS1. Để xem hoặc chuyển sang MP4/AVI, có thể dùng **jPSXdec** hoặc **FFmpeg** (đọc trực tiếp từ file `.bin`/`.cue` gốc sẽ giữ nguyên XA subheader nếu tool yêu cầu). |
| `04_audio_data/` | `SD_COMP/*.RA`, `*.DA`, ... | Âm thanh bình luận, hiệu ứng, nhạc nền dạng dữ liệu nén của Konami. Lưu ý kỹ thuật (đối chiếu `WE3_redux`): bình luận `VAGp` dùng tần số gốc **`27,781 Hz`**; các tone VAB trong `ISSPRO2A.RA` (`@0x3800`) có tần số riêng từng SFX (`10735`–`22050 Hz`), riêng `sfx_12` (tiếng khán giả `18542 Hz`) có PS1 VAG `LOOP_FORWARD` tại `12740..45360`. |
| `05_cd_audio/` | Track 2–9 (`.bin`) + `.cue` | Nhạc nền CDDA 44.1 kHz stereo PCM (16-bit signed little-endian). Có thể chuyển sang `.wav`/`.flac` bằng `ffmpeg -f s16le -ar 44100 -ac 2 -i "Track 2.bin" track2.wav`. |
| `06_game_data/` | Các thư mục/file dữ liệu còn lại | Chứa texture (`.TIM` hoặc dữ liệu nén), model 3D, dữ liệu cầu thủ/đội bóng, UI... |

---

## 2. Cách chạy trích xuất (PowerShell)

Mở PowerShell tại thư mục gốc của repository:

### Cách 1: Tự động nhận diện file đĩa đặt trong thư mục gốc
Đặt 1 file `.zip` (hoặc `.cue`/`.bin`/`.iso`) vào thư mục gốc của repo, sau đó chạy:

```powershell
python tools_src\extract_assets.py
```

### Cách 2: Chỉ định đường dẫn file đĩa ở bất kỳ đâu

```powershell
python tools_src\extract_assets.py --input "D:\Games\WE3_Final\Winning Eleven 3 Final Ver.zip"
```

Hoặc với file `.cue`, `.bin`, `.iso`:

```powershell
python tools_src\extract_assets.py --input "D:\Games\WE3_Final\WE3.cue"
```

### Cách 3: Chỉ xem danh sách file trước khi trích xuất

```powershell
python tools_src\extract_assets.py --input "D:\path\to\disc.zip" --list
```

### Tùy chọn thư mục đầu ra khác (nếu muốn)

```powershell
python tools_src\extract_assets.py --input "D:\path\to\disc.zip" --out "D:\WE3_Assets"
```

---

## 3. Kiểm tra kết quả

Sau khi chạy xong:
1. Kiểm tra terminal không báo lỗi `WARNING` về SHA-1 của `SLPM_861.62` (nếu đúng bản Nhật rev 1 `SLPM_861.62`).
2. Mở `assets\asset_manifest.json` để tra cứu nhanh bất kỳ file nào: vị trí gốc trên ISO, LBA, kích thước (bytes) và mã băm SHA-1.
3. Nếu bạn cũng muốn chạy luồng decomp chuẩn của repo, chạy thêm `tools_src\extract.py` để tạo thư mục `extracted/` cho `build.py`.
