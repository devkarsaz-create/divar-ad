
<template>
  <header class="flex items-center justify-between p-4 h-20 max-w-7xl mx-auto w-full">
    <!-- Logo -->
    <div class="flex items-center gap-2">
      <img src="/logo.svg" alt="Divar Logo" class="h-10 w-10" />
      <span class="text-2xl font-bold text-gray-200 tracking-wider">Divar</span>
    </div>

    <!-- Actions -->
    <div class="flex items-center gap-4">
        <button class="p-2 rounded-full hover:bg-metal-dark">
            <svg class="w-6 h-6 text-metal-lighter hover:text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
            </svg>
        </button>
        <button class="flex items-center gap-2 text-metal-lighter hover:text-white">
            <span class="font-semibold">منوی من</span>
            <svg class="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" /></svg>
        </button>
    </div>
  </header>
</template>

<script setup>
// No script logic needed for this purely presentational component.
</script>

<style scoped>
/* All styling is handled by Tailwind utility classes. */
</style>
