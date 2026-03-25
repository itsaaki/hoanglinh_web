<script setup lang="ts">
import { computed } from 'vue'
import { useRoute } from 'vue-router'

const route = useRoute()
// Lấy ID từ trên thanh địa chỉ URL
const articleId = route.params.id

// Dữ liệu bài viết giả lập (Bạn sẽ thay bằng gọi API thực tế sau này)
const article = {
  title: 'PROIN VITAE LIGULA RHONCUS, ALIQUET METUS SED, ACCUMSAN MI. VESTIBULUM IMPERDIET PORTTITOR BIBENDUM.',
  date: 'Thứ 6, 5/9/2025, 20:39 (GMT 7+)',
  lead: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan purus in lorem tristique ullamcorper vehicula condimentum ante. Duis convallis hendrerit nunc a accumsan. Suspendisse potenti. Phasellus eros nunc, venenatis nec facilisis sit amet, mattis a augue.',
  image: 'https://images.unsplash.com/photo-1484557985045-6f5c5e2a10f5?q=80&w=1000',
  contentParagraphs: [
    'Ut sodales commodo quam, suscipit accumsan lectus interdum non. Maecenas a congue metus. Praesent volutpat porttitor luctus. Phasellus vestibulum venenatis felis rhoncus tempor. Suspendisse dictum erat sit amet tortor commodo viverra. Quisque nec ullamcorper purus, et luctus erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
    'Duis leo risus, bibendum sed accumsan nec, vulputate vitae risus. In imperdiet consequat magna, in ultrices nunc vestibulum posuere. Phasellus feugiat iaculis tortor, non blandit lacus lobortis vel. Fusce eget arcu fringilla, tristique dolor a, luctus ante. Praesent facilisis metus a purus egestas, in auctor augue pharetra. Cras efficitur sapien libero, a fermentum orci hendrerit in.',
    'Ut efficitur diam eget nunc ornare scelerisque. Donec porttitor commodo diam eget dictum. Pellentesque aliquet lectus eget elementum porta. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent id vulputate mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
    'Vestibulum venenatis, nulla et iaculis mollis, lectus eros ultrices sem, sit amet lobortis diam lacus sit amet lectus. Donec lacinia sapien nec nulla iaculis eleifend sit amet ut turpis. Suspendisse id lectus eget velit gravida dictum sit amet quis ligula. Donec faucibus et orci a lobortis.'
  ],
  author: 'Tên Tác Giả'
}

// Dữ liệu bài viết liên quan
const relatedNews = [
  {
    id: 4,
    title: 'PROIN VITAE LIGULA RHONCUS, ALIQUET METUS SED, ACCUMSAN MI.',
    excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.',
    image: 'https://images.unsplash.com/photo-1522071820081-009f0129c71c?q=80&w=500' 
  },
  {
    id: 5,
    title: 'PROIN VITAE LIGULA RHONCUS, ALIQUET METUS SED, ACCUMSAN MI.',
    excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.',
    image: 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?q=80&w=500' 
  },
  {
    id: 6,
    title: 'PROIN VITAE LIGULA RHONCUS, ALIQUET METUS SED, ACCUMSAN MI.',
    excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.',
    image: 'https://images.unsplash.com/photo-1574323347407-f5e1ad6d020b?q=80&w=500' 
  }
]

// Icons chia sẻ MXH
const shareIcons = [
  { icon: 'i-simple-icons-facebook', url: '#' },
  { icon: 'i-simple-icons-youtube', url: '#' },
  { icon: 'i-simple-icons-tiktok', url: '#' },
  { icon: 'i-heroicons-chat-bubble-left-ellipsis-solid', url: '#' }
]

useHead({
  title: `${article.title.substring(0, 50)}... - Hoàng Linh Group`,
})
</script>

<template>
  <div class="article-detail-page">
    
    <div class="reading-container">
      
      <div class="article-meta-header">
        <div class="breadcrumb">
          <NuxtLink to="/home">Trang chủ</NuxtLink>
          <span class="separator">/</span>
          <NuxtLink to="/news/news">Tin tức</NuxtLink>
        </div>
        <div class="publish-date">
          {{ article.date }}
        </div>
      </div>

      <h1 class="article-title">{{ article.title }}</h1>

      <p class="article-lead">{{ article.lead }}</p>

      <p class="article-paragraph">{{ article.contentParagraphs[0] }}</p>

      <div class="article-main-image">
        <img :src="article.image" :alt="article.title" />
      </div>

      <div class="article-body">
        <p v-for="(paragraph, index) in article.contentParagraphs.slice(1)" :key="index" class="article-paragraph">
          {{ paragraph }}
        </p>
      </div>

      <div class="article-footer">
        <div class="social-share">
          <a v-for="(social, index) in shareIcons" :key="index" :href="social.url" class="share-btn">
            <UIcon :name="social.icon" class="w-5 h-5" />
          </a>
        </div>
        <div class="author-name">
          {{ article.author }}
        </div>
      </div>

    </div>

    <div class="related-container">
      <h2 class="related-heading">BÀI VIẾT LIÊN QUAN</h2>
      
      <div class="related-grid">
        <div v-for="item in relatedNews" :key="item.id" class="news-card">
          <div class="card-img">
            <NuxtLink :to="`/news/${item.id}`">
              <img :src="item.image" :alt="item.title" />
            </NuxtLink>
          </div>
          <div class="card-body">
            <h3 class="news-title">
              <NuxtLink :to="`/news/${item.id}`">{{ item.title }}</NuxtLink>
            </h3>
            <p class="news-desc">{{ item.excerpt }}</p>
          </div>
        </div>
      </div>
    </div>

  </div>
</template>

<style scoped>
/* --- CẤU HÌNH CHUNG --- */
.article-detail-page {
  font-family: 'Montserrat', sans-serif;
  color: #333;
  padding: 3rem 0 6rem 0;
  background-color: #fff;
}

/* Container dành riêng cho việc đọc (hẹp hơn để tối ưu thị giác) */
.reading-container {
  max-width: 800px;
  margin: 0 auto;
  padding: 0 20px;
}

/* Container cho bài viết liên quan (rộng hơn chút) */
.related-container {
  max-width: 1000px;
  margin: 4rem auto 0;
  padding: 0 20px;
  border-top: 1px solid #e5e7eb;
  padding-top: 3rem;
}

/* --- 1. META HEADER --- */
.article-meta-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  font-size: 0.9rem;
  color: #3b5ba9; /* Màu xanh đặc trưng */
  margin-bottom: 2rem;
  font-weight: 500;
}

.breadcrumb a {
  color: #3b5ba9;
  text-decoration: none;
}
.breadcrumb a:hover {
  text-decoration: underline;
}
.separator {
  margin: 0 0.5rem;
  color: #9ca3af;
}

@media (max-width: 600px) {
  .article-meta-header {
    flex-direction: column;
    align-items: flex-start;
    gap: 0.5rem;
  }
}

/* --- 2. TIÊU ĐỀ CHÍNH --- */
.article-title {
  color: #3b5ba9;
  font-size: 2.2rem;
  font-weight: 800;
  text-transform: uppercase;
  line-height: 1.3;
  margin-bottom: 1.5rem;
}

/* --- 3 & 4. NỘI DUNG BÀI VIẾT --- */
.article-lead {
  font-size: 1.05rem;
  font-weight: 600; /* In đậm nhẹ phần mở đầu */
  line-height: 1.7;
  color: #333;
  margin-bottom: 1.5rem;
  text-align: justify;
}

.article-paragraph {
  font-size: 1.05rem;
  line-height: 1.8; /* Dãn dòng rộng rãi để dễ đọc */
  color: #333;
  margin-bottom: 1.5rem;
  text-align: justify; /* Căn đều 2 bên giống văn bản chuyên nghiệp */
}

/* --- 5. ẢNH BÀI VIẾT --- */
.article-main-image {
  margin: 2.5rem 0;
  border-radius: 4px;
  overflow: hidden;
}

.article-main-image img {
  width: 100%;
  height: auto;
  display: block;
}

/* --- 7. CHÂN BÀI VIẾT (SOCIAL & AUTHOR) --- */
.article-footer {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-top: 3rem;
  padding-top: 2rem;
}

.social-share {
  display: flex;
  gap: 10px;
}

.share-btn {
  width: 35px;
  height: 35px;
  background-color: #3b5ba9;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  transition: transform 0.3s;
}

.share-btn:hover {
  transform: translateY(-3px);
  background-color: #2a4080;
}

.author-name {
  font-weight: 800;
  font-size: 1.1rem;
  color: #333;
}

/* --- BÀI VIẾT LIÊN QUAN --- */
.related-heading {
  color: #3b5ba9;
  font-size: 1.5rem;
  font-weight: 800;
  text-transform: uppercase;
  margin-bottom: 2rem;
}

.related-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 2rem;
}

@media (max-width: 768px) {
  .related-grid { grid-template-columns: repeat(2, 1fr); }
}
@media (max-width: 500px) {
  .related-grid { grid-template-columns: 1fr; }
}

.news-card {
  display: flex;
  flex-direction: column;
}

.card-img {
  width: 100%;
  aspect-ratio: 1 / 1;
  overflow: hidden;
  margin-bottom: 1rem;
}

.card-img img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s;
}

.card-img:hover img {
  transform: scale(1.05);
}

.news-title {
  margin-bottom: 0.5rem;
  line-height: 1.4;
}

.news-title a {
  color: #3b5ba9;
  font-size: 1rem;
  font-weight: 800;
  text-transform: uppercase;
  text-decoration: none;
}

.news-title a:hover {
  color: #2a4080;
}

.news-desc {
  font-size: 0.95rem;
  color: #555;
  line-height: 1.5;
  margin: 0;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  overflow: hidden;
}
</style>