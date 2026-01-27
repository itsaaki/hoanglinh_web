<script setup lang="ts">
useHead({
  title: 'Tin tức - Hoàng Linh Group',
})

const newsList = [
  {
    id: 1,
    title: 'PROIN VITAE LIGULA RHONCUS, ALIQUET METUS SED, ACCUMSAN MI.',
    excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.',
    image: 'https://images.unsplash.com/photo-1484557985045-6f5c5e2a10f5?q=80&w=800' // Ảnh Cừu
  },
  {
    id: 2,
    title: 'VESTIBULUM IMPERDIET PORTTITOR BIBENDUM.',
    excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.',
    image: 'https://images.unsplash.com/photo-1548550023-2bdb3c5beed7?q=80&w=800' // Ảnh Gà
  },
  {
    id: 3,
    title: 'VESTIBULUM MOLLIS, LEO SED RUTRUM MATTIS.',
    excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.',
    image: 'https://images.unsplash.com/photo-1546445317-29f4545e9d53?q=80&w=800' // Ảnh Bò
  },
  {
    id: 4,
    title: 'ĐỘI NGŨ NHÂN SỰ CHUYÊN NGHIỆP TẠI HOÀNG LINH.',
    excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.',
    image: 'https://images.unsplash.com/photo-1522071820081-009f0129c71c?q=80&w=800' // Ảnh Team
  },
  {
    id: 5,
    title: 'TÒA NHÀ VĂN PHÒNG MỚI ĐI VÀO HOẠT ĐỘNG.',
    excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.',
    image: 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?q=80&w=800' // Ảnh Tòa nhà
  },
  {
    id: 6,
    title: 'MÙA VỤ LÚA MÌ BỘI THU NĂM 2025.',
    excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.',
    image: 'https://images.unsplash.com/photo-1574323347407-f5e1ad6d020b?q=80&w=800' // Ảnh Lúa mì
  },
]
</script>

<template>
  <div class="news-page">
    <div class="container">
      
      <section class="page-header">
        <h1 class="main-title">Tin tức</h1>
      </section>

      <section class="news-section">
        <div class="news-grid">
          
          <div v-for="item in newsList" :key="item.id" class="news-card">
            <div class="card-img">
              <img :src="item.image" :alt="item.title" />
            </div>
            
            <div class="card-body">
              <h3 class="news-title">
                <NuxtLink to="#">{{ item.title }}</NuxtLink>
              </h3>
              <p class="news-desc">
                {{ item.excerpt }}
              </p>
            </div>
          </div>

        </div>
      </section>

      <section class="load-more-section">
        <button class="btn-load-more">
          Tải thêm (6/60)
        </button>
      </section>

    </div>
  </div>
</template>

<style scoped>
/* --- CẤU HÌNH CHUNG --- */
.news-page {
  font-family: 'Roboto', sans-serif;
  color: #333;
  padding: 3rem 0 6rem 0;
  background-color: #fff;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

/* --- 1. HEADER --- */
.page-header {
  text-align: center;
  margin-bottom: 4rem;
}

.main-title {
  color: #3b5ba9; /* Màu xanh thương hiệu */
  font-size: 3rem;
  font-weight: 700;
  margin-bottom: 1rem;
}

/* --- 2. GRID TIN TỨC --- */
.news-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr); /* Chia 3 cột đều nhau */
  gap: 2.5rem; /* Khoảng cách giữa các ô */
  margin-bottom: 4rem;
}

/* Responsive: Tablet 2 cột, Mobile 1 cột */
@media (max-width: 992px) {
  .news-grid { grid-template-columns: repeat(2, 1fr); }
}
@media (max-width: 600px) {
  .news-grid { grid-template-columns: 1fr; }
}

/* --- CARD STYLE --- */
.news-card {
  display: flex;
  flex-direction: column;
}

.card-img {
  width: 100%;
  aspect-ratio: 1 / 1; /* Ép ảnh thành hình vuông giống ảnh mẫu */
  overflow: hidden;
  margin-bottom: 1.5rem;
}

.card-img img {
  width: 100%;
  height: 100%;
  object-fit: cover; /* Cắt ảnh vừa khung không bị méo */
  transition: transform 0.3s ease;
}

.card-img:hover img {
  transform: scale(1.05); /* Hiệu ứng zoom nhẹ khi di chuột */
}

.news-title {
  margin-bottom: 0.75rem;
  line-height: 1.4;
}

.news-title a {
  color: #3b5ba9;
  font-size: 1.1rem;
  font-weight: 800; /* Chữ đậm */
  text-transform: uppercase; /* Chữ in hoa */
  text-decoration: none;
  transition: color 0.2s;
}

.news-title a:hover {
  color: #2a4080;
}

.news-desc {
  font-size: 1rem;
  color: #333;
  line-height: 1.6;
  margin: 0;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  overflow: hidden;
}

/* --- 3. LOAD MORE BUTTON --- */
.load-more-section {
  text-align: center;
  margin-top: 2rem;
}

.btn-load-more {
  background-color: #3b5ba9;
  color: white;
  border: none;
  padding: 12px 40px;
  border-radius: 50px; /* Bo tròn dạng viên thuốc */
  font-size: 1rem;
  font-weight: 700;
  cursor: pointer;
  transition: background 0.3s;
}

.btn-load-more:hover {
  background-color: #2a4080;
}
</style>