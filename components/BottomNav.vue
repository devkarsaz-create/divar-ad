
<template>
  <div class="fixed bottom-4 inset-x-0 mx-auto max-w-sm z-50">
    <div class="relative flex items-center justify-around bg-metal-dark/50 backdrop-blur-xl border border-metal-light/20 rounded-full h-20 shadow-2xl shadow-black/40">
      
      <!-- Energy Capsule: The moving background for the active item -->
      <div 
        class="absolute top-1/2 -translate-y-1/2 h-16 w-16 bg-gradient-to-br from-brand-purple/80 to-indigo-600/70 rounded-full transition-all duration-500 ease-[cubic-bezier(0.68,-0.55,0.27,1.55)] shadow-lg shadow-brand-purple/40"
        :style="capsuleStyle"
      ></div>
      
      <!-- Navigation Items -->
      <div 
        v-for="(item, index) in navItems" 
        :key="item.name"
        :ref="el => itemRefs[index] = el"
        @click="setActiveItem(index)"
        class="relative flex flex-col items-center justify-center w-16 h-16 cursor-pointer z-10"
      >
        <svg class="h-7 w-7 transition-colors duration-300" :class="[activeIndex === index ? 'text-white' : 'text-metal-lighter']" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" :d="item.icon" />
        </svg>
        <span class="absolute -bottom-1 text-xs transition-opacity duration-300" :class="[activeIndex === index ? 'opacity-100 text-white' : 'opacity-0']">
          {{ item.name }}
        </span>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, computed, nextTick } from 'vue';

const navItems = [
  { name: 'خانه', icon: 'M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3' },
  { name: 'دسته‌ها', icon: 'M4 6h16M4 12h16M4 18h7' },
  { name: 'ثبت', icon: 'M12 4v16m8-8H4' },
  { name: 'چت', icon: 'M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z' },
  { name: 'حساب', icon: 'M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z' },
];

const activeIndex = ref(0);
const itemRefs = ref([]);
const capsuleStyle = ref({});

const setActiveItem = async (index) => {
  activeIndex.value = index;
  await nextTick(); // Wait for the DOM to update
  updateCapsulePosition();
};

const updateCapsulePosition = () => {
  const activeItemEl = itemRefs.value[activeIndex.value];
  if (activeItemEl) {
    const { offsetLeft, clientWidth } = activeItemEl;
    capsuleStyle.value = {
      transform: `translateX(${offsetLeft}px) translateY(-50%)`,
      width: `${clientWidth}px`,
    };
  }
};

onMounted(() => {
  // Set initial position of the capsule
  setActiveItem(0);
  window.addEventListener('resize', updateCapsulePosition);
});

onUnmounted(() => {
  window.removeEventListener('resize', updateCapsulePosition);
});
</script>

<style scoped>
/* Scoped styles can be added here if needed, but Tailwind handles most of it. */
/* The complex animation uses a custom cubic-bezier for a spring-like effect. */
</style>
