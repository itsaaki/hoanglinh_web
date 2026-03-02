<script setup lang="ts">
const route = useRoute()
const slug = route.params.slug

// Giả lập Database (Thực tế bạn sẽ gọi API ở đây)
const productsDB = [
  {
    slug: 'ba-san',
    name: 'Bã sắn',
    image: 'https://images.unsplash.com/photo-1615485500704-8e99099928b3?q=80&w=800',
    description: 'Proin vitae ligula rhoncus, aliquet metus sed, accumsan mi. Vestibulum imperdiet porttitor bibendum. Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit.',
    specs: [
      { label: 'Đạm', value: '3g' },
      { label: 'Chất béo', value: '0g' },
      { label: 'Tinh bột', value: '20g' },
      { label: 'Chất xơ', value: '10g' },
    ]
  },
  {
    slug: 'ba-bia',
    name: 'Bã bia',
    image: 'https://images.unsplash.com/photo-1580910051074-3eb6948d3ea4?q=80&w=800',
    description: 'Sản phẩm phụ từ quá trình sản xuất bia, giàu protein và vitamin, rất tốt cho chăn nuôi bò sữa.',
    specs: [
      { label: 'Đạm thô', value: '28%' },
      { label: 'Độ ẩm', value: '10%' },
      { label: 'Xơ thô', value: '15%' },
    ]
  },
  // ... Bạn có thể thêm các sản phẩm khác vào đây, nếu không tìm thấy sẽ hiện mặc định
]

// Tìm sản phẩm dựa trên slug trên đường dẫn
const product = computed(() => {
  return productsDB.find(p => p.slug === slug) || productsDB[0] // Mặc định lấy cái đầu nếu ko thấy
})

const relatedProducts = [
  { name: 'Bã bia', slug: 'ba-bia', image: 'https://images.unsplash.com/photo-1580910051074-3eb6948d3ea4?q=80&w=500' },
  { name: 'Khô đậu tương', slug: 'kho-dau-tuong', image: 'https://images.unsplash.com/photo-1620916566398-39f1143ab7be?q=80&w=500' },
  { name: 'Bột cá', slug: 'bot-ca', image: 'https://plus.unsplash.com/premium_photo-1675844477864-469d7b433436?q=80&w=500' },
  { name: 'Ngô hạt', slug: 'ngo-hat', image: 'https://images.unsplash.com/photo-1551754655-cd27e38d2076?q=80&w=500' },
]

useHead({
  title: computed(() => `${product.value?.name || 'Sản phẩm'} - Chi tiết sản phẩm`),
})
</script>

<template>
  <div class="product-detail-page">
    <div class="container">
      
      <section v-if="product" class="detail-header">
        <h1 class="product-title">{{ product.name }}</h1>
        
        <div class="product-main-image">
          <img :src="product.image" :alt="product.name" />
        </div>

        <p class="product-intro">
          {{ product.description }}
        </p>
      </section>

      <section class="specs-section">
        <h2 class="section-heading">THÔNG SỐ KĨ THUẬT</h2>
        <p class="sub-text">Thành phần: [{{ product?.name }} xay nguyên chất 100%]</p>
        <p class="sub-text">Hàm lượng dinh dưỡng (trong 100g)</p>

        <div class="specs-table">
          <div v-for="(spec, index) in product?.specs" :key="index" class="spec-row">
            <span class="spec-label">{{ spec.label }}</span>
            <span class="spec-value">{{ spec.value }}</span>
          </div>
        </div>
      </section>

      <section class="usage-section">
        <h2 class="section-heading">CÔNG DỤNG</h2>
        <p class="usage-text">
          Proin vitae ligula rhoncus, aliquet metus sed, accumsan mi. Vestibulum imperdiet porttitor bibendum. Vestibulum mollis, leo sed rutrum mattis, arcu mi vulputate nulla, et eleifend turpis tellus et elit. Proin maximus, lectus et vulputate dignissim, tortor quam fermentum massa, eget pharetra turpis lorem ac ex.
        </p>
      </section>

      <section class="related-section">
        <h2 class="section-heading text-center">CÁC SẢN PHẨM KHÁC</h2>
        
        <div class="related-grid">
          <div v-for="(item, index) in relatedProducts" :key="index" class="related-item">
            <NuxtLink :to="`/san-pham/${item.slug}`" class="circle-mini">
              <img :src="item.image" :alt="item.name" />
              <div class="overlay"></div>
              <h4 class="mini-name">{{ item.name }}</h4>
            </NuxtLink>
          </div>
        </div>
      </section>

      <section v-if="product" class="cta-section">
        <h2 class="cta-title">Mua sản phẩm của chúng tôi</h2>
        <p class="cta-desc">
          Liên hệ ngay để được tư vấn chi tiết về sản phẩm {{ product.name }}
        </p>
        <NuxtLink to="#contact" class="btn-contact">
          Liên hệ
        </NuxtLink>
      </section>

    </div>
  </div>
</template>

<style scoped>
/* CONTAINER CHUNG */
.product-detail-page {
  font-family: 'Roboto', sans-serif;
  color: #333;
  padding: 3rem 0 5rem 0;
  background-color: #fff;
}
.container {
  max-width: 900px; /* Giới hạn chiều rộng để giống văn bản trong ảnh */
  margin: 0 auto;
  padding: 0 20px;
}

/* 1. HEADER & ẢNH */
.detail-header { text-align: center; margin-bottom: 4rem; }
.product-title {
  color: #3b5ba9;
  font-size: 2.5rem;
  font-weight: 800;
  margin-bottom: 2rem;
  text-transform: capitalize;
}
.product-main-image {
  margin-bottom: 2rem;
  display: flex;
  justify-content: center;
}
.product-main-image img {
  max-width: 100%;
  max-height: 400px;
  border-radius: 4px;
  object-fit: cover;
}
.product-intro {
  color: #555;
  line-height: 1.6;
  text-align: justify;
}

/* 2. SPECIFICATION (Bảng thông số) */
.specs-section { margin-bottom: 4rem; }
.section-heading {
  color: #333; /* Hoặc #3b5ba9 tùy ảnh */
  font-size: 1.8rem;
  font-weight: 400; /* Font mỏng giống ảnh */
  margin-bottom: 1.5rem;
  text-transform: uppercase;
}
.text-center { text-align: center; }
.sub-text { margin-bottom: 0.5rem; color: #555; }

.specs-table {
  margin-top: 2rem;
  border-top: 1px solid #333; /* Đường kẻ trên cùng nếu cần */
}
.spec-row {
  display: flex;
  justify-content: space-between;
  padding: 1rem 0;
  border-bottom: 1px solid #333; /* Đường kẻ ngang phân cách */
}
.spec-label, .spec-value {
  font-size: 1rem;
  color: #333;
}

/* 3. USAGE */
.usage-section { margin-bottom: 4rem; }
.usage-text { color: #555; line-height: 1.6; text-align: justify; }

/* 4. RELATED PRODUCTS */
.related-section { margin-bottom: 4rem; }
.related-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 2rem;
  margin-top: 2rem;
}
@media (max-width: 768px) { .related-grid { grid-template-columns: repeat(2, 1fr); } }

.circle-mini {
  display: block;
  position: relative;
  width: 100%;
  aspect-ratio: 1/1;
  border-radius: 50%;
  overflow: hidden;
  box-shadow: 0 4px 10px rgba(0,0,0,0.1);
}
.circle-mini img { width: 100%; height: 100%; object-fit: cover; }
.circle-mini .overlay { position: absolute; inset: 0; background: rgba(0,0,0,0.2); }
.mini-name {
  position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);
  color: white; font-weight: 700; text-align: center; width: 90%;
  text-shadow: 0 1px 3px rgba(0,0,0,0.5);
}

/* 5. CTA SECTION */
.cta-section { text-align: center; margin-top: 2rem; }
.cta-title { color: #3b5ba9; font-size: 2rem; font-weight: 800; margin-bottom: 1rem; }
.cta-desc { color: #555; margin-bottom: 2rem; }
.btn-contact {
  display: inline-block;
  background-color: #3b5ba9;
  color: white;
  padding: 12px 50px;
  border-radius: 50px;
  font-weight: 700;
  text-decoration: none;
  transition: background 0.3s;
}
.btn-contact:hover { background-color: #2a4080; }
</style>