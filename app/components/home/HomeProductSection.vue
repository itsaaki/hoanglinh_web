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
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
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
        <NuxtLink to="/products" class="btn-outline">Xem thêm</NuxtLink>
      </div>
    </div>
  </section>
</template>

<style lang="scss" scoped>
$color-blue: #2A4D9B;
$color-yellow: #F4B23E;
$color-white: #fff;

.product-section {
  font-family: 'Montserrat', sans-serif;
  background-color: $color-blue; /* Nền xanh toàn màn hình */
  padding: 80px 0;
  color: $color-white;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

.section-header {
  text-anchor: center;
  margin-bottom: 60px;

  h2 {
    font-size: 36px;
    font-weight: 700;
    margin-bottom: 16px;
  }
  p { opacity: 0.8; }
}

.product-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr); /* 4 cột */
  gap: 30px;
  margin-bottom: 50px;
}

.product-item {
  display: flex;
  justify-content: center;
  
  .circle-img {
    width: 200px;
    height: 200px;
    border-radius: 50%; /* Làm tròn ảnh */
    overflow: hidden;
    position: relative;
    border: 4px solid rgba(255,255,255, 0.2);
    transition: all 0.4s ease;
    cursor: pointer;

    img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.5s ease;
    }

    /* Hiệu ứng Hover */
    &:hover {
      border-color: $color-yellow;
      
      img { transform: scale(1.1); }
    }

    .product-name {
      position: absolute;
      bottom: 20px;
      left: 0;
      width: 100%;
      text-align: center;
      font-weight: 700;
      font-size: 18px;
      text-shadow: 0 2px 4px rgba(0,0,0,0.5);
      z-index: 2;
    }
    
    .overlay {
      position: absolute;
      inset: 0;
      background: linear-gradient(to top, rgba(0,0,0,0.6), transparent);
    }
  }
}

.section-footer { text-align: center; }

.btn-outline {
  display: inline-block;
  border: 1px solid $color-white;
  color: $color-white;
  padding: 10px 40px;
  border-radius: 30px;
  text-decoration: none;
  font-weight: 600;
  transition: all 0.3s;

  &:hover {
    background-color: $color-white;
    color: $color-blue;
  }
}

@media (max-width: 992px) {
  .product-grid { grid-template-columns: repeat(2, 1fr); } /* Tablet 2 cột */
}
@media (max-width: 576px) {
  .product-grid { grid-template-columns: 1fr; } /* Mobile 1 cột */
}
</style>