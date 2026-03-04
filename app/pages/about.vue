<script setup lang="ts">
useHead({
  title: 'Về công ty - Hoàng Linh Group',
})
</script>

<template>
  <div class="about-page">
    
    <div class="hero-banner">
      <img src="https://images.unsplash.com/photo-1565514020176-db7621c1f727?q=80&w=2000" alt="Nhà máy Hoàng Linh" />
      <div class="hero-overlay">
        <h1>Về công ty</h1>
      </div>
    </div>

    <div class="main-container">
      
      <section class="values-section">
        <div class="values-grid">
          
          <div class="value-col">
            <h3>Tầm nhìn</h3>
            <p>
              Trở thành đơn vị hàng đầu trong lĩnh vực cung cấp nguyên liệu thức ăn chăn nuôi tại Việt Nam. Xây dựng hệ sinh thái nông nghiệp bền vững.
            </p>
          </div>

          <div class="value-col">
            <h3>Sứ mệnh</h3>
            <p>
              Cung cấp các sản phẩm chất lượng cao, an toàn và hiệu quả kinh tế. Đồng hành cùng nhà nông làm giàu, góp phần phát triển nền nông nghiệp.
            </p>
          </div>

          <div class="value-col">
            <h3>Giá trị cốt lõi</h3>
            <p>
              <strong>Uy tín:</strong> Luôn đặt chữ tín lên hàng đầu.<br>
              <strong>Chất lượng:</strong> Cam kết sản phẩm tốt nhất.<br>
              <strong>Tận tâm:</strong> Phục vụ khách hàng bằng cả trái tim.
            </p>
          </div>

        </div>
      </section>

      <section class="team-section">
        <div class="two-col-grid">
          <div class="team-img-wrapper">
            <img src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?q=80&w=1000" alt="Team văn phòng" />
          </div>
          <div class="team-content">
            <h2>Đội ngũ nhân sự chuyên nghiệp</h2>
            <p>
              Với đội ngũ nhân viên giàu kinh nghiệm và nhiệt huyết, Hoàng Linh luôn sẵn sàng hỗ trợ khách hàng mọi lúc mọi nơi.
            </p>
          </div>
        </div>
      </section>

      <section class="history-section">
        <h2 class="section-title">Lịch sử hình thành</h2>

        <div class="two-col-grid">
          <div class="history-timeline">
            <div class="timeline-item">
              <span class="year">2010</span>
              <p>Thành lập công ty với quy mô nhỏ.</p>
            </div>
            <div class="timeline-item">
              <span class="year">2015</span>
              <p>Mở rộng quy mô nhà xưởng xuất khẩu.</p>
            </div>
            <div class="timeline-item">
              <span class="year">2025</span>
              <p>Hướng tới phát triển bền vững toàn cầu.</p>
            </div>
          </div>

          <div class="history-img-wrapper">
            <img src="https://images.unsplash.com/photo-1484557985045-6f5c5e2a10f5?q=80&w=1000" alt="Đàn cừu" />
          </div>
        </div>
      </section>

    </div>
  </div>
</template>

<style scoped>
/* CẤU HÌNH CONTAINER CHUNG */
.main-container {
  max-width: 1200px;
  margin: 0 auto; /* Căn giữa màn hình */
  padding: 0 20px; /* Cách lề trái phải 20px */
}

.about-page {
  font-family: 'Montserrat', sans-serif;
  color: #333;
  padding-bottom: 6rem;
}

/* --- 1. HERO BANNER --- */
.hero-banner {
  position: relative;
  height: 400px;
  width: 100%;
}
.hero-banner img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}
.hero-overlay {
  position: absolute;
  top: 0; left: 0; right: 0; bottom: 0;
  background: rgba(0, 0, 0, 0.4);
  display: flex;
  align-items: center;
  justify-content: center;
}
.hero-overlay h1 {
  color: white;
  font-size: 3rem;
  font-weight: 700;
  text-transform: uppercase;
}

/* --- 2. VALUES SECTION (QUAN TRỌNG: FIX LỖI CHIA CỘT) --- */
.values-section {
  padding: 5rem 0;
}

/* Đây là Class xử lý chia 3 cột bằng Grid thủ công */
.values-grid {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr; /* Chia thành 3 phần bằng nhau */
  gap: 3rem; /* Khoảng cách giữa các cột */
}

/* Responsive: Trên điện thoại thì quay về 1 cột */
@media (max-width: 768px) {
  .values-grid {
    grid-template-columns: 1fr;
  }
}

.value-col {
  text-align: center; /* Căn giữa nội dung trong cột */
  padding: 1rem;
}

.value-col h3 {
  color: #2c4a9e;
  font-size: 1.5rem;
  font-weight: 700;
  margin-bottom: 1rem;
}

/* --- 3 & 4. LAYOUT 2 CỘT CHUNG (Team & History) --- */
.two-col-grid {
  display: grid;
  grid-template-columns: 1fr 1fr; /* Chia đôi 50-50 */
  gap: 4rem;
  align-items: center;
  margin-bottom: 4rem;
}
@media (max-width: 768px) {
  .two-col-grid {
    grid-template-columns: 1fr;
  }
}

.team-img-wrapper img, 
.history-img-wrapper img {
  width: 100%;
  border-radius: 8px;
  height: auto;
}

.history-img-wrapper img {
    height: 100%;
    min-height: 400px;
    object-fit: cover;
}

/* --- TEXT STYLES --- */
.section-title {
  color: #2c4a9e;
  font-size: 2rem;
  font-weight: 700;
  margin-bottom: 2rem;
}

.timeline-item {
  margin-bottom: 2rem;
}
.timeline-item .year {
  display: block;
  color: #2c4a9e;
  font-size: 1.8rem;
  font-weight: bold;
}
</style>