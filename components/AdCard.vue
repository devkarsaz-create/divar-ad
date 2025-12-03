
<template>
  <!-- The component's root element changes based on the view prop to apply the correct layout -->
  <div :class="cardWrapperClasses" ref="cardRef" :style="cardStyle">

    <!-- ===== GRID VIEW RENDER ===== -->
    <div v-if="view === 'grid'" class="card-inner-grid">
      <!-- Image Container -->
      <div class="relative overflow-hidden rounded-t-2xl">
        <img :src="ad.image" :alt="ad.title" class="w-full h-48 object-cover transition-transform duration-500 ease-in-out group-hover:scale-105" />
        <div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent"></div>
        <!-- Special Badge -->
        <div v-if="ad.isSpecial" class="absolute top-3 right-3 bg-yellow-400/90 text-black px-3 py-1 text-xs font-bold rounded-full shadow-lg">ویژه</div>
      </div>
      
      <!-- Content Container (Glassmorphism) -->
      <div class="p-4 bg-metal-dark/50 backdrop-blur-lg border-t border-metal-light/20 rounded-b-2xl">
        <h3 class="font-bold text-white truncate text-lg">{{ ad.title }}</h3>
        <p class="text-metal-lighter text-sm truncate mt-1">{{ ad.location }}</p>
        <div class="flex justify-between items-center mt-3">
          <p class="font-semibold text-brand-purple-light text-base">{{ ad.price }} <span class="text-xs">تومان</span></p>
          <p class="text-metal-lighter text-xs">{{ ad.time }}</p>
        </div>
      </div>
    </div>

    <!-- ===== LIST VIEW RENDER ===== -->
    <div v-if="view === 'list'" class="card-inner-list group">
      <!-- Image Container (Cinematic Hover) -->
      <div class="relative w-1/3 h-full overflow-hidden rounded-r-2xl">
        <img :src="ad.image" :alt="ad.title" class="absolute inset-0 w-full h-full object-cover transition-transform duration-700 ease-out group-hover:scale-110" />
        <div class="absolute inset-0 bg-gradient-to-r from-transparent to-metal-darker/50"></div>
      </div>

      <!-- Content Container -->
      <div class="w-2/3 p-5 flex flex-col justify-between">
        <div>
          <div class="flex justify-between items-start">
            <h3 class="font-bold text-white text-xl mb-2">{{ ad.title }}</h3>
            <div v-if="ad.isSpecial" class="bg-yellow-400 text-black px-3 py-1 text-xs font-bold rounded-full shadow-md whitespace-nowrap">ویژه</div>
          </div>
          <p class="text-metal-lighter text-sm mb-4">{{ ad.location }}</p>
        </div>
        <div class="flex justify-between items-center">
           <p class="font-bold text-brand-purple-light text-xl">{{ ad.price }} <span class="text-sm">تومان</span></p>
           <p class="text-metal-lighter text-sm">{{ ad.time }}</p>
        </div>
      </div>
    </div>

  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted } from 'vue';

// === PROPS ===
const props = defineProps({
  ad: {
    type: Object,
    required: true,
  },
  view: {
    type: String,
    default: 'grid',
    validator: (value) => ['grid', 'list'].includes(value),
  },
});

// === 3D TILT EFFECT (for Grid View) ===
const cardRef = ref(null);
const cardStyle = ref({});

const onMouseMove = (e) => {
  if (!cardRef.value || props.view !== 'grid') return;
  const { left, top, width, height } = cardRef.value.getBoundingClientRect();
  const x = e.clientX - left;
  const y = e.clientY - top;
  const rotateX = (y - height / 2) / (height / 2) * -10; // Invert for natural feel
  const rotateY = (x - width / 2) / (width / 2) * 10;
  
  cardStyle.value = {
    transform: `perspective(1000px) rotateX(${rotateX}deg) rotateY(${rotateY}deg) scale3d(1.05, 1.05, 1.05)`,
    transition: 'transform 0.1s ease-out'
  };
};

const onMouseLeave = () => {
  cardStyle.value = {
    transform: 'perspective(1000px) rotateX(0) rotateY(0) scale3d(1, 1, 1)',
    transition: 'transform 0.6s cubic-bezier(0.23, 1, 0.32, 1)'
  };
};

onMounted(() => {
  if (cardRef.value) {
    cardRef.value.addEventListener('mousemove', onMouseMove);
    cardRef.value.addEventListener('mouseleave', onMouseLeave);
  }
});

onUnmounted(() => {
  if (cardRef.value) {
    cardRef.value.removeEventListener('mousemove', onMouseMove);
    cardRef.value.removeEventListener('mouseleave', onMouseLeave);
  }
});

// === DYNAMIC CLASSES ===
const cardWrapperClasses = computed(() => [
  'relative',
  'rounded-2xl',
  'transition-all duration-300 ease-in-out',
  'shadow-card',
  'hover:shadow-card-hover',
  {
    // Grid-specific wrapper styles
    'group transform-style-3d': props.view === 'grid',
    // List-specific wrapper styles
    'w-full bg-metal-darker flex overflow-hidden': props.view === 'list',
  }
]);

</script>

<style scoped>
/* Enables the 3D perspective effect for grid view cards */
.transform-style-3d {
  transform-style: preserve-3d;
}

.card-inner-grid {
  @apply w-full h-full bg-metal-darker rounded-2xl overflow-hidden shadow-inner;
  transform: translateZ(20px); /* Gives the card content a bit of depth */
}

.card-inner-list {
  @apply flex w-full h-36;
}
</style>
