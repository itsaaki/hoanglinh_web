<script setup lang="ts">
// Logic nếu cần
</script>

<template>
  <section id="home" class="hero">
    <div class="hero__bg">
      <img src="https://images.unsplash.com/photo-1546445317-29f4545e9d53?q=80&w=2000" alt="Background" />
      <div class="hero__overlay"></div>
    </div>

    <div class="container">
      <div class="hero__content">
        <h1 class="hero__title">
          Công ty TNHH Dịch vụ <br />
          thương mại nông sản <br />
          <span class="highlight">Hoàng Linh</span>
        </h1>
        <p class="hero__desc">
          Phân phối nguyên liệu thức ăn chăn nuôi (bã bia, bã sắn, bột cá, khô đậu tương, ngô hạt, lúa mì, mỡ cá, cám mì...)
        </p>

        <div class="hero__actions">
          <NuxtLink to="/products" class="btn btn--primary">Sản phẩm</NuxtLink>
          <NuxtLink to="/contact" class="btn btn--outline">Liên hệ</NuxtLink>
        </div>
      </div>
    </div>
  </section>
</template>

<style lang="scss" scoped>
/* Variables */
$color-blue: #2A4D9B;
$color-yellow: #F4B23E;
$color-white: #ffffff;

.hero {
  font-family: 'Montserrat', sans-serif;
  position: relative;
  height: 600px;
  display: flex;
  align-items: center;
  color: $color-white;

  &__bg {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 0;

    img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    /* Gradient làm tối ảnh để chữ nổi bật */
    .hero__overlay {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: linear-gradient(90deg, rgba($color-blue, 0.9) 0%, rgba($color-blue, 0.4) 50%, transparent 100%);
    }
  }

  .container {
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    position: relative;
    z-index: 10; /* Đưa nội dung lên trên lớp nền */
  }

  &__content {
    max-width: 600px;
  }

  &__title {
    font-size: 48px;
    font-weight: 700;
    line-height: 1.2;
    margin-bottom: 20px;

    .highlight {
      color: $color-yellow;
    }
  }

  &__desc {
    font-size: 18px;
    line-height: 1.5;
    margin-bottom: 32px;
    opacity: 0.9;
  }

  &__actions {
    display: flex;
    gap: 16px;
  }
}

/* Button Styles (Reusable) */
.btn {
  display: inline-block;
  padding: 12px 32px;
  border-radius: 50px;
  font-weight: 700;
  text-decoration: none;
  transition: all 0.3s ease;
  cursor: pointer;

  &--primary {
    background-color: $color-white;
    color: $color-blue;
    &:hover { background-color: #f0f0f0; }
  }

  &--outline {
    border: 2px solid $color-white;
    color: $color-white;
    &:hover { background-color: rgba(255,255,255, 0.1); }
  }
}

/* Mobile Responsive */
@media (max-width: 768px) {
  .hero {
    height: auto;
    padding: 60px 0;
    
    &__title { font-size: 32px; }
    &__desc { font-size: 16px; }
  }
}
</style>