
<template>
  <div class="px-4 py-6">
    <div class="border-b-2 border-metal-light/20 pb-3">
      <h2 class="text-2xl font-bold text-white">{{ title }}</h2>
      <p v-if="subtitle" class="text-gray-400 mt-1">{{ subtitle }}</p>
    </div>
  </div>
</template>

<script setup>
import { defineProps } from 'vue';

defineProps({
  title: {
    type: String,
    required: true,
  },
  subtitle: {
    type: String,
    default: ''
  }
});
</script>

<style scoped>
/* Styles are handled by Tailwind CSS classes. */
/* A simple bottom border provides a clean separation for content sections. */
</style>
