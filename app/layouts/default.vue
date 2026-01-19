<script setup lang="ts">
</script>

<template>
  <div class="layout-wrapper">
    <AppHeader />

    <main class="main-content">
      <slot />
    </main>

    <AppFooter />
  </div>
</template>

<style lang="scss" scoped>
.layout-wrapper {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
}

.main-content {
  flex: 1; 
}
</style>
