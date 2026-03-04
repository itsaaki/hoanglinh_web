<script setup lang="ts">
import { useHead } from 'nuxt/app';

// SEO Meta tags
useHead({
  title: 'Trang chủ - Công ty TNHH Dịch vụ Thương mại Nông sản Hoàng Linh',
  meta: [
    { name: 'description', content: 'Chuyên phân phối nguyên liệu thức ăn chăn nuôi: Bã bia, bã sắn, bột cá...' }
  ]
})
</script>

<template>
  <div class="home-page">
    <HomeHeroSection />     <HomeAboutSection />
    <HomeProductSection />
    <HomeNewsSection />
  </div>
</template>
