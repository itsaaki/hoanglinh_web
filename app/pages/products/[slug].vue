<script setup lang="ts">
const route = useRoute()
const slug = computed(() => route.params.slug as string)

// Giả lập Database (Thực tế bạn sẽ gọi API ở đây)
const productsDB = [
  {
    slug: 'ba-bia',
    name: 'Bã bia',
    image: 'https://images.unsplash.com/photo-1580910051074-3eb6948d3ea4?q=80&w=800',
    description: 'Sản phẩm phụ từ quá trình sản xuất bia, giàu protein và vitamin, rất tốt cho chăn nuôi bò sữa.',
    usage: 'Bã bia được sử dụng rộng rãi trong chăn nuôi gia súc, đặc biệt là bò sữa. Nó cung cấp nguồn protein chất lượng cao, giàu vitamin nhóm B và các chất dinh dưỡng cần thiết. Sản phẩm này giúp tăng năng suất sữa, cải thiện sức khỏe và hệ miễn dịch của gia súc.',
    specs: [
      { label: 'Đạm thô', value: '28%' },
      { label: 'Độ ẩm', value: '10%' },
      { label: 'Xơ thô', value: '15%' },
    ]
  },
  {
    slug: 'kho-dau-tuong',
    name: 'Khô đậu tương',
    image: 'https://images.unsplash.com/photo-1620916566398-39f1143ab7be?q=80&w=800',
    description: 'Khô đậu tương là sản phẩm phụ từ quả trình chế biến dầu đậu tương, có hàm lượng protein cao.',
    usage: 'Khô đậu tương là nguồn thức ăn chăn nuôi có giá trị dinh dưỡng cao, cung cấp protein tảo tần và các amino axit cần thiết. Sản phẩm này hỗ trợ tăng trưởng, phát triển cơ bắp và nâng cao chất lượng sản phẩm từ gia súc.',
    specs: [
      { label: 'Đạm thô', value: '45%' },
      { label: 'Chất béo thô', value: '8%' },
      { label: 'Xơ thô', value: '5%' },
    ]
  },
  {
    slug: 'bot-ca',
    name: 'Bột cá',
    image: 'https://plus.unsplash.com/premium_photo-1675844477864-469d7b433436?q=80&w=800',
    description: 'Bột cá được sản xuất từ cá và phụ phẩm cá, chứa đầy đủ amino axit và các chất vi lượng cần thiết.',
    usage: 'Bột cá là thức ăn chăn nuôi premium, cung cấp protein hoàn chỉnh với tất cả các amino axit thiết yếu. Nó giàu omega-3, calci, phospho và các chất vi lượng quan trọng, giúp tăng cường sức khỏe, nâng cao khả năng sinh sản và chất lượng sản phẩm cuối cùng.',
    specs: [
      { label: 'Đạm thô', value: '65%' },
      { label: 'Chất béo thô', value: '10%' },
      { label: 'Tro', value: '20%' },
    ]
  },
  {
    slug: 'ngo-hat',
    name: 'Ngô hạt',
    image: 'https://images.unsplash.com/photo-1551754655-cd27e38d2076?q=80&w=800',
    description: 'Ngô hạt là ngũ cốc chính trong sản xuất thức ăn gia súc, cung cấp năng lượng và carbohydrate.',
    usage: 'Ngô hạt là thức ăn năng lượng cao, cung cấp carbohydrate phục vụ cho các hoạt động sống và sinh sản của gia súc. Nó giàu tinh bột, chất béo và một số vitamin, giúp tăng cộng suất năng lượng, cải thiện tăng trưởng và năng suất sản xuất.',
    specs: [
      { label: 'Năng lượng', value: '3600 kcal/kg' },
      { label: 'Protein thô', value: '8-10%' },
      { label: 'Chất béo thô', value: '4-5%' },
    ]
  },
  {
    slug: 'ba-san',
    name: 'Bã sắn',
    image: 'https://images.unsplash.com/photo-1615485500704-8e99099928b3?q=80&w=800',
    description: 'Bã sắn là sản phẩm phụ từ quá trình chế biến tinh bột sắn, giàu carbohydrate và năng lượng.',
    usage: 'Bã sắn là thức ăn năng lượng phổ biến trong chăn nuôi, cung cấp carbohydrate dễ tiêu hóa. Sản phẩm này đặc biệt hữu ích trong năng lượng duy trì sức khỏe, hỗ trợ tăng khối lượng cơ thể và cải thiện chất lượng sản phẩm từ động vật nông trại.',
    specs: [
      { label: 'Tinh bột', value: '85-90%' },
      { label: 'Protein thô', value: '1-2%' },
      { label: 'Chất béo', value: '0.5%' },
    ]
  },
  {
    slug: 'lua-mi',
    name: 'Lúa mì',
    image: 'https://images.unsplash.com/photo-1574323347407-f5e1ad6d020b?q=80&w=800',
    description: 'Lúa mì là ngũ cốc toàn vẹn, cung cấp protein, xơ và các vitamin nhóm B cần thiết.',
    usage: 'Lúa mì là thức ăn ngũ cốc toàn vẹn có giá trị dinh dưỡng cao, cung cấp protein, xơ thô và vitamin B phức hợp. Nó hỗ trợ sức khỏe tiêu hóa, tăng cường miễn dịch và cải thiện chất lượng sản phẩm từ gia súc khi được sử dụng đúng hạn mức.',
    specs: [
      { label: 'Protein thô', value: '12-15%' },
      { label: 'Xơ thô', value: '2-3%' },
      { label: 'Năng lượng', value: '3300 kcal/kg' },
    ]
  },
  {
    slug: 'mo-ca',
    name: 'Mỡ cá',
    image: 'https://images.unsplash.com/photo-1615141982880-131f47671954?q=80&w=800',
    description: 'Mỡ cá là nguồn chất béo giàu omega-3, hỗ trợ sức khỏe và chất lượng sản phẩm.',
    usage: 'Mỡ cá là chất béo có giá trị cao, giàu omega-3 và các acid béo không bão hòa, giúp cải thiện sức khỏe tim mạch và hệ thần kinh. Khi bổ sung vào khẩu phần ăn gia súc, nó giúp tăng cấp độ năng lượng, cải thiện chất lượng sữa và thịt, đồng thời hỗ trợ sinh sản.',
    specs: [
      { label: 'Chất béo', value: '99%' },
      { label: 'Omega-3', value: 'cao' },
      { label: 'Năng lượng', value: '9000 kcal/kg' },
    ]
  },
  {
    slug: 'cam-mi',
    name: 'Cám mì',
    image: 'https://images.unsplash.com/photo-1610348725531-843dff563e2c?q=80&w=800',
    description: 'Cám mì là sản phẩm phụ từ quá trình chế biến lúa mì, giàu xơ và vitamin nhóm B.',
    usage: 'Cám mì là sản phẩm phụ từ chế biến lúa mì, cung cấp xơ thô, vitamin B và chất khoáng. Nó hỗ trợ sức khỏe tiêu hóa, cải thiện sắc thái lông và cơ thể của gia súc. Sản phẩm này giúp tăng cường hệ miễn dịch và nâng cao hiệu suất chăn nuôi.',
    specs: [
      { label: 'Xơ thô', value: '10-12%' },
      { label: 'Protein thô', value: '15-17%' },
      { label: 'Năng lượng', value: '2800 kcal/kg' },
    ]
  },
]

// Tìm sản phẩm dựa trên slug trên đường dẫn
const product = computed(() => {
  const foundProduct = productsDB.find(p => p.slug === slug.value)
  return foundProduct || null
})

// Lấy 4 sản phẩm liên quan (không phải sản phẩm hiện tại)
const relatedProducts = computed(() => {
  return productsDB
    .filter(p => p.slug !== slug.value)
    .slice(0, 4)
})

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

      <section v-else class="error-section">
        <p style="text-align: center; color: red;">Không tìm thấy sản phẩm với slug: {{ slug }}</p>
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
          {{ product?.usage }}
        </p>
      </section>

      <section class="related-section">
        <h2 class="section-heading text-center">CÁC SẢN PHẨM KHÁC</h2>
        
        <div class="related-grid">
          <div v-for="(item, index) in relatedProducts" :key="index" class="related-item">
            <NuxtLink :to="`/products/${item.slug}`" class="circle-mini">
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

<style lang="scss" scoped src="~/assets/scss/pages/_product-detail.scss"></style>