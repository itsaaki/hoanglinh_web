# Guidelines: Xử lý Merge Conflicts trong Git

## 1. Giới thiệu về Merge Conflicts
Merge conflict xảy ra khi Git không thể tự động hợp nhất các thay đổi từ hai nhánh vì có sự khác biệt ở cùng một phần của file. Điều này thường xảy ra khi:
- Hai nhánh chỉnh sửa cùng một dòng.
- Một nhánh xóa file, nhánh kia chỉnh sửa file đó.

## 2. Các bước xử lý Merge Conflicts
### Bước 1: Thực hiện merge và kiểm tra conflict
Khi chạy lệnh merge:
```bash
git merge <branch>
```
Nếu có conflict, Git sẽ thông báo và hiển thị danh sách file bị ảnh hưởng. Kiểm tra bằng:
```bash
git status
```

### Bước 2: Mở file bị conflict
Trong file sẽ xuất hiện các marker:
```diff
<<<<<<< HEAD
Nội dung từ nhánh hiện tại
=======
Nội dung từ nhánh được merge
>>>>>>> branch-name
```

### Bước 3: Chỉnh sửa thủ công
- Giữ lại phần bạn muốn.
- Xóa các marker `<<<<<<<`, `=======`, `>>>>>>>`.

Ví dụ:
```diff
<<<<<<< HEAD
console.log("Hello from main");
=======
console.log("Hello from feature");
>>>>>>> feature-branch
```
Sau khi chỉnh sửa:
```javascript
console.log("Hello from main and feature");
```

### Bước 4: Đánh dấu đã giải quyết
```bash
git add <file>
```

### Bước 5: Hoàn tất merge
```bash
git commit
```

Nếu đang rebase:
```bash
git rebase --continue
```

## 3. Best Practices để hạn chế Merge Conflicts
- Luôn **pull code mới nhất** trước khi bắt đầu làm việc.
- Chia nhỏ thay đổi và commit thường xuyên.
- Giao tiếp với team về các file quan trọng.
- Sử dụng **code review** để phát hiện xung đột sớm.
