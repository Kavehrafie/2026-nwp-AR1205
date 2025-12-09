// @ts-check
import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

// https://astro.build/config
export default defineConfig({
	site: 'https://nwp2026.kavehrafie.com',
	integrations: [
		starlight({
			title: 'NWP 2026',
			social: [{ icon: 'github', label: 'GitHub', href: 'https://github.com/withastro/starlight' }],
			sidebar: [
				{
					label: 'AR1205',
					items: [
						{ label: 'Home', link: '/ar1205/' },
						{ label: 'Example Guide', slug: 'ar1205/guides/example' },
						{
							label: 'Reference',
							autogenerate: { directory: 'ar1205/reference' },
						},
					],
				},
				{
					label: 'AR2205',
					items: [
						{ label: 'Home', link: '/ar2205/' },
					],
				},
			],
		}),
	],
});
