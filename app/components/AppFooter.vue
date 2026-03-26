<script setup lang="ts">
const footerLinks = [
  { label: 'Trang chủ', to: '/' },
  { label: 'Giới thiệu', to: '/about' },
  { label: 'Sản phẩm', to: '/products/products' },
  { label: 'Tin tức', to: '/news/news' },
  { label: 'Liên hệ', to: '/contact' }
]

const socialLinks = [
  { icon: 'i-simple-icons-facebook', url: '#' },
  { icon: 'i-simple-icons-youtube', url: '#' },
  { icon: 'i-simple-icons-tiktok', url: '#' },
  { icon: 'i-heroicons-chat-bubble-left-ellipsis-solid', url: '#' } 
]
</script>

<template>
  <footer class="footer-wrapper">
    <div class="footer-container">
      
      <div class="footer-grid">
        
        <div class="col-left">
          <nav class="footer-nav">
            <NuxtLink 
              v-for="link in footerLinks" 
              :key="link.to" 
              :to="link.to"
            >
              {{ link.label }}
            </NuxtLink>
          </nav>

          <div class="social-links">
            <a 
              v-for="(social, index) in socialLinks" 
              :key="index"
              :href="social.url"
              class="social-btn"
            >
              <UIcon :name="social.icon" class="w-5 h-5" />
            </a>
          </div>
        </div>

        <div class="col-center">
          <h3 class="company-title">
            CÔNG TY TNHH DỊCH VỤ THƯƠNG MẠI NÔNG SẢN HOÀNG LINH
          </h3>

          <div class="contact-group">
            <div class="contact-item">
              <span class="label">Hotline</span>
              <p class="value">0123 456 789</p>
            </div>

            <div class="contact-item">
              <span class="label">Địa chỉ</span>
              <p class="value">Số XXX - Đường XXXX - Quận XXXXX - Thành Phố XXXXX</p>
            </div>

            <div class="contact-item">
              <span class="label">E-mail</span>
              <a href="mailto:hoanglinh@hoanglinh.com.vn" class="value link">
                hoanglinh@hoanglinh.com.vn
              </a>
            </div>
          </div>
          
          <div class="copyright">
             ©2025 Nông Sản Hoàng Linh. Tất cả các quyền được bảo hộ.
          </div>
        </div>

        <div class="col-right">
          <div class="logo-wrapper">
            <img src="assets/images/logo.png" alt="Hoàng Linh Logo" />
          </div>

          <div class="biz-info">
            <p>Mã số doanh nghiệp: 3600224423</p>
            <p>Cấp lần đầu: XX/XX/XXXX</p>
            <p>Nơi cấp: Sở Tài Chính Tỉnh XX</p>
          </div>

          <div class="policy-link-wrapper">
            <NuxtLink to="/chinh-sach" class="policy-link">
              CHÍNH SÁCH BẢO MẬT
            </NuxtLink>
          </div>
        </div>

      </div>
    </div>
  </footer>
</template>

<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
</style>
<style scoped>
/* --- CẤU HÌNH CHUNG --- */
.footer-wrapper {
  background-color: #ffffff;
  padding: 3rem 0;
  border-top: 1px solid #eee;
  font-family: 'Montserrat', sans-serif;
  color: #333;
}

.footer-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

/* --- GRID SYSTEM (QUAN TRỌNG: Chia 3 cột) --- */
.footer-grid {
  display: grid;
  grid-template-columns: 1fr 1.5fr 1fr; /* Cột giữa rộng hơn chút */
  gap: 2rem;
  align-items: stretch; /* Để 3 cột cao bằng nhau */
}

/* Responsive: Mobile về 1 cột */
@media (max-width: 768px) {
  .footer-grid {
    grid-template-columns: 1fr;
    gap: 3rem;
  }
}

/* --- CỘT 1: LEFT --- */
.col-left {
  display: flex;
  flex-direction: column;
  justify-content: space-between; /* Đẩy social xuống đáy */
  height: 100%;
}

.footer-nav {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.footer-nav a {
  color: #2c4a9e; /* Xanh Hoàng Linh */
  font-weight: 700;
  text-decoration: none;
  font-size: 0.95rem;
}

.social-links {
  margin-top: auto; /* Kỹ thuật đẩy xuống đáy */
  padding-top: 2rem;
  display: flex;
  gap: 10px;
}

.social-btn {
  width: 40px;
  height: 40px;
  background-color: #2c4a9e;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  transition: 0.3s;
}
.social-btn:hover {
  transform: translateY(-3px);
  background-color: #1a3b80;
}

/* --- CỘT 2: CENTER --- */
.col-center {
  display: flex;
  flex-direction: column;
  height: 100%;
}

.company-title {
  color: #2c4a9e;
  font-weight: 800;
  font-size: 1rem;
  margin-bottom: 1.5rem;
  text-transform: uppercase;
}

.contact-item {
  margin-bottom: 1rem;
}

.contact-item .label {
  display: block;
  font-weight: 700;
  color: #2c4a9e;
  font-size: 0.9rem;
  margin-bottom: 0.2rem;
}

.contact-item .value {
  color: #555;
  margin: 0;
  font-size: 0.95rem;
}

.contact-item .link:hover {
  text-decoration: underline;
  color: #2c4a9e;
}

.copyright {
  margin-top: auto; /* Đẩy xuống đáy */
  padding-top: 2rem;
  font-size: 0.85rem;
  color: #6b7280;
}

/* --- CỘT 3: RIGHT --- */
.col-right {
  display: flex;
  flex-direction: column;
  align-items: flex-end; /* Căn phải toàn bộ */
  text-align: right;
  height: 100%;
}

/* Mobile: Căn trái lại */
@media (max-width: 768px) {
  .col-right {
    align-items: flex-start;
    text-align: left;
  }
}

.logo-wrapper {
  margin-bottom: 1rem;
}

.logo-wrapper img {
  height: 60px; /* Chiều cao logo */
  width: auto;
  object-fit: contain;
}

.biz-info p {
  font-size: 0.8rem;
  color: #2c4a9e;
  margin: 0.2rem 0;
}

.policy-link-wrapper {
  margin-top: auto; /* Đẩy xuống đáy */
  padding-top: 2rem;
}

.policy-link {
  color: #2c4a9e;
  font-weight: 800;
  font-size: 0.85rem;
  text-transform: uppercase;
  text-decoration: none;
}
</style>
