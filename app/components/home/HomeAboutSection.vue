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
            <p>Công ty TNHH Dịch vụ Thương mại Nông sản Hoàng Linh được thành lập vào năm 2017,
               bởi ông Nguyễn Tiến Đức và bà Đỗ Thị Thúy Hằng. Hiện nay, bà Đỗ Thị Thúy Hằng là 
               người đại diện pháp luật của công ty.</p>
            <p>Hoàng Linh hoạt động trong lĩnh vực kinh doanh nguyên liệu thức ăn chăn nuôi, 
              chuyên cung cấp nguồn nguyên liệu chất lượng cho các nhà máy sản xuất trên toàn khu vực miền Bắc Việt Nam.
              Với định hướng phát triển bền vững, công ty không ngừng mở rộng quy mô và nâng cao chất lượng dịch vụ nhằm 
              đáp ứng nhu cầu ngày càng cao của đối tác.</p>
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
    font-family: 'Montserrat', sans-serif;
    font-size: 32px;
    color: $color-blue;
    font-weight: 700;
    margin-bottom: 24px;
  }

  .text-content {
    font-family: 'Montserrat', sans-serif;
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
