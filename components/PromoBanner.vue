
<template>
  <div class="px-4 py-10">
    <div 
      class="relative rounded-3xl p-8 backdrop-blur-sm border border-metal-light/20 overflow-hidden"
      style="background-image: radial-gradient(circle at top left, rgba(123, 75, 221, 0.2), transparent 40%), radial-gradient(circle at bottom right, rgba(217, 70, 239, 0.15), transparent 50%); background-color: rgba(30, 30, 42, 0.5);"
    >
      <!-- Subtle background pattern -->
      <div class="absolute inset-0 bg-grid-pattern opacity-20"></div>

      <div class="relative z-10">
        <!-- Title and Subtitle -->
        <div class="text-center mb-12">
          <h2 class="text-4xl lg:text-5xl font-extrabold text-white mb-4">
            آگهی خود را <span class="text-purple-400">بیلبورد</span> کنید
          </h2>
          <p class="text-gray-300 max-w-2xl mx-auto text-lg">
            با پلن‌های ویژه، آگهی شما در صدر نتایج و جایگاه‌های خاص نمایش داده می‌شود تا هزاران بار بیشتر دیده شوید.
          </p>
        </div>

        <!-- Pricing Plans Grid -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          
          <!-- Plan Card: 1 Month -->
          <div class="plan-card bg-metal-dark/70 hover:bg-metal-dark/90">
            <div class="plan-header">
              <h3 class="text-xl font-bold">۱ ماهه</h3>
              <p class="text-4xl font-bold text-purple-300">۵۰<span class="text-lg">هزار تومان</span></p>
            </div>
            <button class="plan-button bg-purple-600/80 hover:bg-purple-600">انتخاب پلن</button>
          </div>

          <!-- Plan Card: 3 Months -->
          <div class="plan-card bg-metal-dark/70 hover:bg-metal-dark/90">
            <div class="plan-header">
              <h3 class="text-xl font-bold">۳ ماهه</h3>
              <p class="text-4xl font-bold text-indigo-300">۱۲۰<span class="text-lg">هزار تومان</span></p>
            </div>
            <button class="plan-button bg-indigo-600/80 hover:bg-indigo-600">انتخاب پلن</button>
          </div>

          <!-- Plan Card: 6 Months (Recommended) -->
          <div class="plan-card-recommended bg-gradient-to-br from-indigo-500/80 to-purple-600/80 shadow-glow-purple">
            <div class="absolute top-0 right-0 -mt-3 -mr-3 px-3 py-1 bg-yellow-400 text-black text-sm font-bold rounded-full transform rotate-12 shadow-lg">پیشنهادی</div>
            <div class="plan-header">
              <h3 class="text-xl font-bold">۶ ماهه</h3>
              <p class="text-4xl font-bold text-yellow-300">۲۰۰<span class="text-lg">هزار تومان</span></p>
            </div>
            <button class="plan-button bg-yellow-400 text-black hover:bg-yellow-300">انتخاب پلن</button>
          </div>

          <!-- Plan Card: 12 Months -->
          <div class="plan-card bg-metal-dark/70 hover:bg-metal-dark/90">
            <div class="plan-header">
              <h3 class="text-xl font-bold">۱۲ ماهه</h3>
              <p class="text-4xl font-bold text-pink-300">۳۵۰<span class="text-lg">هزار تومان</span></p>
            </div>
            <button class="plan-button bg-pink-600/80 hover:bg-pink-600">انتخاب پلن</button>
          </div>

        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
</script>

<style scoped>
.bg-grid-pattern {
  background-image: linear-gradient(rgba(255, 255, 255, 0.05) 1px, transparent 1px), linear-gradient(90deg, rgba(255, 255, 255, 0.05) 1px, transparent 1px);
  background-size: 20px 20px;
}

.plan-card, .plan-card-recommended {
  @apply rounded-2xl p-6 text-white text-center flex flex-col justify-between transition-all duration-300 transform hover:-translate-y-2 shadow-lg border border-metal-light/20;
}

.plan-card-recommended {
  /* The custom shadow is now applied directly in the template. */
  /* We still keep other specific styles here. */
  @apply scale-105;
}

.plan-card:hover, .plan-card-recommended:hover {
    @apply border-purple-400/80;
}

.plan-header {
  @apply mb-6;
}

.plan-button {
  @apply w-full py-3 rounded-lg font-semibold transition-all duration-300 shadow-md;
}
</style>
