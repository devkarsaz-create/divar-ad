
<template>
  <div class="relative min-h-screen bg-metal-dark">
    <div class="noise-texture"></div>
    
    <!-- Main Content Area -->
    <div class="relative z-10 pb-28"> 
      <!-- Page Content -->
      <NuxtPage />
    </div>

    <!-- Persistent Bottom Navigation -->
    <BottomNav />
  </div>
</template>

<script setup>
// app.vue is now simplified. It only provides the main container with padding for the BottomNav,
// the noise texture, and the NuxtPage component to render the current page.
// The main header has been moved to individual pages for more control.
</script>

<style>
/* Global styles are in main.css */
</style>
