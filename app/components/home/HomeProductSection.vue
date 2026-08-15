<script setup lang="ts">
const products = [
  { name: 'Bã bia', img: 'https://images.unsplash.com/photo-1626127838202-6e273f089856' },
  { name: 'Bã sắn', img: 'https://images.unsplash.com/photo-1615485925694-a03126938a95' },
  { name: 'Khô đậu tương', img: 'https://images.unsplash.com/photo-1574323347407-f5e1ad6d020b' },
  { name: 'Bột cá', img: 'https://images.unsplash.com/photo-1534341777073-10d656024971' },
]
</script>

<template>
  <section id="products" class="product-section">
    <div class="container">
      <div class="section-header">
        <h2>Các sản phẩm chủ lực</h2>
        <p>Chúng tôi cung cấp đa dạng nguyên liệu thức ăn chăn nuôi chất lượng cao, nguồn cung ổn định, 
          đáp ứng nhu cầu sản xuất quy mô lớn của các nhà máy tại miền Bắc.</p>
      </div>

      <div class="product-grid">
        <div v-for="(item, index) in products" :key="index" class="product-item">
          <div class="circle-img">
            <img :src="item.img" :alt="item.name" />
            <div class="overlay"></div>
            <span class="product-name">{{ item.name }}</span>
          </div>
        </div>
      </div>

      <div class="section-footer">
        <NuxtLink to="/products/products" class="btn-outline">Xem thêm</NuxtLink>
      </div>
    </div>
  </section>
</template>

<style lang="scss" scoped src="~/assets/scss/components/_home-product.scss"></style>
