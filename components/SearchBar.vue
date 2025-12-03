
<template>
  <div class="px-4">
    <div class="relative flex items-center bg-metal-darker rounded-lg shadow-inner-dark">
      <input 
        type="text"
        placeholder="جستجو در همه آگهی‌ها..."
        class="w-full bg-transparent text-white placeholder-gray-500 py-4 pr-12 pl-4 rounded-lg focus:outline-none focus:ring-2 focus:ring-brand-purple/50 transition-shadow duration-300"
      />
      <div class="absolute right-0 top-0 bottom-0 flex items-center pr-4 pointer-events-none">
        <svg class="w-6 h-6 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
        </svg>
      </div>
    </div>
  </div>
</template>

<script setup>
// This is the search bar component.
</script>

<style scoped>
/* Inner shadow for a neater look */
.shadow-inner-dark {
  box-shadow: inset 0 2px 4px 0 rgba(0, 0, 0, 0.25);
}
</style>
