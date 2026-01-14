<script setup lang="ts">

interface NavItem {
  id: number;
  label: string;
  url: string;
}

const navItems: NavItem[] = [
  { id: 1, label: 'Trang chủ', url: '/' },
  { id: 2, label: 'Giới thiệu', url: '/gioi-thieu' },
  { id: 3, label: 'Sản phẩm', url: '/san-pham' },
  { id: 4, label: 'Tin tức', url: '/tin-tuc' },
  { id: 5, label: 'Liên hệ', url: '/lien-he' }
]


</script>

<style lang="scss" scoped src="./assets/scss/components/_header.scss"></style>

<template>
  <header class="navbar">
    <UContainer>
      <div class="navbar__inner">
        
        <NuxtLink to="/" class="navbar__logo">
          <img 
            src="/public/images/Asset 74@2x 1.png" 
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


