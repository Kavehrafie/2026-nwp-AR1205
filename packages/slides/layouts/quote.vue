<script setup>
import { computed } from 'vue'

const props = defineProps({
  color: {
    default: 'zinc-light',
  },
  author: {
    default: null,
  },
  quotesize: {
    default: 'text-4xl', 
  },
  authorsize: {
    default: 'text-xl',
  },
})

const colorscheme = computed(() => {
  return `neversink-${props.color}-scheme`
})
</script>

<template>
  <!-- 
    Refined Layout: 
    - Applies the computed color scheme class (e.g., 'neversink-teal-light-scheme').
    - Uses 'slidecolor' logic (via explicit styles) to react to the theme's variables.
    - If user picks 'teal-light', BG is light, Text is dark.
    - If user picks 'teal', BG is dark, Text is light.
  -->
  <div class="slidev-layout quote h-full grid place-content-center" :class="colorscheme">
    <div class="quote-wrapper h-full w-full grid place-content-center">
      <div class="quote-container relative max-w-4xl mx-auto px-12 z-10">
        <!-- Decorative quote mark SVG -->
        <div class="absolute -top-12 -left-10 w-28 h-28 select-none pointer-events-none quote-mark-color">
          <svg viewBox="0 0 36 36" class="w-full h-full">
            <path d="M11.86,16.55a4.31,4.31,0,0,0-2.11.56,14.44,14.44,0,0,1,4.36-6,1.1,1.1,0,0,0-1.4-1.7c-4,3.25-5.78,7.75-5.78,10.54A5.08,5.08,0,0,0,10,24.58a4.4,4.4,0,0,0,1.88.44,4.24,4.24,0,1,0,0-8.47Z" fill="currentColor" opacity="0.2"/>
            <path d="M23,16.55a4.29,4.29,0,0,0-2.11.56,14.5,14.5,0,0,1,4.35-6,1.1,1.1,0,1,0-1.39-1.7c-4,3.25-5.78,7.75-5.78,10.54a5.08,5.08,0,0,0,3,4.61A4.37,4.37,0,0,0,23,25a4.24,4.24,0,1,0,0-8.47Z" fill="currentColor" opacity="0.2"/>
          </svg>
        </div>
        
        <div class="relative z-10">
          <div 
            v-motion
            :initial="{ opacity: 0, y: 20 }"
            :enter="{ opacity: 0.9, y: 0, transition: { duration: 800, ease: 'easeOut' } }"
            class="font-serif italic leading-relaxed tracking-wide quote-text-color"
            :class="[quotesize]"
          >
            <slot />
          </div>
          
          <div 
            v-if="author"
            v-motion
            :initial="{ opacity: 0, x: -20 }"
            :enter="{ opacity: 0.8, x: 0, transition: { duration: 600, delay: 400, ease: 'easeOut' } }"
            class="mt-8 flex items-center justify-end gap-3 quote-text-color"
            :class="authorsize"
          >
            <div class="h-px w-12 bg-current opacity-50"></div>
            <span class="uppercase tracking-widest font-sans text-sm font-semibold" v-html="author">
            </span>
          </div>
        </div>
      </div>
    
      <!-- Bottom accent line -->
      <div class="absolute bottom-0 left-0 w-full h-2 opacity-40 quote-accent-bg"></div>
    </div>
  </div>
</template>

<style>
/* 
  We manually apply the theme variables. 
  When the 'neversink-X-scheme' class is present on the root, 
  it redefines these variables for that scope.
*/
.slidev-layout.quote {
  background-color: var(--neversink-bg-color);
  color: var(--neversink-text-color);
}

.quote-mark-color {
  /* Use the text color for the mark creates a subtle watermark effect 
     (since we used opacity 0.10 in utility classes) */
  color: var(--neversink-text-color);
}

.quote-text-color {
  color: var(--neversink-text-color);
}

.quote-accent-bg {
  background-color: var(--neversink-accent-color);
}
</style>