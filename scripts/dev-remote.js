import { spawn } from 'child_process';
import readline from 'readline';

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log('\n📚 Select course to run slides:');
console.log('  1) AR1205');
console.log('  2) AR2205');
console.log('');

rl.question('Enter choice (1 or 2): ', (answer) => {
  rl.close();
  
  const choice = answer.trim();
  let script;
  
  if (choice === '1') {
    script = 'dev:ar1205';
    console.log('\n🚀 Starting AR1205 slides (remote)...\n');
  } else if (choice === '2') {
    script = 'dev:ar2205';
    console.log('\n🚀 Starting AR2205 slides (remote)...\n');
  } else {
    console.error('❌ Invalid choice. Please enter 1 or 2.');
    process.exit(1);
  }
  
  // Run pnpm command in slides package with --remote flag
  const child = spawn('pnpm', ['--filter', 'slides', script, '--', '--remote'], {
    stdio: 'inherit',
    shell: true
  });
  
  child.on('exit', (code) => {
    process.exit(code);
  });
});
