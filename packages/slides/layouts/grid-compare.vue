<script setup lang="ts">
import { computed } from 'vue'
import { useSlideContext } from '@slidev/client'

const { $frontmatter, $clicks } = useSlideContext()

const level = computed(() => $frontmatter.value?.level || 2)
const HeadingTag = computed(() => `h${level.value}` as 'h1' | 'h2' | 'h3' | 'h4' | 'h5' | 'h6')

const parseColSize = (value: string | number | undefined, defaultSize: number): number => {
  if (typeof value === 'number') return value
  if (typeof value === 'string') {
    const match = value.match(/is-(\d+)/)
    if (match) return parseInt(match[1])
  }
  return defaultSize
}

const startSize = computed(() => parseColSize($frontmatter.value?.start, 12))
const endSize = computed(() => parseColSize($frontmatter.value?.end, 6))

const gridTemplate = computed(() => 
  $clicks.value >= 1 
    ? `${endSize.value}fr ${12 - endSize.value}fr`
    : `${startSize.value}fr 0fr`
)
</script>

<template>
  <div class="slidev-layout w-full h-full flex flex-col px-4 py-8">
    <!-- Title section if title exists -->
    <div v-if="$frontmatter.title" class="mb-4">
      <component :is="HeadingTag" v-html="$frontmatter.title" />
    </div>
    
    <div 
      class="grid-compare-container flex-1 grid gap-4 items-start overflow-hidden"
      :style="{ gridTemplateColumns: gridTemplate }"
    >
      <div class="flex flex-col items-center justify-start h-full overflow-hidden">
        <slot name="left">
          <slot />
        </slot>
      </div>
      
      <div 
        v-motion
        :initial="{ opacity: 0 }"
        :click-1="{ opacity: 1 }"
        class="flex flex-col items-center justify-start h-full overflow-hidden"
      >
        <slot name="right" />
      </div>
    </div>
  </div>
</template>

<style scoped>
.grid-compare-container {
  transition: grid-template-columns 0.6s ease;
}

.grid-compare-container :deep(p) {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin: 0;
  width: 100%;
  height: 100%;
}

.grid-compare-container :deep(img) {
  width: 100%;
  height: auto;
  max-height: 85%;
  object-fit: contain;
}
</style>
