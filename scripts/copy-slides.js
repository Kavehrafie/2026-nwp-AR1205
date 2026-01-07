import { copyFileSync, mkdirSync, readdirSync, statSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const rootDir = join(__dirname, '..');

// Copy built slides from packages/slides/dist to packages/docs/public
function copyRecursiveSync(src, dest) {
  const exists = statSync(src, { throwIfNoEntry: false });
  if (!exists) {
    console.log(`Source directory ${src} does not exist. Run 'pnpm build' in packages/slides first.`);
    return;
  }

  mkdirSync(dest, { recursive: true });

  const entries = readdirSync(src, { withFileTypes: true });

  for (const entry of entries) {
    const srcPath = join(src, entry.name);
    const destPath = join(dest, entry.name);

    if (entry.isDirectory()) {
      copyRecursiveSync(srcPath, destPath);
    } else {
      copyFileSync(srcPath, destPath);
    }
  }
}

console.log('Copying built slides to docs public directory...');

// Copy AR1205 slides to public/ar1205/slides/
copyRecursiveSync(
  join(rootDir, 'packages/slides/dist/ar1205'),
  join(rootDir, 'packages/docs/public/ar1205/slides')
);

// Copy AR2205 slides to public/ar2205/slides/
copyRecursiveSync(
  join(rootDir, 'packages/slides/dist/ar2205'),
  join(rootDir, 'packages/docs/public/ar2205/slides')
);

console.log('Slides copied successfully!');
