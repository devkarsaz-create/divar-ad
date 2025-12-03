
<template>
  <div class="flex items-center bg-metal-dark/50 rounded-full border border-metal-light/30 p-1">
    <button 
      @click="$emit('setView', 'grid')"
      :class="['toggle-btn', { 'active': currentView === 'grid' }]"
    >
      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
        <path d="M5 3a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2V5a2 2 0 00-2-2H5zM5 11a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2v-2a2 2 0 00-2-2H5zM11 5a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V5zM11 13a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z" />
      </svg>
    </button>
    <button 
      @click="$emit('setView', 'list')"
      :class="['toggle-btn', { 'active': currentView === 'list' }]"
    >
      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
        <path fill-rule="evenodd" d="M3 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd" />
      </svg>
    </button>
  </div>
</template>

<script setup>
import { defineProps, defineEmits } from 'vue';

defineProps({
  currentView: {
    type: String,
    required: true,
    validator: (value) => ['grid', 'list'].includes(value),
  },
});

defineEmits(['setView']);
</script>

<style scoped>
.toggle-btn {
  @apply p-2 rounded-full text-gray-400 transition-colors duration-300;
}

.toggle-btn.active {
  @apply bg-purple-600/80 text-white shadow-md;
}

.toggle-btn:not(.active):hover {
  @apply text-white;
}
</style>
