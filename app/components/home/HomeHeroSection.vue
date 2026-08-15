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
          <NuxtLink to="/products/products" class="btn btn--primary">Sản phẩm</NuxtLink>
          <NuxtLink to="/contact" class="btn btn--outline">Liên hệ</NuxtLink>
        </div>
      </div>
    </div>
  </section>
</template>

<style lang="scss" scoped src="~/assets/scss/components/_home-hero.scss"></style>
