<script setup lang="ts">
useHead({
  title: 'Liên hệ - Hoàng Linh Group',
})

// Xử lý sự kiện gửi form (Giả lập)
const handleSubmit = () => {
  alert('Cảm ơn bạn đã liên hệ! Chúng tôi sẽ phản hồi sớm nhất.')
}
</script>

<template>
  <div class="contact-page">
    <div class="container">
      
      <section class="address-section">
        <h1 class="page-title">Liên hệ</h1>
        
        <!-- <p class="page-desc">
          Etiam leo magna, egestas nec commodo nec, hendrerit ultrices lectus. Nam et mauris ac dolor sollicitudin ultricies quis quis neque. Fusce justo risus, dapibus vulputate ligula eget, convallis aliquet nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
        </p> -->

        <h2 class="company-name">
          CÔNG TY TNHH DỊCH VỤ THƯƠNG MẠI NÔNG SẢN HOÀNG LINH
        </h2>

        <div class="contact-info">
          <p>Trụ sở văn phòng: Vịnh thiên đường 1-99 VHOCP3 Nghĩa Trụ, Văn Giang, Hưng Yên</p>
          <p>Địa chỉ đăng kí kinh doanh: Sao biển 19-08 VHOCP, Gia Lâm, Hà Nội</p>
          <p>Email: <a href="mailto:info@hoanglinhdvkdns.com">info@hoanglinhdvkdns.com</a></p>
          <p>Số điện thoại: <span class="phone">089 984 6338</span></p>
        </div>

        <div class="map-wrapper">
          <iframe 
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.696637384666!2d105.84752931533214!3d21.00479598601139!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac71294bf0eb%3A0x9b1b70e176b50e64!2zSGFub2ksIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1626925827364!5m2!1sen!2s" 
            width="100%" 
            height="450" 
            style="border:0;" 
            loading="lazy">
          </iframe>
        </div>
      </section>

      <section class="form-section">
        <h2 class="form-title">Liên hệ với chúng tôi</h2>

        <form class="contact-form" @submit.prevent="handleSubmit">
          
          <div class="form-group">
            <input type="text" placeholder="Họ và tên" class="form-input" required />
          </div>

          <div class="form-row">
            <div class="form-group">
              <input type="email" placeholder="Email" class="form-input" required />
            </div>
            <div class="form-group">
              <input type="tel" placeholder="Số điện thoại" class="form-input" required />
            </div>
          </div>

          <div class="form-group">
            <textarea placeholder="Nội dung" class="form-input form-textarea" rows="6" required></textarea>
          </div>

          <div class="form-submit">
            <button type="submit" class="btn-submit">Gửi</button>
          </div>

        </form>
      </section>

    </div>
  </div>
</template>

<style lang="scss" scoped src="~/assets/scss/pages/_contact.scss"></style>
