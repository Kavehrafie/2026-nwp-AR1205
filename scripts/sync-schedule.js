#!/usr/bin/env node
/**
 * Typst → Markdown Sync Script
 * 
 * Converts a Typst file to Markdown using typlite and adds frontmatter.
 * 
 * Usage:
 *   node scripts/sync-schedule.js <source.typ> <target.md> [title]
 * 
 * Example:
 *   node scripts/sync-schedule.js packages/materials/schedule.typ packages/docs/src/content/docs/schedule.md "Course Schedule"
 * 
 * How it works:
 *   1. Takes source .typ file path and target .md file path as arguments
 *   2. Runs `typlite <source> -` to convert Typst → Markdown (outputs to stdout)
 *   3. Wraps the output with YAML frontmatter (title, description)
 *   4. Writes to the target .md file
 */

import { execSync } from 'node:child_process';
import { writeFileSync, mkdirSync } from 'node:fs';
import { dirname, basename } from 'node:path';

const [source, target, title] = process.argv.slice(2);

if (!source || !target) {
  console.error('Usage: node scripts/sync-schedule.js <source.typ> <target.md> [title]');
  process.exit(1);
}

// Auto-generate title from filename: "schedule.md" → "Schedule"
const pageTitle = title || basename(target, '.md').replace(/-/g, ' ').replace(/\b\w/g, c => c.toUpperCase());

// Create target directory if needed
mkdirSync(dirname(target), { recursive: true });

// Convert Typst → Markdown via typlite
const markdown = execSync(`typlite "${source}" -`, { encoding: 'utf-8' });

// Write with frontmatter
writeFileSync(target, `---
title: ${pageTitle}
description: Auto-generated from ${basename(source)}
---

${markdown}`);

console.log(`✓ ${source} → ${target}`);
