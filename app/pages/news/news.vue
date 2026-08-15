<script setup lang="ts">
import { ref, computed } from 'vue'

useHead({
  title: 'Tin tức - Hoàng Linh Group',
})

// Mảng chứa TOÀN BỘ bài viết (Mình đã thêm 3 bài nữa để test load more thành 9 bài)
const allNews = [
  { id: 1, title: 'PROIN VITAE LIGULA RHONCUS, ALIQUET METUS SED, ACCUMSAN MI.', excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.', image: 'https://images.unsplash.com/photo-1548550023-2bdb3c5beed7?q=80&w=800' },
  { id: 2, title: 'VESTIBULUM IMPERDIET PORTTITOR BIBENDUM.', excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.', image: 'https://images.unsplash.com/photo-1548550023-2bdb3c5beed7?q=80&w=800' },
  { id: 3, title: 'VESTIBULUM MOLLIS, LEO SED RUTRUM MATTIS.', excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.', image: 'https://images.unsplash.com/photo-1546445317-29f4545e9d53?q=80&w=800' },
  { id: 4, title: 'ĐỘI NGŨ NHÂN SỰ CHUYÊN NGHIỆP TẠI HOÀNG LINH.', excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.', image: 'https://images.unsplash.com/photo-1522071820081-009f0129c71c?q=80&w=800' },
  { id: 5, title: 'TÒA NHÀ VĂN PHÒNG MỚI ĐI VÀO HOẠT ĐỘNG.', excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.', image: 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?q=80&w=800' },
  { id: 6, title: 'MÙA VỤ LÚA MÌ BỘI THU NĂM 2025.', excerpt: 'Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.', image: 'https://images.unsplash.com/photo-1574323347407-f5e1ad6d020b?q=80&w=800' },
  { id: 7, title: 'HỘI NGHỊ KHÁCH HÀNG THƯỜNG NIÊN 2025.', excerpt: 'Cùng nhìn lại những chặng đường đã qua và định hướng phát triển trong tương lai của Hoàng Linh Group.', image: 'https://images.unsplash.com/photo-1505373877841-8d25f7d46678?q=80&w=800' },
  { id: 8, title: 'CÔNG NGHỆ CHẾ BIẾN NÔNG SẢN HIỆN ĐẠI.', excerpt: 'Áp dụng các công nghệ mới nhất vào dây chuyền sản xuất giúp nâng cao chất lượng sản phẩm.', image: 'https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?q=80&w=800' },
  { id: 9, title: 'XUẤT KHẨU LÔ HÀNG ĐẦU TIÊN SANG CHÂU ÂU.', excerpt: 'Đánh dấu cột mốc quan trọng trong việc đưa nông sản Việt Nam vươn tầm quốc tế.', image: 'https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?q=80&w=800' },
]

// Số lượng bài viết hiển thị mặc định ban đầu
const visibleCount = ref(6)

// Số lượng bài viết muốn tải thêm mỗi lần bấm
const itemsToLoad = 3

// Danh sách bài viết ĐANG ĐƯỢC HIỂN THỊ (Cắt từ mảng allNews dựa trên visibleCount)
const displayedNews = computed(() => {
  return allNews.slice(0, visibleCount.value)
})

// Kiểm tra xem còn bài viết để tải không (Ẩn nút tải thêm nếu đã hết bài)
const hasMoreNews = computed(() => {
  return visibleCount.value < allNews.length
})

// Hàm xử lý khi bấm nút "Tải thêm"
const loadMore = () => {
  if (hasMoreNews.value) {
    visibleCount.value += itemsToLoad
  }
}
</script>

<template>
  <div class="news-page">
    <div class="container">
      
      <section class="page-header">
        <h1 class="main-title">Tin tức</h1>
      </section>

      <section class="news-section">
        <div class="news-grid">
          
          <!-- SỬA Ở ĐÂY: Dùng displayedNews thay vì newsList -->
          <div v-for="item in displayedNews" :key="item.id" class="news-card">
            <div class="card-img">
              <NuxtLink :to="`/news/${item.id}`">
                <img :src="item.image" :alt="item.title" />
              </NuxtLink>
            </div>
            
            <div class="card-body">
              <h3 class="news-title">
                <NuxtLink :to="`/news/${item.id}`">{{ item.title }}</NuxtLink>
              </h3>
              <p class="news-desc">
                {{ item.excerpt }}
              </p>
            </div>
          </div>

        </div>
      </section>

      <!-- SỬA Ở ĐÂY: Thêm v-if để ẩn nút khi hết bài, thêm @click để gọi hàm -->
      <section class="load-more-section" v-if="hasMoreNews">
        <button class="btn-load-more" @click="loadMore">
          Tải thêm ({{ displayedNews.length }}/{{ allNews.length }})
        </button>
      </section>

    </div>
  </div>
</template>

<style lang="scss" scoped src="~/assets/scss/pages/_news.scss"></style>
