# Guidelines: Commit, Pull, Merge và Xử lý Conflict

## 1. Commit chỉnh sửa
Sau khi chỉnh sửa code, bạn cần add file và commit với message rõ ràng.

### Ví dụ:
```bash
git add .
git commit -m "feat: add email validation"
```

**Lưu ý:**
- Commit message theo format: `type: description` (ví dụ: `feat: add email validation`).

---

## 2. Pull code mới về từ remote
Trước khi merge hoặc push, hãy đảm bảo bạn có code mới nhất từ remote.

### Ví dụ:
```bash
git pull origin main
```

**Giải thích:**
- `origin` là remote repository.
- `main` là nhánh chính.

---

## 3. Merge branch và xử lý conflict
Sau khi pull code mới, bạn có thể merge nhánh feature vào main.

### Ví dụ:
```bash
git checkout main
git merge feature-branch
```

Nếu có conflict, Git sẽ báo lỗi và hiển thị file bị conflict. Kiểm tra bằng:
```bash
git status
```

### Xử lý conflict:
Mở file bị conflict, bạn sẽ thấy:
```
<<<<<<< HEAD
Nội dung từ nhánh main
=======
Nội dung từ nhánh feature
>>>>>>> feature-branch
```

Chỉnh sửa để giữ nội dung mong muốn, xóa các marker `<<<<<<<`, `=======`, `>>>>>>>`.

Hoặc nêu dùng VSCode nó sẽ có sẵn các lựa chọn như `Accept Current Change`, `Accept Incoming Change`, ...
- Current change: Phần nội dung đến từ nhánh bạn đang checkout 
Incoming change: Phần nội dung đến từ nhánh bạn đang merge vào (nhánh “đi vào”, thường gọi là theirs trong Git)
- Take Current / Take Incoming / Accept Merge cũng tương tự

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

Đánh dấu đã giải quyết:
```bash
git add <file>
git commit -m "feat: add email validation"
```

Nếu đang rebase:
```bash
git rebase --continue
```

---

## 4. Best Practices
- Luôn pull code mới nhất trước khi bắt đầu làm việc.
- Commit nhỏ và thường xuyên.
- Giao tiếp với team về các file quan trọng.
- Kiểm tra code trước khi merge để hạn chế conflict.
