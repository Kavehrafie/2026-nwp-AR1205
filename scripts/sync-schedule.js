#!/usr/bin/env node
// Sync course schedule from Typst to Astro docs
// Uses typlite to convert Typst → Markdown

import { execSync } from 'node:child_process';
import { writeFileSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const ROOT = dirname(__dirname);

const SOURCE = join(ROOT, 'packages/materials/md.typ');
const TARGET = join(ROOT, 'packages/docs/src/content/docs/schedule.md');

// Run typlite to convert Typst → Markdown
const markdown = execSync(`typlite "${SOURCE}" -`, { encoding: 'utf-8' });

// Build output with frontmatter
const output = `---
title: Course Schedule
description: Weekly schedule for AR1205
# Auto-generated from packages/materials/md.typ
# Run 'pnpm sync' to update
---

${markdown}`;

writeFileSync(TARGET, output);
console.log(`✓ Synced schedule to ${TARGET}`);
