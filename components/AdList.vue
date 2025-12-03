
<template>
  <div :class="containerClasses">
    <AdCard 
      v-for="ad in ads" 
      :key="ad.id" 
      :ad="ad"
      :view="view"
    />
  </div>
</template>

<script setup>
import { ref, computed, defineProps } from 'vue';
import AdCard from './AdCard.vue';

// --- Props --- //
const props = defineProps({
  view: {
    type: String,
    default: 'grid',
    validator: (value) => ['grid', 'list'].includes(value),
  },
});

// --- Computed Properties --- //
const containerClasses = computed(() => [
  'px-4 pb-28', // Padding bottom to clear the bottom nav
  props.view === 'grid' 
    ? 'grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-x-6 gap-y-10' // A more spacious grid
    : 'flex flex-col gap-6' // A clean list with vertical spacing
]);

// --- Sample Data --- //
const ads = ref([
  { id: 1, title: 'گوشی آیفون ۱۳ پرو', price: '۳۵,۰۰۰,۰۰۰', location: 'تهران، زعفرانیه', time: 'لحظاتی پیش', image: 'https://images.unsplash.com/photo-1633713326906-8ac3b3785936?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80', isSpecial: true },
  { id: 2, title: 'لپتاپ مک‌بوک ایر M2', price: '۴۵,۰۰۰,۰۰۰', location: 'کرج، عظیمیه', time: '۵ دقیقه پیش', image: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80', isSpecial: false },
  { id: 3, title: 'دوربین سونی Alpha 7', price: '۶۰,۰۰۰,۰۰۰', location: 'اصفهان، مرداویج', time: '۱ ساعت پیش', image: 'https://images.unsplash.com/photo-1512790182537-535e67cca7a4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80', isSpecial: true },
  { id: 4, title: 'ست مبلمان چستر', price: '۱۲,۰۰۰,۰۰۰', location: 'شیراز، معالی‌آباد', time: '۳ ساعت پیش', image: 'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80', isSpecial: false },
  { id: 5, title: 'هدفون بی‌سیم Bose 700', price: '۸,۵۰۰,۰۰۰', location: 'مشهد، وکیل‌آباد', time: 'دیروز', image: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80', isSpecial: false },
  { id: 6, title: 'ساعت هوشمند اپل واچ سری ۸', price: '۱۵,۰۰۰,۰۰۰', location: 'تهران، پونک', time: '۲ روز پیش', image: 'https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80', isSpecial: false },
]);

</script>

<style scoped>
/* All styling is now handled by Tailwind CSS classes for maximum flexibility. */
/* The gap between items is adjusted based on the view mode for optimal layout. */
</style>
