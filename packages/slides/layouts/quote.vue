<script setup>
import { computed } from 'vue'

const props = defineProps({
  color: {
    default: 'teal',
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
        <!-- Decorative giant quote mark -->
        <div class="absolute -top-12 -left-8 text-9xl opacity-10 font-serif select-none pointer-events-none quote-mark-color">
          “
        </div>
        
        <div class="relative z-10">
          <div 
            class="font-serif italic leading-relaxed tracking-wide opacity-90 quote-text-color"
            :class="[quotesize]"
          >
            <slot />
          </div>
          
          <div 
            v-if="author" 
            class="mt-8 flex items-center justify-end gap-3 opacity-80 quote-text-color"
            :class="authorsize"
          >
            <div class="h-px w-12 bg-current opacity-50"></div>
            <span class="uppercase tracking-widest font-sans text-sm font-semibold">
              {{ author }}
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