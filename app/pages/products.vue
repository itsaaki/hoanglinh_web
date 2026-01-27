<script setup lang="ts">
useHead({
  title: 'Sản phẩm - Hoàng Linh Group',
})

// Dữ liệu sản phẩm có thêm trường 'slug' để làm đường dẫn
const products = [
  { name: 'Bã bia', slug: 'ba-bia', image: 'https://images.unsplash.com/photo-1580910051074-3eb6948d3ea4?q=80&w=500' },
  { name: 'Khô đậu tương', slug: 'kho-dau-tuong', image: 'https://images.unsplash.com/photo-1620916566398-39f1143ab7be?q=80&w=500' },
  { name: 'Bột cá', slug: 'bot-ca', image: 'https://plus.unsplash.com/premium_photo-1675844477864-469d7b433436?q=80&w=500' },
  { name: 'Ngô hạt', slug: 'ngo-hat', image: 'https://images.unsplash.com/photo-1551754655-cd27e38d2076?q=80&w=500' },
  { name: 'Bã sắn', slug: 'ba-san', image: 'https://images.unsplash.com/photo-1615485500704-8e99099928b3?q=80&w=500' },
  { name: 'Lúa mì', slug: 'lua-mi', image: 'https://images.unsplash.com/photo-1574323347407-f5e1ad6d020b?q=80&w=500' },
  { name: 'Mỡ cá', slug: 'mo-ca', image: 'https://images.unsplash.com/photo-1615141982880-131f47671954?q=80&w=500' },
  { name: 'Cám mì', slug: 'cam-mi', image: 'https://images.unsplash.com/photo-1610348725531-843dff563e2c?q=80&w=500' },
]
</script>

<template>
  <div class="product-page">
    <div class="container">
      
      <section class="page-header">
        <h1 class="main-title">Sản phẩm</h1>
        <p class="description">
          Proin vitae ligula rhoncus, aliquet metus sed, accumsan mi. Vestibulum imperdiet porttitor bibendum.
        </p>
      </section>

      <section class="product-grid-section">
        <div class="product-grid">
          
          <div v-for="(item, index) in products" :key="index" class="product-item">
            <NuxtLink :to="`/products/${item.slug}`" class="circle-frame">
              <img :src="item.image" :alt="item.name" />
              <div class="overlay"></div>
              <h3 class="product-name">{{ item.name }}</h3>
            </NuxtLink>
          </div>

        </div>
      </section>

      <section class="cta-section">
        <h2 class="cta-title">Mua sản phẩm của chúng tôi</h2>
        <p class="cta-desc">Liên hệ ngay để nhận báo giá tốt nhất thị trường.</p>
        <NuxtLink to="/contact" class="btn-contact">Liên hệ</NuxtLink>
      </section>

    </div>
  </div>
</template>

<style scoped>
/* CẤU HÌNH CHUNG */
.product-page {
  font-family: 'Roboto', sans-serif;
  color: #333;
  padding: 4rem 0 6rem 0;
  background-color: #fff;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

/* --- 1. HEADER SECTION --- */
.page-header {
  text-align: center;
  margin-bottom: 4rem;
  max-width: 800px;
  margin-left: auto;
  margin-right: auto;
}

.main-title {
  color: #3b5ba9; /* Màu xanh đậm trong ảnh */
  font-size: 2.5rem;
  font-weight: 800;
  margin-bottom: 1.5rem;
}

.description {
  color: #555;
  line-height: 1.6;
  font-size: 1rem;
}

/* --- 2. PRODUCT GRID (QUAN TRỌNG) --- */
.product-grid {
  display: grid;
  /* Chia 4 cột đều nhau */
  grid-template-columns: repeat(4, 1fr); 
  gap: 3rem; /* Khoảng cách giữa các hình tròn */
  margin-bottom: 5rem;
}

/* Responsive: Tablet 2 cột, Mobile 1 cột */
@media (max-width: 992px) {
  .product-grid { grid-template-columns: repeat(2, 1fr); }
}
@media (max-width: 576px) {
  .product-grid { grid-template-columns: repeat(1, 1fr); }
}

.product-item {
  display: flex;
  justify-content: center;
}

.circle-frame {
  position: relative;
  width: 100%;
  aspect-ratio: 1 / 1; /* Đảm bảo luôn vuông để bo thành tròn */
  border-radius: 50%; /* Biến thành hình tròn */
  overflow: hidden; /* Cắt ảnh thừa */
  box-shadow: 0 5px 15px rgba(0,0,0,0.1);
  cursor: pointer;
  transition: transform 0.3s ease;
}

.circle-frame:hover {
  transform: scale(1.05); /* Hiệu ứng phóng to nhẹ khi di chuột */
}

.circle-frame img {
  width: 100%;
  height: 100%;
  object-fit: cover; /* Ảnh phủ kín hình tròn */
  transition: transform 0.5s ease;
}

.circle-frame:hover img {
  transform: scale(1.1);
}

/* Lớp phủ mờ để chữ trắng nổi bật */
.circle-frame .overlay {
  position: absolute;
  inset: 0;
  background: rgba(0, 0, 0, 0.2); 
  transition: background 0.3s;
}

.circle-frame:hover .overlay {
  background: rgba(0, 0, 0, 0.1); /* Sáng hơn khi hover */
}

.product-name {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%); /* Căn giữa tuyệt đối */
  color: white;
  font-size: 1.5rem;
  font-weight: 800;
  text-align: center;
  width: 90%;
  text-shadow: 0 2px 4px rgba(0,0,0,0.5); /* Bóng chữ */
  margin: 0;
  text-transform: capitalize;
}

/* --- 3. CTA SECTION --- */
.cta-section {
  text-align: center;
  max-width: 800px;
  margin: 0 auto;
}

.cta-title {
  color: #3b5ba9;
  font-size: 2rem;
  font-weight: 800;
  margin-bottom: 1rem;
}

.cta-desc {
  color: #555;
  line-height: 1.6;
  margin-bottom: 2rem;
}

.btn-contact {
  display: inline-block;
  background-color: #3b5ba9;
  color: white;
  padding: 12px 40px;
  border-radius: 50px; /* Bo tròn nút dạng viên thuốc */
  font-weight: 700;
  text-decoration: none;
  transition: background 0.3s;
  font-size: 1rem;
}

.btn-contact:hover {
  background-color: #2a4080;
}
</style>