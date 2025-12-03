
<template>
  <main class="max-w-7xl mx-auto">
    <!-- Page Header -->
    <AppHeader />

    <!-- Search Bar -->
    <SearchBar />

    <!-- Promotional Banner -->
    <PromoBanner />

    <!-- Ads Section Header -->
    <div class="flex justify-between items-center px-4 pt-12 pb-6">
        <h2 class="text-3xl font-bold text-white tracking-tight">آخرین آگهی‌های ثبت شده</h2>
        <ViewToggle :current-view="viewMode" @set-view="setViewMode" />
    </div>

    <!-- Ads List -->
    <AdList :view="viewMode" />
  </main>
</template>

<script setup>
import { ref } from 'vue';
import AppHeader from '~/components/AppHeader.vue';
import SearchBar from '~/components/SearchBar.vue';
import PromoBanner from '~/components/PromoBanner.vue';
import AdList from '~/components/AdList.vue';
import ViewToggle from '~/components/ViewToggle.vue';

// State to control the view mode of the ad list
const viewMode = ref('grid'); // 'grid' or 'list'

function setViewMode(view) {
  viewMode.value = view;
}
</script>

<style scoped>
main {
  display: flex;
  flex-direction: column;
  gap: 1.5rem; /* Increased gap for a more spacious feel */
}
</style>
