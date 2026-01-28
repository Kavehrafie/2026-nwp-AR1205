<script setup lang="ts">
import { computed } from 'vue'
import { useSlideContext } from '@slidev/client'
import { compute_alignment, compute_column_size } from 'slidev-theme-neversink/layoutHelper'

const { $clicks } = useSlideContext()

const props = defineProps<{
  columns?: string | string[]
  align?: string
  color?: string
}>()

// Default values
const columnsDefault = 'is-one-half'
const alignDefault = 'lt-lt'
const colorDefault = 'white'

const alignment = computed(() => {
  const alignValue = props.align ?? alignDefault
  const parts = alignValue.split('-')
  return { l: compute_alignment(parts[0]), r: compute_alignment(parts[1]) }
})

// Support both string and array for columns
// - String: static column width (e.g., 'is-8')
// - Array: animated column widths based on clicks (e.g., ['is-6', 'is-8', 'is-4'])
// Extended to support is-0 (hide left) and is-12 (hide right)
const colwidth = computed(() => {
  // More defensive default check - handle undefined, null, and empty string
  const columnsValue = (props.columns && props.columns.length > 0) ? props.columns : columnsDefault
  
  // Helper to compute size with extended support for is-0 and is-12
  const computeSize = (val: string) => {
    // Handle edge cases not in theme's layoutHelper
    if (val === 'is-0' || val === 'is-0-12') {
      return { l: 0, r: 12 }
    }
    if (val === 'is-12' || val === 'is-12-0') {
      return { l: 12, r: 0 }
    }
    // Handle is-one-half explicitly for default 50-50 split
    if (val === 'is-one-half' || val === 'is-6' || val === 'is-6-6') {
      return { l: 6, r: 6 }
    }
    // Use theme's compute_column_size for standard values
    return compute_column_size(val)
  }
  
  // If it's a string, use the original behavior
  if (typeof columnsValue === 'string') {
    return computeSize(columnsValue)
  }
  
  // If it's an array, select based on current click
  if (Array.isArray(columnsValue) && columnsValue.length > 0) {
    // Clamp the click index to available configurations
    const clickIndex = Math.min($clicks.value, columnsValue.length - 1)
    const selectedConfig = columnsValue[Math.max(0, clickIndex)]
    return computeSize(selectedConfig)
  }
  
  // Fallback to default - always return 6-6 for half-half
  return { l: 6, r: 6 }
})

// Compute grid-template-columns using fr units (animatable)
const gridTemplateColumns = computed(() => {
  const col = colwidth.value
  // Ensure we have valid l and r values, default to 6-6 (half-half)
  const l = (col && typeof col.l === 'number') ? col.l : 6
  const r = (col && typeof col.r === 'number') ? col.r : 6
  // Using fr units allows CSS to animate the grid columns
  return `${l}fr ${r}fr`
})

const colorscheme = computed(() => {
  return `neversink-${props.color ?? colorDefault}-scheme`
})

// Computed properties to hide columns when width is 0
const hideLeft = computed(() => colwidth.value.l === 0)
const hideRight = computed(() => colwidth.value.r === 0)

// Remove gap when one column is hidden
const gridGap = computed(() => (hideLeft.value || hideRight.value) ? '0' : '1rem')
</script>

<!-- default.vue -->
<template>
  <div
    v-if="colwidth == 'error' || alignment.l == 'error' || alignment.r == 'error'"
    class="slidev-layout default error"
  >
    <span class="ns-c-warning"><b>Error</b>: invalid layout params.</span>
    <hr />
    <p>
      There are two parameters: <code>columns</code> and <code>align</code>. Currently:
      <code>columns: {{ props.columns }}</code> and <code>align: {{ props.align }}</code
      >.
    </p>
    <p>
      Options for <code>columns</code> are divided into 12 column units. So with <code>columns: is-1-11</code> the left
      column is 1/12 wide and the the right columns is 11/12 wide. The component admits a short had of only specifying
      the left column (<code>columns: is-1</code> does the same thing). In addition there are short hands like
      <code>columns: is-one-quarter</code> which resolves to <code>is-3-9</code>, etc...
    </p>
    <p>
      <b>Animated columns:</b> You can also pass an array of column values to animate between clicks:
      <code>columns: ['is-6', 'is-8', 'is-4']</code>. The columns will transition smoothly on each click.
    </p>
    <p>
      Here are a bunch of examples:
      <code>
        is-1, is-2, is-3, is-4, is-5, is-6, is-7, is-8, is-9, is-10, is-11, is-1-11, is-2-10, is-3-9, is-4-8, is-5-7,
        is-6-6, is-7-5, is-8-4, is-9-3, is-10-2, is-11-1, is-one-quarter, is-one-third, is-one-half, is-two-thirds,
        is-three-quarters
      </code>
    </p>
    <p>In addition you can specify "slots" of the page with <code>:: left ::</code>, and <code>:: right::</code>.</p>
    <p>
      The <code>align</code> parameter determines how the columns look. The notation is for example
      <code>align: cm-cm</code>. The first part is for the left column, and the second part is for the right column. The
      first letter is (<code>c</code> for center, <code>l</code> for left, <code>r</code> for right). The second letter
      is vertical alignment (<code>t</code> for top, <code>m</code> for middle, <code>b</code> for bottom).
    </p>
  </div>
  <div v-else class="slidev-layout default two-cols slidecolor h-full" :class="colorscheme" :style="{ gridTemplateColumns: gridTemplateColumns, gap: gridGap }">
    <div v-if="$slots.left" class="left-col h-110" :class="[alignment.l, { 'col-hidden': hideLeft }]">
      <slot name="left" />
    </div>

    <div v-if="$slots.right" class="right-col h-110" :class="[alignment.r, { 'col-hidden': hideRight }]">
      <slot name="right" />
    </div>

    <div v-if="$slots.default" class="end-footer ">
      <slot name="default" />
    </div>
  </div>
</template>

<style scoped>
.two-cols {
  display: grid;
  grid-template-columns: 1fr 1fr; /* fallback default */
  grid-template-rows: 1fr auto; /* content row + optional footer */
  transition: grid-template-columns 0.5s cubic-bezier(0.4, 0, 0.2, 1), gap 0.5s ease;
  gap: 1rem;
}

.two-cols .left-col,
.two-cols .right-col {
  overflow: visible;
  transition: opacity 0.5s ease-in-out;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  min-width: 0; /* Allow columns to shrink below content size */
}

.two-cols .left-col > *,
.two-cols .right-col > * {
  width: 100%;
  text-align: center;
}

/* Hide column content when width is 0 - clip content as it collapses */
.two-cols .col-hidden {
  opacity: 0;
  overflow: hidden;
  pointer-events: none;
}

.end-footer {
  grid-column: 1 / -1; /* full width */
  margin-bottom: 1rem;
}

.footer {
  grid-column: 1 / -1; /* full width */
  margin-bottom: 1rem;
}

.footnotes-sep {
  visibility: hidden;
}
</style>