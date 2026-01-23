<script setup lang="ts">
import { ref, watch, computed, onMounted, nextTick, useSlots } from "vue";
import { useSlideContext } from "@slidev/client";
import { tv } from "tailwind-variants";
import { useRTL } from "../composables/useRTL";

const { $clicks } = useSlideContext();

type TimelineEvent = {
  year: string;
  title: string;
  description?: string;
  image?: string;
  variant?: "default" | "stacked";
  icon?: "art" | "war" | "revolution" | "flag";
  color?: string; // Event-specific color override (e.g., "red", "blue", "green")
};

const props = defineProps<{
  events: TimelineEvent[];
  variant?: "horizontal" | "vertical";
  color?: string;
  rtlConfig?: {
    autoDetect?: boolean;
    forceDirection?: 'ltr' | 'rtl';
  };
  // Slot content positioning and behavior
  contentPosition?: "top-left" | "top-right" | "top-center" | "center" | "bottom-left" | "bottom-right" | "bottom-center";
  contentWidth?: string; // CSS width value like "400px", "50%", "auto"
  fadeOnProgress?: boolean; // Whether to fade content as timeline progresses
  // Panel overlay settings
  panelPosition?: "left" | "right" | "both"; // Which side(s) to show panel overlays
  panelWidth?: string; // CSS width for panels (e.g., "350px", "30%")
}>();

// Check if slots are provided - dynamic slot detection
const slots = useSlots();

// Get all panel slots and extract their click numbers
const getPanelSlots = (side: 'left' | 'right') => {
  const pattern = new RegExp(`^panel-${side}-(\\d+)$`);
  const result: { click: number; name: string }[] = [];
  
  for (const slotName of Object.keys(slots)) {
    const match = slotName.match(pattern);
    if (match) {
      result.push({ click: parseInt(match[1], 10), name: slotName });
    }
  }
  
  return result;
};

// Compute active panel for each side based on current click
const activeLeftPanel = computed(() => {
  const panels = getPanelSlots('left');
  // Find the panel that matches current click, or the highest one that's <= current click
  const exact = panels.find(p => p.click === $clicks.value);
  if (exact) return exact;
  return null;
});

const activeRightPanel = computed(() => {
  const panels = getPanelSlots('right');
  const exact = panels.find(p => p.click === $clicks.value);
  if (exact) return exact;
  return null;
});

// Check if any panel slots exist for each side
const hasLeftPanels = computed(() => getPanelSlots('left').length > 0);
const hasRightPanels = computed(() => getPanelSlots('right').length > 0);

const eventRefs = ref<HTMLElement[]>([]);
const timelineContainerRef = ref<HTMLElement | null>(null);

const { directionClasses, isRTL, autoDetectFromSlide } = useRTL({
  autoDetect: props.rtlConfig?.autoDetect ?? true,
  forceDirection: props.rtlConfig?.forceDirection,
  detectFromContent: true
});

const count = computed(() => props.events.length);

const colorscheme = computed(() => {
  return props.color ? `neversink-${props.color}-scheme` : 'neversink-white-scheme';
});

// Dynamic slide color based on current event
const currentSlideColor = computed(() => {
  const currentClick = $clicks.value;
  if (currentClick > 0 && currentClick <= props.events.length) {
    const event = props.events[currentClick - 1];
    if (event.color) {
      return `neversink-${event.color}-scheme`;
    }
  }
  // Fallback to global color or default
  return props.color ? `neversink-${props.color}-scheme` : 'neversink-white-scheme';
});

onMounted(() => {
  // Auto-detect RTL from slide content
  const slideElement = document.querySelector('.slidev-layout');
  if (slideElement instanceof HTMLElement) {
    autoDetectFromSlide(slideElement);
  }
});

// Tailwind variants for timeline styling
const timelineVariants = tv({
  slots: {
    title: "text-xl font-bold",
    line: "grid-timeline h-2",
    event: "relative w-[400px] group flex flex-col justify-between border-l-2",
    content: "flex px-4 gap-2 transition-all duration-300 py-2 items-center",
    year: "font-bold mb-2 px-4 pt-3 dark:text-zinc-500",
    description: "text-sm mt-2 px-4 opacity-80 leading-relaxed",
    image: "max-h-[120px] max-w-[180px] w-auto object-cover rounded shadow-md flex-shrink-0",
    icon: "block text-lg m-auto",
    overlay: "fixed z-30 pointer-events-auto transition-opacity duration-500 ease-out",
  },
  variants: {
    variant: {
      horizontal: {
        timeline: "",
        line: "",
      },
      vertical: {
        timeline: "flex-col",
        line: "w-2 h-full",
        event: "w-full border-l-0 border-t-2",
      },
    },
    contentPosition: {
      "top-left": {
        overlay: "top-4 left-4",
      },
      "top-right": {
        overlay: "top-4 right-4",
      },
      "top-center": {
        overlay: "top-4 left-1/2 transform -translate-x-1/2",
      },
      "center": {
        overlay: "top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2",
      },
      "bottom-left": {
        overlay: "bottom-4 left-4",
      },
      "bottom-right": {
        overlay: "bottom-4 right-4",
      },
      "bottom-center": {
        overlay: "bottom-4 left-1/2 transform -translate-x-1/2",
      },
    },
    iconVariant: {
      war: {
        icon: "i-ph-sword-fill",
      },
      art: {
        icon: "i-ph-paint-brush-fill",
      },
      revolution: {
        icon: "i-ph-hand-fist-fill",
      },
      flag: {
        icon: "i-ph-flag-banner-fold-fill",
      },
    },
    eventVariant: {
      default: {
        year: "text-2xl",
        title: "text-lg",
      },
      stacked: {
        content: "flex-col items-start",
      },
    },
    position: {
      above: {
        event: "grid-upper",
      },
      below: {
        event: "grid-lower flex-col-reverse",
      },
    },
    direction: {
      rtl: {
        event: "border-r-2 border-l-0",
        content: "flex-row-reverse",
        image: "mr-2 ml-0",
      },
      ltr: {
        event: "border-l-2",
        image: "ml-2 mr-0",
      },
    },
  },
  defaultVariants: {
    variant: "horizontal",
    eventVariant: "default",
    direction: "ltr",
    contentPosition: "top-left",
  },
});

const styles = timelineVariants({
  variant: props.variant || "horizontal",
  direction: isRTL.value ? "rtl" : "ltr",
  contentPosition: props.contentPosition || "top-left",
});

// Simple computed for overlay styles
const overlayStyles = computed(() => {
  const width = props.contentWidth || "400px";
  
  // Simple fade: visible at start, fades out with clicks
  let opacity = 1;
  if (props.fadeOnProgress !== false && $clicks.value > 0) {
    // Simple linear fade: each click reduces opacity by 33%
    opacity = 0;
  }
  
  return {
    width,
    opacity,
  };
});

// Panel visibility and styles
const panelLeftStyles = computed(() => {
  const width = props.panelWidth || "350px";
  const isVisible = activeLeftPanel.value !== null;
  
  return {
    width,
    opacity: isVisible ? 1 : 0,
    transform: isVisible ? "translateX(0)" : "translateX(-100%)",
    pointerEvents: isVisible ? "auto" : "none",
  };
});

const panelRightStyles = computed(() => {
  const width = props.panelWidth || "350px";
  const isVisible = activeRightPanel.value !== null;
  
  return {
    width,
    opacity: isVisible ? 1 : 0,
    transform: isVisible ? "translateX(0)" : "translateX(100%)",
    pointerEvents: isVisible ? "auto" : "none",
  };
});

const showPanelLeft = computed(() => {
  return (props.panelPosition === "left" || props.panelPosition === "both") && hasLeftPanels.value;
});

const showPanelRight = computed(() => {
  return (props.panelPosition === "right" || props.panelPosition === "both") && hasRightPanels.value;
});

// Custom smooth scroll function with better easing
const smoothScrollTo = (element: HTMLElement, targetScrollLeft: number, duration: number = 800) => {
  const startScrollLeft = element.scrollLeft;
  const distance = targetScrollLeft - startScrollLeft;
  let startTime: number | null = null;
  
  // Enhanced easing function for ultra-smooth feel (ease-out quartic)
  // This provides a more natural deceleration at the end
  const easeOutQuartic = (t: number): number => {
    return 1 - Math.pow(1 - t, 4);
  };
  
  const animation = (currentTime: number) => {
    if (startTime === null) startTime = currentTime;
    const elapsed = currentTime - startTime;
    const progress = Math.min(elapsed / duration, 1);
    
    const easedProgress = easeOutQuartic(progress);
    element.scrollLeft = startScrollLeft + (distance * easedProgress);
    
    if (progress < 1) {
      requestAnimationFrame(animation);
    }
  };
  
  requestAnimationFrame(animation);
};

// Cache for container dimensions to reduce reflows
const containerCache = ref({
  width: 0,
  maxScroll: 0,
  lastUpdate: 0
});

const updateContainerCache = (container: HTMLElement) => {
  const now = Date.now();
  // Update cache only every 100ms or if values are zero
  if (now - containerCache.value.lastUpdate > 100 || containerCache.value.width === 0) {
    containerCache.value = {
      width: container.clientWidth,
      maxScroll: container.scrollWidth - container.clientWidth,
      lastUpdate: now
    };
  }
};

watch($clicks, async (currentClick) => {
  // Wait for DOM to update after click
  await nextTick();
  
  const container = timelineContainerRef.value;
  if (!container || !eventRefs.value.length) return;

  // Handle the case where currentClick is 0 (initial state)
  if (currentClick === 0) {
    smoothScrollTo(container, 0, 500);
    return;
  }

  const eventIndex = currentClick - 1;
  if (eventIndex >= 0 && eventIndex < eventRefs.value.length) {
    const targetEvent = eventRefs.value[eventIndex];
    if (targetEvent) {
      // Update cache to minimize reflows
      updateContainerCache(container);
      
      // Get the event's position relative to the container
      const eventOffsetLeft = targetEvent.offsetLeft;
      const eventWidth = targetEvent.offsetWidth;
      const { width: containerWidth, maxScroll } = containerCache.value;
      
      // Position event slightly to the right (60% of viewport) to keep previous event visible
      // This places the new event at 60% of the viewport width, leaving 40% on the left for the previous event
      const targetScrollLeft = eventOffsetLeft - (containerWidth * 0.67) + (eventWidth / 2);
      
      // Ensure we don't scroll beyond bounds
      const finalScrollLeft = Math.max(0, Math.min(targetScrollLeft, maxScroll));
      
      // Calculate dynamic duration based on scroll distance for smoother feel
      const scrollDistance = Math.abs(finalScrollLeft - container.scrollLeft);
      const dynamicDuration = Math.min(500 + (scrollDistance / 5), 1000);
      
      // Use custom smooth scroll with better easing and dynamic duration
      smoothScrollTo(container, finalScrollLeft, dynamicDuration);
    }
  }
});
</script>

<template>
  <div 
    class="slidev-layout timeline flex h-full w-full overflow-hidden p-0 relative slidecolor color-scheme-transition"
    :class="[directionClasses, currentSlideColor, { 'flex-row-reverse': isRTL }]"
    :dir="isRTL ? 'rtl' : 'ltr'"
  >
    <!-- Left Panel Overlay -->
    <div 
      v-if="showPanelLeft"
      class="panel-overlay panel-left"
      :style="panelLeftStyles"
    >
      <div class="panel-content">
        <template v-for="panel in getPanelSlots('left')" :key="panel.name">
          <div v-show="activeLeftPanel?.click === panel.click">
            <slot :name="panel.name" />
          </div>
        </template>
      </div>
    </div>

    <!-- Right Panel Overlay -->
    <div 
      v-if="showPanelRight"
      class="panel-overlay panel-right"
      :style="panelRightStyles"
    >
      <div class="panel-content">
        <template v-for="panel in getPanelSlots('right')" :key="panel.name">
          <div v-show="activeRightPanel?.click === panel.click">
            <slot :name="panel.name" />
          </div>
        </template>
      </div>
    </div>

    <!-- Independent content overlay positioned relative to the entire slide -->
    <div 
      :class="styles.overlay()"
      :style="overlayStyles"
    >
      <slot />
    </div>
    
    <!-- Timeline container - completely separate from overlay -->
    <div
      ref="timelineContainerRef"
      class="container-grid h-full w-full overflow-x-auto overflow-y-hidden scrollbar-thin scrollbar-thumb-gray-300 scrollbar-track-transparent"
      :class="{ 'timeline-rtl': isRTL }"
    >
      <!-- Timeline line -->
      <div 
        :class="styles.line()"
      ></div>

      <!-- Timeline events -->
      <v-clicks>
        <div
          v-for="(event, index) in events"
          :key="index"
          :ref="(el) => { if (el) eventRefs[index] = el as HTMLElement }"
          :class="[
            styles.event({
              position: index % 2 === 0 ? 'above' : 'below',
              direction: isRTL ? 'rtl' : 'ltr',
            })
          ]"
          :style="{ 'grid-column-start': index + 2 }"
        >
          <h4 :class="styles.year()">{{ event.year }}</h4>

          <div :class="styles.content({ eventVariant: event.variant })">
            <!-- text content -->
            <div class="flex flex-col flex-1">
              <p
                :class="[styles.title(), { 'text-right': isRTL }]"
                v-html="event.title.replace(/\*(.*?)\*/g, '<i>$1</i>')"
              ></p>
              
              <!-- description -->
              <p
                v-if="event.description"
                :class="[styles.description(), { 'text-right': isRTL }]"
                v-html="event.description.replace(/•/g, '<br>•')"
              ></p>
            </div>

            <!-- image -->
            <img 
              v-if="event.image"
              :src="event.image" 
              :class="[
                styles.image(), 
                styles.image({ direction: isRTL ? 'rtl' : 'ltr' })
              ]"
              loading="lazy"
            />
          </div>

          <!-- Timeline marker with icon -->
          <div
            class="timeline-marker -my-10 -mx-4 rounded-full w-6 h-6 flex justify-center items-center border-3 box-content"
            :class="{ 'timeline-marker-rtl': isRTL }"
          >
            <span 
              v-if="event.icon"
              :class="[styles.icon({ iconVariant: event.icon })]"
            ></span>
          </div>
        </div>
      </v-clicks>
    </div>
  </div>
</template>

<style scoped>
.container-grid {
  display: grid;
  grid-template-rows: 20px 1fr minmax(50px, auto) 1fr 20px;
  grid-template-columns: 50px repeat(v-bind("count"), minmax(300px, 1fr)) 50px;
  min-width: 100%;
  width: max-content;
  gap: 0 20px;
  scroll-behavior: smooth;
  scroll-snap-type: x mandatory;
  /* Hardware acceleration hints */
  will-change: scroll-position;
  transform: translateZ(0);
  -webkit-transform: translateZ(0);
  /* Enable GPU acceleration */
  backface-visibility: hidden;
  -webkit-backface-visibility: hidden;
  /* Enable smooth scrolling with hardware acceleration */
  overflow-x: scroll;
  overflow-y: hidden;
  /* Force GPU layer for smoother scrolling */
  perspective: 1000px;
}

/* RTL version of the grid */
.timeline-rtl.container-grid {
  direction: rtl;
}

.grid-upper {
  grid-row: 2 / 3;
  grid-column: span 1;
  scroll-snap-align: center;
}

.grid-timeline {
  grid-row: 3/4;
  grid-column: 1 / -1;
  align-self: center;
  background-color: var(--neversink-border-color);
}

/* Timeline event borders using neversink theme */
.grid-upper,
.grid-lower {
  border-color: var(--neversink-border-color);
}

.grid-lower {
  grid-row: 4 / 5;
  grid-column: span 1;
  scroll-snap-align: center;
}

/* Timeline marker positioning */
.timeline-marker {
  position: relative;
  z-index: 10;
  background-color: var(--neversink-bg-color);
  border-color: var(--neversink-border-color);
  color: var(--neversink-text-color);
}

.timeline-marker-rtl {
  margin-right: -1rem;
  margin-left: 1rem;
}

/* RTL version of the grid */
.timeline-rtl.container-grid {
  direction: rtl;
}

.grid-upper {
  grid-row: 2 / 3;
  grid-column: span 1;
}

.grid-timeline {
  grid-row: 3/4;
  grid-column: 1 / -1;
  align-self: center;
}

.grid-lower {
  grid-row: 4 / 5;
  grid-column: span 1;
}

/* Timeline marker positioning */
.timeline-marker {
  position: relative;
  z-index: 10;
}

.timeline-marker-rtl {
  margin-right: -1rem;
  margin-left: 1rem;
}

/* Enhanced animations with better easing and hardware acceleration */
.slidev-vclick-target {
  transition: all 600ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
  will-change: transform, opacity;
  transform: translateZ(0);
  -webkit-transform: translateZ(0);
}

/* Smooth transition for entire slide color scheme */
.color-scheme-transition {
  transition: 
    background-color 800ms cubic-bezier(0.25, 0.46, 0.45, 0.94),
    color 800ms cubic-bezier(0.25, 0.46, 0.45, 0.94),
    border-color 800ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.slidev-vclick-target h2 {
  opacity: 1;
  transition-delay: 150ms;
  transition: all 500ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
  will-change: transform, opacity;
}

.slidev-vclick-hidden {
  opacity: 0;
  pointer-events: none;
  transform: translateX(-60px);
  will-change: transform, opacity;
  transition: all 600ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.slidev-vclick-hidden h2 {
  opacity: 0;
  transform: translateY(30px);
  will-change: transform, opacity;
}

/* RTL animation adjustments */
.dir-rtl .slidev-vclick-hidden {
  transform: translateX(60px);
}

/* Custom scrollbar for better UX with neversink theme */
.scrollbar-thin::-webkit-scrollbar {
  height: 6px;
}

.scrollbar-thumb-gray-300::-webkit-scrollbar-thumb {
  background-color: var(--neversink-border-color);
  border-radius: 3px;
  transition: background-color 0.2s ease;
}

.scrollbar-thumb-gray-300::-webkit-scrollbar-thumb:hover {
  background-color: var(--neversink-text-color);
  opacity: 0.7;
}

.scrollbar-track-transparent::-webkit-scrollbar-track {
  background: transparent;
}

/* Responsive adjustments */
@media (max-width: 768px) {
  .container-grid {
    grid-template-columns: 50px repeat(v-bind("count"), minmax(150px, 1fr)) 50px;
  }
}

/* Panel Overlay Styles */
.panel-overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  z-index: 40;
  pointer-events: auto;
  transition: 
    opacity 600ms cubic-bezier(0.25, 0.46, 0.45, 0.94),
    transform 600ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
  will-change: transform, opacity;
  background: linear-gradient(
    to var(--panel-gradient-direction, right),
    var(--neversink-bg-color) 70%,
    transparent 100%
  );
  display: flex;
  align-items: stretch;
}

.panel-left {
  left: 0;
  --panel-gradient-direction: right;
  padding-right: 2rem;
}

.panel-right {
  right: 0;
  --panel-gradient-direction: left;
  padding-left: 2rem;
}

.panel-content {
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 2rem;
  height: 100%;
  width: 100%;
  overflow: hidden;
}

/* Panel content styling */
.panel-content :deep(h1),
.panel-content :deep(h2),
.panel-content :deep(h3),
.panel-content :deep(h4) {
  color: var(--neversink-text-color);
  margin-bottom: 0.75rem;
  flex-shrink: 0;
}

.panel-content :deep(p) {
  color: var(--neversink-text-color);
  opacity: 0.9;
  line-height: 1.6;
  flex-shrink: 0;
}

.panel-content :deep(ul),
.panel-content :deep(ol) {
  color: var(--neversink-text-color);
  padding-left: 1.5rem;
  flex-shrink: 0;
}

.panel-content :deep(img) {
  max-width: 100%;
  max-height: 60vh;
  width: auto;
  height: auto;
  object-fit: contain;
  border-radius: 0.5rem;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
  flex-shrink: 1;
  min-height: 0;
}

/* Ensure inner div also respects height constraints */
.panel-content > div {
  display: flex;
  flex-direction: column;
  justify-content: center;
  height: 100%;
  overflow: hidden;
  gap: 1rem;
}

/* RTL adjustments for panels */
.dir-rtl .panel-left {
  left: auto;
  right: 0;
  --panel-gradient-direction: left;
  padding-left: 2rem;
  padding-right: 0;
}

.dir-rtl .panel-right {
  right: auto;
  left: 0;
  --panel-gradient-direction: right;
  padding-right: 2rem;
  padding-left: 0;
}
</style>