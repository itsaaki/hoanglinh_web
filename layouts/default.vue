<template>
  <div class="min-h-screen flex flex-col">
    <AppHeader />

    <main class="flex-grow">
      <slot />
    </main>

    <footer class="bg-blue-900 text-white p-8 text-center mt-auto">
      &copy; 2026 Công ty TNHH Hoàng Linh
    </footer>
  </div>
</template>