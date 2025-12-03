
// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },

  // Register modules
  modules: [
    '@nuxtjs/tailwindcss'
  ],

  // Global CSS
  css: [
    '~/assets/css/main.css',
  ],

  // Tailwind CSS configuration
  tailwindcss: {
    // We tell Nuxt to use our external config file
    configPath: 'tailwind.config.js',
    // We can disable the internal viewer if we want a cleaner log
    // viewer: false,
  },

  // Nitro configuration
  nitro: {
    compatibilityDate: '2024-04-03',
  },
})
