---
theme: neversink
template: cover
background: https://res.cloudinary.com/image-solar/image/upload/v1767926061/2026nwp-ar2205/Screen_Shot_2026-01-03_at_11.27.37_xhb1rq.png
title: AR1205 Presentation
info: |
  ## AR1205 Materials
  Presentation slides for developers and students.
class: text-center
drawings:
  persist: false
transition: slide-left
mdc: true
duration: 35min
color: violet-light
hideInToc: true
fonts:
  provider: google
---

### AR2205

# Art Since 1945

<div @click="$slidev.nav.next" class="mt-12 py-1 cursor-pointer" hover:bg="white op-10">
  Press Space for TOC <carbon:arrow-right />
</div>

<div class="abs-br m-6 text-xl flex gap-2">
  <button @click="$slidev.nav.openInEditor()" title="Open in Editor" class="slidev-icon-btn">
    <carbon:edit />
  </button>
  <a href="https://github.com/slidevjs/slidev" target="_blank" class="slidev-icon-btn">
    <carbon:logo-github />
  </a>
</div>

---
transition: fade-out
hideInToc: true
---

## Table of Contents

<br>

<Toc minDepth="1" maxDepth="1" columns="3" />

<NWPLogo size="medium" class="absolute bottom-10 right-10" />

---
src: "./pages/ar2205/w1f.md"
---

---
layout: center
color: zinc-light
hideInToc: true
---

Upcoming Lesson Content Will Appear Here ...
