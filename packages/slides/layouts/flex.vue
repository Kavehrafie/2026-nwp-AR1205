<script setup lang="ts">
import { computed } from 'vue'
import { useSlideContext } from '@slidev/client'

const { $frontmatter } = useSlideContext()

// Access title and level from frontmatter
// Note: In template, Vue auto-unwraps computed refs, but we need to ensure proper reactivity
const level = computed(() => $frontmatter.value?.level || 3)
const HeadingTag = computed(() => `h${level.value}` as 'h1' | 'h2' | 'h3' | 'h4' | 'h5' | 'h6')
</script>

<template>
  <div class="slidev-layout w-full h-full flex flex-col px-4 py-8">
    <!-- Title section if title exists -->
    <!-- Using $frontmatter directly is more reliable in Slidev -->
    <div v-if="$frontmatter.title" class="mb-4">
      <component :is="HeadingTag" v-html="$frontmatter.title" />
    </div>
    
    <!-- Flexible image container -->
    <div class="flex gap-4 flex-1 items-center justify-center overflow-hidden">
      <slot />
    </div>
  </div>
</template>

<style scoped>
/* Make images fit within the flex container */
.slidev-layout :deep(img) {
  max-height: 90%;
  max-width: 100%;
  width: auto;
  height: auto;
  object-fit: contain;
}

/* Ensure p tags containing images take full space */
.slidev-layout :deep(p) {
  display: flex;
  align-items: center;
  justify-content: center;
  flex: 1;
  margin: 0;
  max-height: 100%;
}
</style>