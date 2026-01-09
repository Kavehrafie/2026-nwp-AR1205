---
theme: neversink
template: cover
background: https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Pieter_Bruegel_the_Elder_-_Hunters_in_the_Snow_%28Winter%29_-_Google_Art_Project.jpg/2560px-Pieter_Bruegel_the_Elder_-_Hunters_in_the_Snow_%28Winter%29_-_Google_Art_Project.jpg
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
color: sky
hideInToc: true
fonts:
  sans: 'Inter'
  serif: 'Playfair Display'
  mono: 'Fira Code'
---

### AR1205

# Intro to the History of Global Art II

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
src: "./pages/ar1205/w1w.md"
---

---
src: "./pages/ar1205/w1f.md"
---

---
layout: center
color: zinc-light
hideInToc: true
---

Upcoming Lesson Content Will Appear Here ...
