<script setup lang="js">
import { computed } from 'vue'

const props = defineProps({
  color: {
    default: 'white',
  },
  background: {
    default: '',
  },
})


const colorscheme = computed(() => {
  return `neversink-${props.color}-scheme`
})

const bgImageStyle = computed(() => {
  return props.background ? `url(${props.background})` : ''
})



</script>

<template>
  <div class="slidev-layout cover h-full slidecolor" :class="colorscheme" :style="{ '--bg-image-url': bgImageStyle }">
    <div class="overlay backdrop-blur-sm absolute inset-0 slidecolor opacity-50"  v-if="!!background" />
    <div class="myauto w-full z-1">
      <slot />
    </div>
    <div class="note absolute bottom-3 z-1">
      <slot name="note" />
    </div>
  </div>
</template>

<style>
/* cover slide type */

.slidev-layout.cover {
  font-family: var(--neversink-main-font);
  background-image: var(--bg-image-url);
  background-size: cover;
  font-weight: 300;
}

.slidev-layout.cover {
  margin-bottom: 0px;
}


.slidev-layout.cover p {
  letter-spacing: 0.05em;
  font-size: 0.85em;
  line-height: 1.4em;
}

.slidev-layout.cover strong {
  font-weight: 500;
}

.slidev-layout.cover .note {
  font-weight: 300;
  font-size: 0.9rem;
  margin-right: 200px;
}

.slidev-layout.cover h1 {
  font-family: var(--neversink-title-font);
  font-weight: 500;
  font-size: 3em;
  line-height: normal;
  margin-bottom: 0.9rem;
  margin-top: 40px;
}

.slidev-layout.cover h2 {
  font-family: var(--neversink-title-font);
  font-weight: 500;
  font-size: 2.5em;
  line-height: normal;
  margin-bottom: 0.9rem;
  margin-top: 40px;
}

.slidev-layout.cover h3 {
  font-family: var(--neversink-title-font);
  font-weight: 500;
  font-size: 1.9em;
  line-height: normal;
  margin-bottom: 0.9rem;
  margin-top: 40px;
}

.slidev-layout.cover h1 + p {
  padding: 0;
  margin: 0;
  opacity: 1;
}

.slidev-layout.cover h2 + p {
  padding: 0;
  margin: 0;
  opacity: 1;
}

.slidev-layout.cover h3 + p {
  padding: 0;
  margin: 0;
  opacity: 1;
}

/* this is specific to this instance */
.slidev-layout.cover h1,
.slidev-layout.cover h2 {
  padding-bottom: 0.3em;
  border-bottom: 1px solid var(--neversink-highlight-color);
}
</style>

