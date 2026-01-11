<script setup lang="ts">
import { computed } from 'vue'

const props = withDefaults(defineProps<{
  size?: "small" | "medium" | "large";
  position?: "lt" | "rt" | "lb" | "rb";
  opacity?: number | string;
}>(), {
  size: "medium",
  position: "rt",
  opacity: 1
})

const sizeClasses = computed(() => {
  const sizes = {
    small: "text-2xl",
    medium: "text-4xl",
    large: "text-6xl"
  }
  return sizes[props.size]
})

const positionClasses = computed(() => {
  const positions = {
    lt: "top-8 left-8",
    rt: "top-8 right-8",
    lb: "bottom-8 left-8",
    rb: "bottom-8 right-8"
  }
  return positions[props.position]
})

const opacityValue = computed(() => {
  const num = typeof props.opacity === 'string' ? parseFloat(props.opacity) : props.opacity
  return isNaN(num) ? 1 : num
})

const opacityStyle = computed(() => {
  return { opacity: opacityValue.value }
})
</script>

<template>
  <div 
    class="asterisk absolute slidecolor" 
    :class="[sizeClasses, positionClasses]"
    :style="opacityStyle"
  >
    <!-- Using Slidev's built-in icon system with mdi asterisk icon -->
    <carbon-asterisk class="text-current" />
  </div>
</template>

<style scoped>
@keyframes coolEntrance {
  0% {
    opacity: 0;
    transform: scale(0) rotate(-360deg);
    filter: blur(8px);
  }
  50% {
    opacity: 1;
    transform: scale(1.3) rotate(180deg);
    filter: blur(0);
  }
  70% {
    transform: scale(0.9) rotate(-90deg);
  }
  100% {
    transform: scale(1) rotate(0deg);
  }
}

.asterisk {
  animation: coolEntrance 1s cubic-bezier(0.34, 1.56, 0.64, 1);
  transition: opacity 0.3s ease;
}
</style>