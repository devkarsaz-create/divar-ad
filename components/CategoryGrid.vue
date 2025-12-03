
<template>
  <div class="bg-metal-darker py-6 px-4 rounded-lg m-4">
    <div class="grid grid-cols-4 gap-y-6 text-center">
      <div v-for="category in categories" :key="category.name" class="flex flex-col items-center justify-center cursor-pointer group">
        <div class="w-16 h-16 flex items-center justify-center bg-metal-dark rounded-full mb-2 border border-transparent group-hover:border-brand-purple transition-all duration-300">
          <svg class="h-8 w-8 text-gray-300 group-hover:text-white transition-colors" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" :d="category.icon" />
          </svg>
        </div>
        <span class="text-xs font-medium text-gray-400 group-hover:text-white transition-colors">{{ category.name }}</span>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const categories = ref([
  { name: 'املاک', icon: 'M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3' },
  { name: 'وسایل نقلیه', icon: 'M9 17a2 2 0 11-4 0 2 2 0 014 0zM19 17a2 2 0 11-4 0 2 2 0 014 0zM19 17H5M5 12H3V6a1 1 0 011-1h14a1 1 0 011 1v6h-2M12 12V4' },
  { name: 'لوازم خانگی', icon: 'M14 10a2 2 0 11-4 0 2 2 0 014 0zM12 2a2 2 0 100 4 2 2 0 000-4zM20 18a2 2 0 100 4 2 2 0 000-4zM4 18a2 2 0 100 4 2 2 0 000-4zM12 12l-8 6M12 12l8 6' }, // Placeholder, needs better icon
  { name: 'موبایل و تبلت', icon: 'M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z' },
  { name: 'استخدام', icon: 'M21 13.628A2.25 2.25 0 0118.75 16a2.25 2.25 0 01-2.25-2.25V6.75A2.25 2.25 0 0118.75 9v1.876m-4.5-2.624a2.25 2.25 0 012.25 2.25V16.5a2.25 2.25 0 01-2.25 2.25H6.75A2.25 2.25 0 014.5 16.5V9.75a2.25 2.25 0 012.25-2.25h1.5M12 14.25a.75.75 0 01.75.75v.01a.75.75 0 01-.75.75h-.01a.75.75 0 01-.75-.75v-.01c0-.414.336-.75.75-.75z' }, // Placeholder
  { name: 'ورزش و فراغت', icon: 'M13 10V3L4 14h7v7l9-11h-7z' },
  { name: 'خدمات', icon: 'M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.977l-2.25 2.25a1 1 0 01-1.414 0l-1.714-1.714a1 1 0 010-1.414l2.25-2.25a6 6 0 00.977-3.86l-.477-2.387a2 2 0 00-.547-1.022l-1.55-1.55a1 1 0 010-1.414l.707-.707a1 1 0 011.414 0l1.55 1.55a2 2 0 001.022.547l2.387.477a6 6 0 003.86-.977l2.25-2.25a1 1 0 011.414 0l1.714 1.714a1 1 0 010 1.414l-2.25 2.25a6 6 0 00-.977 3.86l.477 2.387a2 2 0 00.547 1.022l1.55 1.55a1 1 0 010 1.414l-.707.707a1 1 0 01-1.414 0l-1.55-1.55z' },
  { name: 'جستجوی کسب و کار', icon: 'M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z' },
]);

</script>
