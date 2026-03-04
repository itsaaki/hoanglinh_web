<script setup lang="ts">
const news = [
  { id: 1, title: 'Thị trường nông sản tuần qua', img: 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab', summary: 'Giá ngô và khô đậu tương biến động mạnh...' },
  { id: 2, title: 'Mở rộng kho bãi Hải Phòng', img: 'https://images.unsplash.com/photo-1556761175-5973dc0f32e7', summary: 'Nâng cao năng lực lưu trữ và vận chuyển...' },
  { id: 3, title: 'Hội nghị khách hàng 2026', img: 'https://images.unsplash.com/photo-1517048676732-d65bc937f952', summary: 'Tri ân đối tác đã đồng hành cùng Hoàng Linh...' },
]
</script>

<template>
  <section id="news" class="news-section">
    <div class="container">
      <h2 class="section-title">Tin tức nổi bật</h2>
      
      <div class="news-grid">
        <article v-for="item in news" :key="item.id" class="news-card">
          <div class="card-img">
            <img :src="item.img" :alt="item.title" />
          </div>
          <div class="card-body">
            <h3 class="card-title">{{ item.title }}</h3>
            <p class="card-summary">{{ item.summary }}</p>
          </div>
        </article>
      </div>

      <div class="center-btn">
        <NuxtLink to="/news" class="btn-primary">Xem thêm</NuxtLink>
      </div>
    </div>
  </section>
</template>

<style lang="scss" scoped>
$color-blue: #2A4D9B;
$text-color: #333;

.news-section {
  font-family: 'Montserrat', sans-serif;
  padding: 80px 0;
  background-color: #f9fafb;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

.section-title {
  font-size: 32px;
  font-weight: 700;
  color: $color-blue;
  margin-bottom: 40px;
}

.news-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 30px;
  margin-bottom: 40px;
}

.news-card {
  background: #fff;
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 4px 6px rgba(0,0,0,0.05);
  transition: transform 0.3s;

  &:hover {
    transform: translateY(-5px); /* Nổi lên khi hover */
    box-shadow: 0 10px 15px rgba(0,0,0,0.1);
    
    .card-title { color: $color-blue; }
  }

  .card-img {
    height: 200px;
    img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
  }

  .card-body {
    padding: 20px;
  }

  .card-title {
    font-size: 18px;
    font-weight: 700;
    margin-bottom: 10px;
    color: $text-color;
    transition: color 0.2s;
    
    /* Cắt dòng nếu tiêu đề quá dài */
    display: -webkit-box;
    -webkit-line-clamp: 2;
    line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
  }

  .card-summary {
    font-size: 14px;
    color: #666;
    line-height: 1.5;
  }
}

.center-btn { text-align: center; }

.btn-primary {
  display: inline-block;
  background-color: $color-blue;
  color: #fff;
  padding: 10px 30px;
  border-radius: 25px;
  text-decoration: none;
  font-weight: 600;
  
  &:hover { background-color: #1e3a8a; }
}

@media (max-width: 992px) {
  .news-grid { grid-template-columns: repeat(2, 1fr); }
}
@media (max-width: 600px) {
  .news-grid { grid-template-columns: 1fr; }
}
</style>