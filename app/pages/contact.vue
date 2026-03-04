<script setup lang="ts">
useHead({
  title: 'Liên hệ - Hoàng Linh Group',
})

// Xử lý sự kiện gửi form (Giả lập)
const handleSubmit = () => {
  alert('Cảm ơn bạn đã liên hệ! Chúng tôi sẽ phản hồi sớm nhất.')
}
</script>

<template>
  <div class="contact-page">
    <div class="container">
      
      <section class="address-section">
        <h1 class="page-title">Địa chỉ công ty</h1>
        
        <p class="page-desc">
          Etiam leo magna, egestas nec commodo nec, hendrerit ultrices lectus. Nam et mauris ac dolor sollicitudin ultricies quis quis neque. Fusce justo risus, dapibus vulputate ligula eget, convallis aliquet nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
        </p>

        <h2 class="company-name">
          CÔNG TY TNHH DỊCH VỤ THƯƠNG MẠI NÔNG SẢN HOÀNG LINH
        </h2>

        <div class="contact-info">
          <p>Số XXX - Đường XXXX - Quận XXXXX - Thành Phố XXXXX</p>
          <p>Email: <a href="mailto:hoanglinh@hoanglinh.com.vn">hoanglinh@hoanglinh.com.vn</a></p>
          <p>Số điện thoại: <span class="phone">090 123 456</span></p>
        </div>

        <div class="map-wrapper">
          <iframe 
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.696637384666!2d105.84752931533214!3d21.00479598601139!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac71294bf0eb%3A0x9b1b70e176b50e64!2zSGFub2ksIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1626925827364!5m2!1sen!2s" 
            width="100%" 
            height="450" 
            style="border:0;" 
            loading="lazy">
          </iframe>
        </div>
      </section>

      <section class="form-section">
        <h2 class="form-title">Liên hệ với chúng tôi</h2>

        <form class="contact-form" @submit.prevent="handleSubmit">
          
          <div class="form-group">
            <input type="text" placeholder="Họ và tên" class="form-input" required />
          </div>

          <div class="form-row">
            <div class="form-group">
              <input type="email" placeholder="Email" class="form-input" required />
            </div>
            <div class="form-group">
              <input type="tel" placeholder="Số điện thoại" class="form-input" required />
            </div>
          </div>

          <div class="form-group">
            <textarea placeholder="Nội dung" class="form-input form-textarea" rows="6" required></textarea>
          </div>

          <div class="form-submit">
            <button type="submit" class="btn-submit">Gửi</button>
          </div>

        </form>
      </section>

    </div>
  </div>
</template>

<style scoped>
/* --- CẤU HÌNH CHUNG --- */
.contact-page {
  font-family: 'Montserrat', sans-serif;
  color: #333;
  padding: 4rem 0 6rem 0;
  background-color: #fff;
}

.container {
  max-width: 1000px; /* Giới hạn chiều rộng để form không quá bè */
  margin: 0 auto;
  padding: 0 20px;
}

/* --- 1. ADDRESS SECTION --- */
.address-section {
  text-align: center;
  margin-bottom: 6rem;
}

.page-title {
  color: #3b5ba9; /* Màu xanh thương hiệu */
  font-size: 3rem;
  font-weight: 700;
  margin-bottom: 1.5rem;
}

.page-desc {
  font-size: 1rem;
  line-height: 1.6;
  color: #555;
  margin-bottom: 3rem;
  max-width: 800px;
  margin-left: auto;
  margin-right: auto;
}

.company-name {
  color: #3b5ba9;
  font-size: 1.5rem;
  font-weight: 700;
  text-transform: uppercase;
  margin-bottom: 1.5rem;
}

.contact-info p {
  font-size: 1.1rem;
  color: #3b5ba9; /* Chữ thông tin màu xanh giống ảnh */
  margin-bottom: 0.8rem;
}

.contact-info a {
  color: #3b5ba9;
  text-decoration: none;
}

.map-wrapper {
  margin-top: 3rem;
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

/* --- 2. FORM SECTION --- */
.form-section {
  text-align: center;
}

.form-title {
  color: #3b5ba9;
  font-size: 2.5rem;
  font-weight: 700;
  margin-bottom: 3rem;
}

.contact-form {
  max-width: 900px;
  margin: 0 auto;
}

.form-group {
  margin-bottom: 1.5rem;
}

/* Input Styles - Giống ảnh mẫu */
.form-input {
  width: 100%;
  padding: 1.2rem 1.5rem;
  background-color: #f5f6fa; /* Màu xám nhạt */
  border: none;
  border-radius: 8px;
  font-size: 1rem;
  color: #333;
  outline: none;
  transition: box-shadow 0.3s;
}

/* Màu placeholder */
.form-input::placeholder {
  color: #9ca3af; 
}

.form-input:focus {
  box-shadow: 0 0 0 2px #3b5ba9; /* Viền xanh khi bấm vào */
}

/* Layout 2 cột cho Email/SĐT */
.form-row {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1.5rem;
}

@media (max-width: 768px) {
  .form-row {
    grid-template-columns: 1fr; /* Mobile thì về 1 cột */
  }
}

.form-textarea {
  resize: vertical; /* Cho phép kéo giãn chiều dọc */
}

/* Nút Submit */
.form-submit {
  margin-top: 2rem;
}

.btn-submit {
  background-color: #3b5ba9;
  color: white;
  border: none;
  padding: 12px 60px; /* Nút dài */
  border-radius: 50px; /* Bo tròn viên thuốc */
  font-size: 1.1rem;
  font-weight: 700;
  cursor: pointer;
  transition: background 0.3s, transform 0.2s;
}

.btn-submit:hover {
  background-color: #2a4080;
  transform: translateY(-2px);
}
</style>