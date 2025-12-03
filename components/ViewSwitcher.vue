<script setup lang="ts">
const emit = defineEmits<{ (e: 'viewChange', view: 'grid' | 'list'): void }>();

function switchView(view: 'grid' | 'list') {
  emit('viewChange', view);
}
</script>

<template>
  <div class="view-switcher">
    <button @click="switchView('grid')" class="switch-button" title="نمایش گرید">
      <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="3" width="7" height="7"></rect><rect x="14" y="3" width="7" height="7"></rect><rect x="14" y="14" width="7" height="7"></rect><rect x="3" y="14" width="7" height="7"></rect></svg>
    </button>
    <button @click="switchView('list')" class="switch-button" title="نمایش لیست">
      <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><line x1="8" y1="6" x2="21" y2="6"></line><line x1="8" y1="12" x2="21" y2="12"></line><line x1="8" y1="18" x2="21" y2="18"></line><line x1="3" y1="6" x2="3.01" y2="6"></line><line x1="3" y1="12" x2="3.01" y2="12"></line><line x1="3" y1="18" x2="3.01" y2="18"></line></svg>
    </button>
  </div>
</template>

<style scoped>
.view-switcher {
  display: flex;
  background-color: var(--surface-color);
  border-radius: 12px;
  padding: 5px;
  border: 1px solid var(--border-color);
  box-shadow: inset 0 2px 4px rgba(0,0,0,0.3);
}

.switch-button {
  background: transparent;
  border: none;
  color: var(--text-color-darker);
  padding: 8px 10px;
  cursor: pointer;
  border-radius: 8px;
  transition: all 0.3s ease;
}

.switch-button:hover {
  color: var(--text-color);
  background-color: rgba(255, 255, 255, 0.05);
}

.switch-button.active, .switch-button:focus {
  color: var(--primary-glow-color);
  background-color: rgba(0, 229, 255, 0.1);
  box-shadow: 0 0 10px rgba(0, 229, 255, 0.3);
  outline: none;
}
</style>
