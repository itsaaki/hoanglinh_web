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

<style lang="scss" scoped src="~/assets/scss/pages/_products.scss"></style>