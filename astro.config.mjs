// @ts-check
import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
  site: 'https://4x10-dev.github.io',
  base: process.env.GITHUB_PAGES === 'true' ? '/website' : '/',
  devToolbar: {
    enabled: false,
  },
});
