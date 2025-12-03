
<template>
  <div class="px-4 mt-6">
    <!-- Header with View Toggle -->
    <div class="flex justify-between items-center mb-4">
      <h2 class="text-xl font-bold text-white">آگهی‌های ویژه</h2>
      <div class="flex items-center space-x-2 p-1 bg-metal-darker rounded-lg">
        <button @click="viewMode = 'grid'" :class="['px-3 py-1 rounded-md transition-colors duration-300', viewMode === 'grid' ? 'bg-brand-purple text-white' : 'text-gray-400']">
          <svg class="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2V6zM14 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V6zM4 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2v-2zM14 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z" /></svg>
        </button>
        <button @click="viewMode = 'list'" :class="['px-3 py-1 rounded-md transition-colors duration-300', viewMode === 'list' ? 'bg-brand-purple text-white' : 'text-gray-400']">
          <svg class="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 10h16M4 14h16M4 18h16" /></svg>
        </button>
      </div>
    </div>

    <!-- Loading State -->
    <div v-if="loading" class="text-center py-10 text-white">
      <p>در حال بارگذاری آگهی‌ها...</p>
    </div>

    <!-- Error State -->
    <div v-else-if="error" class="text-center py-10 text-red-400">
      <p>خطا در دریافت اطلاعات: {{ error.message }}</p>
    </div>

    <!-- Ads Container -->
    <div v-else :class="[viewMode === 'grid' ? 'grid grid-cols-2 gap-4' : 'space-y-4']">
      <AdCard 
        v-for="ad in ads" 
        :key="ad.id" 
        :ad="ad" 
        :view-mode="viewMode"
      />
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import AdCard from './AdCard.vue';

const viewMode = ref('grid');
const ads = ref([]);
const loading = ref(true);
const error = ref(null);

// Fetch ads from the Go backend when the component is mounted
onMounted(async () => {
  try {
    const response = await fetch('http://localhost:8080/api/v1/ads');
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }
    const data = await response.json();
    ads.value = data;
  } catch (e) {
    error.value = e;
    console.error("Failed to fetch ads:", e);
  } finally {
    loading.value = false;
  }
});

</script>
