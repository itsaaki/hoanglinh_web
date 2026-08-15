<script setup lang="ts">
const footerLinks = [
  { label: 'Trang chủ', to: '/' },
  { label: 'Giới thiệu', to: '/about' },
  { label: 'Sản phẩm', to: '/products/products' },
  { label: 'Tin tức', to: '/news/news' },
  { label: 'Liên hệ', to: '/contact' }
]

const socialLinks = [
  { icon: 'i-simple-icons-facebook', url: '#',  },
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

<style lang="scss" scoped src="~/assets/scss/components/_footer.scss"></style>
