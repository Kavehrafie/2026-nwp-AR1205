import { ref, computed, watch } from "vue";
import { useStorage } from "@vueuse/core";

export interface RTLConfig {
  autoDetect: boolean;
  forceDirection?: "ltr" | "rtl";
  detectFromContent: boolean;
}

// RTL Unicode ranges for major RTL scripts
const RTL_REGEX =
  /[\u0590-\u05FF\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF\uFB50-\uFDFF\uFE70-\uFEFF]/;

export function useRTL(
  config: RTLConfig = { autoDetect: true, detectFromContent: true }
) {
  // Persistent user preference
  const userDirection = useStorage(
    "slidev-theme-direction",
    "auto" as "auto" | "ltr" | "rtl"
  );

  // Current slide content for auto-detection
  const currentContent = ref("");

  // Detect RTL characters in text
  const detectRTLInText = (text: string): boolean => {
    return RTL_REGEX.test(text);
  };

  // Calculate direction based on content
  const detectedDirection = computed(() => {
    if (!config.detectFromContent || !currentContent.value) return "ltr";

    const rtlCharCount = (currentContent.value.match(RTL_REGEX) || []).length;
    const totalChars = currentContent.value.replace(/\s/g, "").length;

    // If more than 30% of characters are RTL, consider it RTL content
    return totalChars > 0 && rtlCharCount / totalChars > 0.3 ? "rtl" : "ltr";
  });

  // Final computed direction
  const direction = computed(() => {
    if (config.forceDirection) return config.forceDirection;
    if (userDirection.value !== "auto") return userDirection.value;
    if (config.autoDetect) return detectedDirection.value;
    return "ltr";
  });

  // Computed properties for easier usage
  const isRTL = computed(() => direction.value === "rtl");
  const isLTR = computed(() => direction.value === "ltr");

  // CSS classes for direction
  const directionClasses = computed(() => ({
    "dir-rtl": isRTL.value,
    "dir-ltr": isLTR.value,
    "text-right": isRTL.value,
    "text-left": isLTR.value,
  }));

  // Logical CSS properties helpers
  const logicalProps = computed(() => ({
    marginStart: isRTL.value ? "margin-right" : "margin-left",
    marginEnd: isRTL.value ? "margin-left" : "margin-right",
    paddingStart: isRTL.value ? "padding-right" : "padding-left",
    paddingEnd: isRTL.value ? "padding-left" : "padding-right",
    borderStart: isRTL.value ? "border-right" : "border-left",
    borderEnd: isRTL.value ? "border-left" : "border-right",
    insetStart: isRTL.value ? "right" : "left",
    insetEnd: isRTL.value ? "left" : "right",
  }));

  // Apply direction to document
  const applyDirection = () => {
    if (typeof document !== "undefined") {
      document.documentElement.dir = direction.value;
      document.documentElement.setAttribute("data-direction", direction.value);
    }
  };

  // Watch for direction changes and apply to document
  watch(direction, applyDirection, { immediate: true });

  // Methods to update content and direction
  const updateContent = (content: string) => {
    currentContent.value = content;
  };

  const setDirection = (dir: "auto" | "ltr" | "rtl") => {
    userDirection.value = dir;
  };

  const toggleDirection = () => {
    setDirection(isRTL.value ? "ltr" : "rtl");
  };

  // Auto-detect from slide elements
  const autoDetectFromSlide = (slideElement?: HTMLElement) => {
    if (!slideElement || !config.detectFromContent) return;

    const textContent =
      slideElement.innerText || slideElement.textContent || "";
    updateContent(textContent);
  };

  return {
    direction,
    isRTL,
    isLTR,
    directionClasses,
    logicalProps,
    userDirection,
    detectedDirection,
    detectRTLInText,
    updateContent,
    setDirection,
    toggleDirection,
    autoDetectFromSlide,
    applyDirection,
  };
}