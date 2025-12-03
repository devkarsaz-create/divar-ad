
<template>
  <div class="bg-metal-darkest min-h-screen font-sans">
    <AppHeader />
    <main class="pb-28">
      <NuxtPage />
    </main>
    <BottomNav />
  </div>
</template>

<script setup>
// This is the main layout of our application.
// <NuxtPage /> will render the content of our different pages based on the current URL.
</script>

<style>
/* Global styles */
body {
  background-color: #1a1d22; /* bg-metal-darkest */
  color: #e5e7eb; /* text-gray-200 */
}

.font-sans {
  font-family: 'Vazirmatn', sans-serif;
}
</style>
