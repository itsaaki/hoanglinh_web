<script setup lang="ts">

interface NavItem {
  id: number;
  label: string;
  url: string;
}

const navItems: NavItem[] = [
  { id: 1, label: 'Trang chủ', url: '/home' },
  { id: 2, label: 'Giới thiệu', url: '/about' },
  { id: 3, label: 'Sản phẩm', url: '/products' },
  { id: 4, label: 'Tin tức', url: '/news' },
  { id: 5, label: 'Liên hệ', url: '/contact' }
]

</script>

<style lang="scss" scoped src="~/assets/scss/components/_header.scss"></style>
<template>
  <header class="navbar">
    <UContainer>
      <div class="navbar__inner">
        
        <NuxtLink to="/home" class="navbar__logo">
          <img 
            src="/assets/images/logo.png" 
            alt="Hoàng Linh Logo" 
          />
          </NuxtLink>

        <nav class="navbar__menu">
            <ul class="menu-list">
            <li v-for="item in navItems" :key="item.id" class="menu-item">
              <NuxtLink
                :to="item.url"
                class="menu-link"
                active-class="is-active"
          >
            {{ item.label }}
          </NuxtLink>
          </li>
        </ul>
        </nav>

        <div class="navbar__toggle">
          <UButton
            icon="i-heroicons-bars-3"
            color="gray"
            variant="ghost"
            size="xl"
          />
        </div>
      </div>
    </UContainer>

  
  </header>
</template>


