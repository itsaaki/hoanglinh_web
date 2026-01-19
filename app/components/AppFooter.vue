<script setup lang="ts">
const footerLinks = [
  { label: 'Trang chủ', to: '/' },
  { label: 'Giới thiệu', to: '#about' },
  { label: 'Sản phẩm', to: '#products' },
  { label: 'Tin tức', to: '#news' },
  { label: 'Liên hệ', to: '#contact' }
]

const socialLinks = [
  { icon: 'i-simple-icons-facebook', class: 'fb', url: '#' },
  { icon: 'i-simple-icons-youtube', class: 'yt', url: '#' },
  { icon: 'i-simple-icons-tiktok', class: 'tt', url: '#' },
  { icon: 'i-heroicons-chat-bubble-oval-left-ellipsis-solid', class: 'zl', url: '#' } 
]
</script>

<style lang="scss" scoped src="~/assets/scss/components/_footer.scss"></style>

<template>
  <footer class="footer-wrapper">
    <div class="container mx-auto px-4">
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8 md:gap-12">
        
        <div class="footer-col-left">
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
              :class="social.class"
            >
              <UIcon :name="social.icon" class="w-5 h-5" />
            </a>
          </div>
        </div>

        <div class="contact-info">
          <h3 class="footer-title">
            Công ty TNHH Dịch vụ Thương mại Nông sản Hoàng Linh
          </h3>

          <div class="info-item">
            <span>Hotline</span>
            <p>0123 456 789</p>
          </div>

          <div class="info-item">
            <span>Địa chỉ</span>
            <p>Số XXX - Đường XXXX - Quận XXXXX - Thành Phố XXXXX</p>
          </div>

          <div class="info-item">
            <span>E-mail</span>
            <a href="mailto:hoanglinh@hoanglinh.com.vn">
              hoanglinh@hoanglinh.com.vn
            </a>
          </div>
          
          <div class="mt-4 text-xs text-gray-500">
             ©2025 Nông Sản Hoàng Linh. Tất cả các quyền được bảo hộ.
          </div>
        </div>

        <div class="legal-info">
          <img src="/assets/images/logo.png" alt="Hoàng Linh Logo" class="logo-img" />

          <div class="biz-infospace-y-1">
            <p>Mã số doanh nghiệp: 3600224423</p>
            <p>Cấp lần đầu: XX/XX/XXXX</p>
            <p>Nơi cấp: Sở Tài Chính Tỉnh XX</p>
          </div>

          <div class="mt-4">
            <NuxtLink to="/chinh-sach" class="font-bold text-blue-900 hover:text-blue-600 uppercase text-xs">
              Chính sách bảo mật
            </NuxtLink>
          </div>
        </div>

      </div>
    </div>
  </footer>
</template>