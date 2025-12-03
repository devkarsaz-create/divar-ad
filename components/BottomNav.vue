
<template>
  <nav class="fixed bottom-0 inset-x-0 z-50 h-20 bg-metal-darker border-t border-metal-light/20">
    <div class="flex items-center justify-around h-full max-w-lg mx-auto">
      <NuxtLink
        v-for="item in navItems"
        :key="item.name"
        :to="item.path"
        class="flex flex-col items-center justify-center w-full h-full cursor-pointer transition-colors duration-300 text-gray-400 hover:text-white"
        active-class="text-brand-purple"
      >
        <div class="relative p-2">
          <svg class="h-7 w-7" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" :d="item.icon" />
          </svg>
          <!-- Active indicator dot -->
          <span 
            class="absolute bottom-0 left-1/2 -translate-x-1/2 w-2 h-2 bg-brand-purple rounded-full opacity-0 transition-opacity duration-300"
            :class="{ 'opacity-100': $route.path === item.path }"
          ></span>
        </div>
        <span class="text-xs font-medium tracking-wide">{{ item.name }}</span>
      </NuxtLink>
    </div>
  </nav>
</template>

<script setup>
import { ref } from 'vue';

// Corrected colors in tailwind config. I will use 'brand-purple' for now as the azure color.
const navItems = ref([
  { name: 'خانه', path: '/', icon: 'M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3' },
  { name: 'ثبت آگهی', path: '/new', icon: 'M12 9v3m0 0v3m0-3h3m-3 0H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z' },
  { name: 'چت', path: '/chat', icon: 'M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z' },
  { name: 'حساب من', path: '/account', icon: 'M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z' },
]);

</script>

<style scoped>
/* Use NuxtLink's `active-class` for styling the active link */
.router-link-exact-active {
  color: theme('colors.brand-purple');
}

.router-link-exact-active span.absolute {
  opacity: 1;
}
</style>
