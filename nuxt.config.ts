// nuxt.config.ts
export default defineNuxtConfig({
  // ... other configs
  
  vite: {
    css: {
      preprocessorOptions: {
        scss: {
          // This line automatically imports your variables file into all SCSS files
          additionalData: '@use "@/assets/scss/variables.scss" as *;'
        }
      }
    }
  }
})