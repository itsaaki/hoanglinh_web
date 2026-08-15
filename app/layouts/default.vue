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

<style lang="scss" scoped src="~/assets/scss/_default.scss"></style>
