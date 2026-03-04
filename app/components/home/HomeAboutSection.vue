<template>
  <section id="about" class="about-section">
    <div class="container">
      <div class="about-grid">
        <div class="about-image">
          <img src="https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?auto=format&fit=crop&q=80" alt="Nhà máy" />
        </div>
        
        <div class="about-content">
          <h2 class="section-title">Giới thiệu về công ty</h2>
          <div class="text-content">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean commodo ligula eget dolor.</p>
            <p>Với hệ thống kho bãi hiện đại, chúng tôi cam kết chất lượng tốt nhất.</p>
          </div>
          <NuxtLink to="/about" class="btn-main">Sản phẩm</NuxtLink>
        </div>
      </div>
    </div>
  </section>
</template>

<style lang="scss" scoped>
$color-blue: #2A4D9B;
$color-dark-blue: #1e3a8a;

.about-section {
  font-family: 'Montserrat', sans-serif;
  padding: 80px 0;
  background-color: #fff;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

.about-grid {
  display: grid;
  grid-template-columns: 1fr 1fr; /* Chia đôi màn hình */
  gap: 60px;
  align-items: center;
}

.about-image {
  border-radius: 12px;
  overflow: hidden;
  box-shadow: 0 10px 30px rgba(0,0,0,0.1);
  
  img {
    width: 100%;
    height: auto;
    display: block;
  }
}

.about-content {
  .section-title {
    font-size: 32px;
    color: $color-blue;
    font-weight: 700;
    margin-bottom: 24px;
  }

  .text-content {
    font-size: 16px;
    color: #555;
    line-height: 1.6;
    margin-bottom: 32px;
    text-align: justify;
  }
}

.btn-main {
  display: inline-block;
  background-color: $color-blue;
  color: #fff;
  padding: 12px 36px;
  border-radius: 30px;
  font-weight: 600;
  text-decoration: none;
  transition: background 0.3s;

  &:hover {
    background-color: $color-dark-blue;
  }
}

@media (max-width: 768px) {
  .about-grid {
    grid-template-columns: 1fr; /* Xếp chồng trên mobile */
    gap: 30px;
  }
}
</style>
