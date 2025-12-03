
<template>
  <div class="relative px-4 w-full max-w-2xl mx-auto">
    <div class="relative">
      <input 
        type="text" 
        placeholder="جستجو در همه آگهی‌ها..."
        class="w-full h-16 pl-14 pr-6 text-lg text-white bg-metal-dark border-2 border-metal-light rounded-full focus:ring-2 focus:ring-brand-purple focus:border-brand-purple outline-none transition-all duration-300 shadow-lg"
      >
      <div class="absolute left-4 top-1/2 -translate-y-1/2">
        <button class="flex items-center justify-center w-12 h-12 bg-gradient-to-br from-brand-purple to-indigo-600 rounded-full hover:scale-105 hover:shadow-glow-purple transition-transform duration-200">
          <svg class="w-6 h-6 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
          </svg>
        </button>
      </div>
    </div>
  </div>
</template>

<script setup>
// No script logic needed
</script>

<style scoped>
/* Giving the input a slight inner shadow for depth */
input {
  box-shadow: inset 0 2px 4px rgba(0,0,0,0.3);
}
</style>
