# Copilot Instructions for 2026-nwp-AR1205

## Project Overview

This is a **course materials monorepo** for AR1205 (Art History) at Northwestern Polytechnic. It uses a pnpm workspace to manage three packages:

| Package | Purpose | Tech Stack |
|---------|---------|------------|
| `packages/docs` | Course documentation site | Astro + Starlight |
| `packages/slides` | Lecture presentations | Slidev (Vue-based) |
| `packages/materials` | Syllabus & course documents | Typst (latest) |

## Architecture & Data Flow

```
/assets/              → Shared assets (logo.svg) referenced via relative paths
/shared/              → Shared images and data files across packages (planned)
/packages/docs/       → Astro site, serves as root of deployed site
/packages/slides/     → Slidev, deployed under /slides/ path
/packages/materials/  → Typst documents, compiled locally
```

**Typst modular pattern:**
- `params.typ` — Single source of truth: course dates, holidays, session definitions
- `lib/timetable.typ` — Reusable: `session()`, `holiday()`, `holiday-range()`, `schedule()`
- `templates/nwp-syllabus.typ` — Institution-specific document template
- `syllabus.typ` — Main document importing the above

## Developer Workflows

```bash
pnpm install                              # Install all workspace deps

# Local development
cd packages/docs && pnpm dev              # Starlight → localhost:4321
cd packages/slides && pnpm dev            # Slidev → localhost:3030

# Typst (use latest Typst CLI)
typst compile packages/materials/syllabus.typ
```

## Deployment

Deploys to **GitHub Pages** via `.github/workflows/deploy.yml`:
- Docs build → root of site
- Slides build → `/slides/` subdirectory
- Merged into single artifact and deployed

Site URL: `https://26ar1205.kavehrafie.com`

## Typst Conventions

1. **Define sessions in `params.typ`** — enables reordering without touching `syllabus.typ`
2. **Holidays**: `holiday(name, date)` or `holiday-range(name, start, end)`
3. **Class days**: weekday numbers (1=Mon...7=Sun): `class-days = (3, 5)` = Wed/Fri
4. **Imports**: use relative paths `#import "templates/nwp-syllabus.typ": template`

```typst
#let session-intro = session(
  "Introduction & Course Overview",
  [Overview of the course structure, objectives, and assessment methods.],
)
```

## Slidev Conventions

- Main file: `packages/slides/slides.md`
- Vue components in `components/` are auto-imported
- UnoCSS utility classes in templates
- Frontmatter: `base: /slides/` for GitHub Pages deployment

## Starlight Conventions

- Content: `src/content/docs/` as `.md` or `.mdx`
- Sidebar: manually configured in `astro.config.mjs`

## Package Manager

Use **pnpm** (v10.22.0 locally, v9 in CI). Never use npm or yarn.
