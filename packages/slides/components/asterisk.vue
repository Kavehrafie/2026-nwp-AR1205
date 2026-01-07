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
    <mdi-asterisk class="text-current" />
  </div>
</template>

<style scoped>
.asterisk {
  transition: opacity 0.3s ease;
}
</style>