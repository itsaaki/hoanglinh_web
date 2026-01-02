# GitHub Push Code Guidelines

Tài liệu này hướng dẫn **quy trình chuẩn để push code lên GitHub** dành
cho developer trong team. Mục tiêu là đảm bảo code được quản lý nhất
quán, dễ review và hạn chế conflict.

------------------------------------------------------------------------

## 1. Quy trình tổng quan

Quy trình push code gồm các bước chính:

1.  Add file và commit code ở local
2.  Checkout sang branch mới theo format quy định
3.  Push branch lên GitHub (remote)
4.  Tạo Pull Request (PR)
5.  Review, xử lý conflict và merge

------------------------------------------------------------------------

## 2. Commit code ở local

### 2.1. Kiểm tra trạng thái code

``` bash
git status
```

### 2.2. Add file thay đổi

``` bash
git add .
```

------------------------------------------------------------------------

## 3. Commit Convention (Conventional Commits)

Team áp dụng **Conventional Commits** để: - Dễ đọc lịch sử commit - Tự
động generate changelog - Hỗ trợ CI/CD, semantic versioning

### 3.1. Cấu trúc commit message

    <type>: <short description>

**Ví dụ:**

    feat: add email validation
    fix: resolve token expiration bug
    doc: update setup instructions

### 3.2. Danh sách type được phép

  Type       Ý nghĩa
  ---------- -----------------------------------------
  feat       Thêm tính năng mới
  fix        Sửa lỗi
  doc        Cập nhật tài liệu
  refactor   Refactor code (không thay đổi behavior)
  test       Thêm / sửa test
  chore      Công việc phụ trợ (config, tooling)
  deploy     Liên quan deploy
  ci         CI/CD pipeline

### 3.3. Quy tắc viết commit

-   Viết ở **thì hiện tại**
-   Không viết hoa chữ cái đầu
-   Không dấu chấm cuối câu
-   Mỗi commit chỉ làm **một việc**

**Ví dụ đúng:**

    fix(order): handle null discount value

**Ví dụ sai:**

    Fixed bugs
    Update code.

------------------------------------------------------------------------

## 4. Tạo và checkout branch mới

### 4.1. Quy ước đặt tên branch

-   Dùng **hyphen-case**
-   Phản ánh nội dung thay đổi

**Ví dụ:** - `feat-add-user-validation`
`doc-update-readme`

### 4.2. Checkout branch

``` bash
git checkout -b feat-add-user-validation
```

------------------------------------------------------------------------

## 5. Push branch lên GitHub

``` bash
git push --set-upstream origin feat-add-user-validation
```

------------------------------------------------------------------------

## 6. Pull Request Template

Team sử dụng Pull Request template sau:

### 6.1. Title Pull Request

    [type]: short description

**Ví dụ:**

    [feat]: Add user validation logic

------------------------------------------------------------------------

### 6.2. Description Pull Request (Template)

``` md
## Summary
- Mô tả ngắn gọn các thay đổi chính

## Changes
- [ ] Thêm validation user
- [ ] Refactor service layer

## Reason
- Vì sao cần thay đổi này?

## Impact
- Ảnh hưởng module nào?
- Có breaking change không?

## Testing
- [ ] Unit test
- [ ] Manual test

## Notes
- Lưu ý cho reviewer hoặc khi deploy
```

------------------------------------------------------------------------

## 7. Review, conflict và merge

### 7.1. Review

-   Tag ít nhất 1--2 reviewer
-   Sửa code theo comment

``` bash
git commit -m "fix(review): address review comments"
git push
```

### 7.2. Giải quyết conflict

``` bash
git pull origin main
```

-   Resolve conflict
-   Commit lại

``` bash
git commit -m "chore: resolve merge conflicts"
git push
```

### 7.3. Merge

-   Chỉ merge khi PR đã approve
-   Xóa branch đã tạo sau khi merge

------------------------------------------------------------------------

## 8. Best Practices

-   Không push trực tiếp lên `main`
-   PR nhỏ, tập trung
-   Pull code mới nhất trước khi tạo branch

------------------------------------------------------------------------
