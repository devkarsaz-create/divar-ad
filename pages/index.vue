
<template>
  <div>
    <SearchBar class="my-6" />
    <CategoryGrid />
    <ClientOnly>
      <AdList />
    </ClientOnly>
  </div>
</template>

<script setup>
import SearchBar from '~/components/SearchBar.vue';
import CategoryGrid from '~/components/CategoryGrid.vue';
import AdList from '~/components/AdList.vue';
</script>
