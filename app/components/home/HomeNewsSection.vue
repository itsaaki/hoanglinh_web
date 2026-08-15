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
        <NuxtLink to="/news/news" class="btn-primary">Xem thêm</NuxtLink>
      </div>
    </div>
  </section>
</template>

<style lang="scss" scoped src="~/assets/scss/components/_home-news.scss"></style>
