// @ts-check
import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

// Define sidebar groups
const ar1205Sidebar = {
	label: 'AR1205',
	items: [
		{ label: 'Home', link: '/ar1205/' },
		{ label: 'Schedule', link: '/ar1205/schedule/' },
		{ label: 'Important Dates', link: '/ar1205/important-dates/' },
		{ label: 'Example Guide', slug: 'ar1205/guides/example' },
		{
			label: 'Reference',
			autogenerate: { directory: 'ar1205/reference' },
		},
	],
};

const ar2205Sidebar = {
	label: 'AR2205',
	items: [
		{ label: 'Home', link: '/ar2205/' },
	],
};

// https://astro.build/config
export default defineConfig({
	site: 'https://nwp2026.kavehrafie.com',
	trailingSlash: 'ignore',
	integrations: [
		starlight({
			title: 'NWP 2026',
			social: [{ icon: 'github', label: 'GitHub', href: 'https://github.com/withastro/starlight' }],
			sidebar: [
				ar1205Sidebar,
				ar2205Sidebar,
			],
			components: {
				Sidebar: './src/components/Sidebar.astro',
			},
		}),
	],
	vite: {
		build: {
			rollupOptions: {
				external: [],
			},
		},
		server: {
			fs: {
				strict: false,
			},
		},
	},
});
