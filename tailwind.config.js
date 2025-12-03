
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./components/**/*.{js,vue,ts}",
    "./layouts/**/*.vue",
    "./pages/**/*.vue",
    "./plugins/**/*.{js,ts}",
    "./nuxt.config.{js,ts}",
    "./app.vue",
  ],
  theme: {
    extend: {
      colors: {
        'metal-darkest': '#0D0E12',
        'metal-darker': '#15171C',
        'metal-dark': '#1C1F26',
        'metal-light': '#3F4452',
        'metal-lighter': '#767B8A',
        'brand-purple': '#A162F7',
        'brand-purple-light': '#C5A2F9',
      },
      boxShadow: {
        'glow-purple': '0 0 25px 0 rgba(139, 92, 246, 0.6)',
        'card-hover': '0px 10px 30px -5px rgba(0, 0, 0, 0.3), 0px 8px 15px -10px rgba(161, 98, 247, 0.4)',
        'card': '0px 5px 20px -10px rgba(0, 0, 0, 0.2)',
      },
      animation: {
        'glossy-shine': 'glossy-shine 5s infinite linear',
      },
      keyframes: {
        'glossy-shine': {
          '0%': { 'background-position': '-200% 0' },
          '100%': { 'background-position': '200% 0' },
        },
      },
    },
  },
  plugins: [],
}
