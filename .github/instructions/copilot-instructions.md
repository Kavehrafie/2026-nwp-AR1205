# Copilot Instructions for 2026-nwp-AR1205

## Project Overview

This is a **course materials monorepo** for **Art History courses** (AR1205, AR2205) at Northwestern Polytechnic. It uses a pnpm workspace to manage three packages:

| Package | Purpose | Tech Stack |
|---------|---------|------------|
| `packages/docs` | Course documentation site | Astro + Starlight |
| `packages/slides` | Lecture presentations | Slidev (Vue-based) |
| `packages/materials` | Syllabus & course documents | Typst (latest) |

## Multi-Course Structure

The repository supports **multiple courses**, each with its own:
- `packages/materials/{COURSE}/` — Typst params, schedule, syllabus
- `packages/docs/src/content/docs/{course}/` — Documentation pages
- `packages/slides/pages/{course}/` — Weekly slide files (e.g., `w1f.md`, `w2w.md`)
- `packages/slides/slides.{course}.md` — Main slide entry file

Current courses: **AR1205**, **AR2205**

## Architecture & Data Flow

```
/assets/                        → Shared assets (logo.svg) referenced via relative paths
/shared/                        → Shared images and data files across packages
/packages/docs/                 → Astro site, serves as root of deployed site
/packages/slides/               → Slidev, deployed under /slides/ path
/packages/materials/            → Typst documents, compiled locally
/packages/materials/AR1205/     → AR1205-specific params, schedule, syllabus
/packages/materials/AR2205/     → AR2205-specific params, schedule, syllabus
/packages/materials/lib/        → Shared Typst utilities (timetable.typ)
/packages/materials/templates/  → Shared document templates (nwp-syllabus.typ)
```

**Typst modular pattern (per course):**
- `{COURSE}/params.typ` — Single source of truth: course dates, holidays, session definitions
- `{COURSE}/schedule.typ` — Course schedule using timetable lib
- `{COURSE}/syllabus.typ` — Main document importing params and templates
- `lib/timetable.typ` — Shared: `session()`, `holiday()`, `holiday-range()`, `schedule()`
- `templates/nwp-syllabus.typ` — Institution-specific document template (uses `@preview/abbr` package)

## Developer Workflows

```bash
pnpm install                              # Install all workspace deps

# Local development
cd packages/docs && pnpm dev              # Starlight → localhost:4321
cd packages/slides && pnpm dev            # Slidev → localhost:3030

# Typst (use VS Code tasks or CLI)
# VS Code: Run Task → "Build AR1205 Syllabus" or "Build AR2205 Syllabus" or "Build All Syllabi"
typst compile --root . packages/materials/AR1205/syllabus.typ packages/materials/outputs/AR1205_Syllabus.pdf
typst compile --root . packages/materials/AR2205/syllabus.typ packages/materials/outputs/AR2205_Syllabus.pdf
```

## Deployment

Deploys to **GitHub Pages** via `.github/workflows/deploy.yml`:
- Docs build → root of site
- Slides build → `/slides/` subdirectory
- Merged into single artifact and deployed

Site URL: `https://nwp2026.kavehrafie.com`

## Typst Conventions

1. **Define sessions in `{COURSE}/params.typ`** — enables reordering without touching `syllabus.typ`
2. **Holidays**: `holiday(name, date)` or `holiday-range(name, start, end)`
3. **Class days**: weekday numbers (1=Mon...7=Sun): `class-days = (3, 5)` = Wed/Fri
4. **Imports**: use relative paths from the course folder `#import "../templates/nwp-syllabus.typ": template`
5. **Abbreviations**: define in `params.typ` as tuple array, used via `@preview/abbr` package

```typst
#let session-intro = session(
  "Introduction & Course Overview",
  [Overview of the course structure, objectives, and assessment methods.],
)

#let abbreviations = (
  ("CCMEA", "Cultural Contact and the Making of European Art since the Age of Exploration"),
)
```

## Slidev Conventions

- Entry files: `packages/slides/slides.ar1205.md`, `slides.ar2205.md`
- Weekly slides: `packages/slides/pages/{course}/w{N}{day}.md` (e.g., `w1f.md` = Week 1 Friday)
- Vue components in `components/` are auto-imported
- Custom layouts in `layouts/` (cover, timeline, grid-compare, etc.)
- UnoCSS utility classes in templates
- Theme: `neversink`

## Starlight Conventions

- Content: `src/content/docs/{course}/` as `.md` or `.mdx`
- Sidebar: manually configured per course in `astro.config.mjs`
- Course pages: index, schedule, important-dates, guides/, reference/

## Package Manager

Use **pnpm** (v10+ locally, v9 in CI). Never use npm or yarn.
