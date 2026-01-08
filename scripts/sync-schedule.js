#!/usr/bin/env node
/**
 * Typst → Markdown Sync Script
 * 
 * Converts Typst files to Markdown using typlite and adds frontmatter.
 * Syncs both AR1205 and AR2205 course materials (schedule and important-dates).
 * 
 * Usage:
 *   node scripts/sync-schedule.js              # Sync all files
 *   node scripts/sync-schedule.js ar1205       # Sync AR1205 only
 *   node scripts/sync-schedule.js ar2205       # Sync AR2205 only
 * 
 * How it works:
 *   1. Reads course configuration
 *   2. Runs `typlite --root . <source> -` to convert Typst → Markdown
 *   3. Wraps output with YAML frontmatter (title, description)
 *   4. Writes to target .md files
 */

import { execSync } from 'node:child_process';
import { writeFileSync, mkdirSync, readFileSync, existsSync } from 'node:fs';
import { dirname, basename, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
const rootDir = join(__dirname, '..');

// Course configuration
const courses = {
  ar1205: {
    name: 'AR1205',
    title: 'Art History I',
    files: [
      { source: 'packages/materials/AR1205/schedule.typ', target: 'packages/docs/src/content/docs/ar1205/schedule.md', title: 'Course Schedule' },
      { source: 'packages/materials/AR1205/important-dates.typ', target: 'packages/docs/src/content/docs/ar1205/important-dates.md', title: 'Important Dates' },
    ],
  },
  ar2205: {
    name: 'AR2205',
    title: 'Art History II',
    files: [
      { source: 'packages/materials/AR2205/schedule.typ', target: 'packages/docs/src/content/docs/ar2205/schedule.md', title: 'Course Schedule' },
    ],
  },
};

/**
 * Converts a Typst file to Markdown
 */
function convertTypstToMarkdown(sourcePath) {
  const fullPath = join(rootDir, sourcePath);
  
  if (!existsSync(fullPath)) {
    console.warn(`⚠ Source file not found: ${sourcePath}`);
    return null;
  }

  try {
    return execSync(`typlite --root . "${sourcePath}" -`, { 
      encoding: 'utf-8',
      cwd: rootDir,
    });
  } catch (error) {
    console.error(`✗ Failed to convert ${sourcePath}:`, error.message);
    return null;
  }
}

/**
 * Writes Markdown content with frontmatter
 */
function writeMarkdown(targetPath, title, sourceFile, content) {
  const fullPath = join(rootDir, targetPath);
  
  // Create target directory if needed
  mkdirSync(dirname(fullPath), { recursive: true });
  
  // Check if this is an AR1205/AR2205 course page to hide TOC
  const isCoursePage = targetPath.includes('/ar1205/') || targetPath.includes('/ar2205/');
  const tocFrontmatter = isCoursePage ? '\ntoc: false' : '';
  
  // Write with frontmatter
  writeFileSync(fullPath, `---
title: ${title}
description: Auto-generated from ${basename(sourceFile)}${tocFrontmatter}
---

${content}`);

  console.log(`✓ ${sourceFile} → ${targetPath}`);
}

/**
 * Syncs a single file
 */
function syncFile(fileConfig) {
  const { source, target, title } = fileConfig;
  
  const markdown = convertTypstToMarkdown(source);
  
  if (markdown) {
    writeMarkdown(target, title, source, markdown);
    return true;
  }
  
  return false;
}

/**
 * Syncs all files for a course
 */
function syncCourse(courseKey) {
  const course = courses[courseKey];
  
  if (!course) {
    console.error(`✗ Unknown course: ${courseKey}`);
    console.log(`  Available courses: ${Object.keys(courses).join(', ')}`);
    return false;
  }
  
  console.log(`\n📚 Syncing ${course.name} - ${course.title}`);
  
  let successCount = 0;
  for (const file of course.files) {
    if (syncFile(file)) {
      successCount++;
    }
  }
  
  console.log(`  Synced ${successCount}/${course.files.length} file(s)`);
  return successCount > 0;
}

/**
 * Main sync function
 */
function main() {
  const args = process.argv.slice(2);
  
  // If no arguments, sync all courses
  if (args.length === 0) {
    console.log('🔄 Syncing all course materials...\n');
    
    let totalSuccess = 0;
    for (const courseKey of Object.keys(courses)) {
      if (syncCourse(courseKey)) {
        totalSuccess++;
      }
    }
    
    console.log(`\n✓ Synced ${totalSuccess}/${Object.keys(courses).length} course(s)`);
    return;
  }
  
  // Sync specific courses
  const courseKeys = args.map(arg => arg.toLowerCase());
  
  for (const courseKey of courseKeys) {
    syncCourse(courseKey);
  }
}

main();
