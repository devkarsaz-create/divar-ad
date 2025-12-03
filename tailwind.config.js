
const plugin = require('tailwindcss/plugin')

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
        'brand-purple': '#A162F7',
        'brand-purple-light': '#c49dff',
        // --- Fire Theme Colors --- //
        'fire-red': '#FF4500',
        'fire-orange': '#FFA500',
        'fire-yellow': '#FFD700',
      },
      boxShadow: {
        'card': '0 10px 15px -3px rgba(0, 0, 0, 0.3), 0 4px 6px -2px rgba(0, 0, 0, 0.2)',
        'card-hover': '0 25px 50px -12px rgba(0, 0, 0, 0.4)',
        'glow-purple': '0 0 20px rgba(161, 98, 247, 0.7)',
        // --- Fire Theme Shadow --- //
        'glow-fire': '0 0 15px rgba(255, 69, 0, 0.6), 0 0 5px rgba(255, 165, 0, 0.5)',
      },
      animation: {
        // Added a new fire animation
        'fire-flow': 'fire-flow 10s ease infinite',
      },
      keyframes: {
        // Keyframes for the fire-like gradient animation
        'fire-flow': {
          '0%, 100%': { backgroundPosition: '0% 50%' },
          '50%': { backgroundPosition: '100% 50%' },
        },
      },
    },
  },
  plugins: [
    plugin(function({ addUtilities }) {
      addUtilities({
        '.transform-style-3d': {
          'transform-style': 'preserve-3d',
        },
      })
    })
  ],
}
