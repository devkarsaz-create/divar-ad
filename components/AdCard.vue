
<template>
  <div 
    :class="[
      'bg-metal-darker rounded-lg overflow-hidden transition-all duration-300 group',
      viewMode === 'grid' ? 'flex flex-col' : 'flex items-center',
      'transform-gpu motion-safe:hover:scale-105'
    ]"
    @mousemove="handleMouseMove"
    @mouseleave="resetCardStyle"
    ref="cardRef"
  >
    <!-- Image Container -->
    <div 
      :class="[
        'relative overflow-hidden',
        viewMode === 'grid' ? 'w-full h-40' : 'w-28 h-24 flex-shrink-0'
      ]"
    >
      <img 
        :src="ad.image" 
        :alt="ad.title" 
        :class="[
          'object-cover w-full h-full transition-transform duration-500 ease-out',
          viewMode === 'list' ? 'group-hover:scale-110' : ''
        ]"
      />
      <div class="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"></div>
      <span v-if="ad.isSpecial" class="absolute top-2 right-2 text-xs font-bold bg-brand-purple/80 text-white py-1 px-2 rounded-md backdrop-blur-sm">ویژه</span>
    </div>

    <!-- Content Container -->
    <div class="p-4 flex flex-col flex-grow">
      <h3 class="font-bold text-white truncate" :class="[viewMode === 'grid' ? 'text-base' : 'text-lg']">{{ ad.title }}</h3>
      <p class="text-sm text-gray-400 mt-1 font-semibold" :class="{'text-brand-purple': viewMode === 'list'}">{{ ad.price }} تومان</p>
      
      <div class="flex-grow"></div> <!-- Spacer -->
      
      <div class="flex justify-between items-center mt-3 pt-3 border-t border-metal-light/20">
        <p class="text-xs text-gray-500">{{ ad.location }}</p>
        <p class="text-xs text-gray-500">{{ ad.time }}</p>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const props = defineProps({
  ad: Object,
  viewMode: String,
});

const cardRef = ref(null);

// 3D Tilt Effect for Grid View
const handleMouseMove = (e) => {
  if (props.viewMode !== 'grid' || !cardRef.value) return;
  const card = cardRef.value;
  const { left, top, width, height } = card.getBoundingClientRect();
  const x = e.clientX - left;
  const y = e.clientY - top;
  
  const rotateX = (y - height / 2) / (height / 2) * -8; // Max rotation 8 degrees
  const rotateY = (x - width / 2) / (width / 2) * 8;   // Max rotation 8 degrees

  card.style.transform = `perspective(1000px) rotateX(${rotateX}deg) rotateY(${rotateY}deg) scale3d(1.05, 1.05, 1.05)`;
};

const resetCardStyle = () => {
  if (!cardRef.value) return;
  cardRef.value.style.transform = 'perspective(1000px) rotateX(0) rotateY(0) scale3d(1, 1, 1)';
};

</script>
