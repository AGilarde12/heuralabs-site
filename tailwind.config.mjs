/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      fontFamily: {
        mono: ['"JetBrains Mono"', '"Fira Code"', 'monospace'],
      },
      colors: {
        bg: '#0a0a0a',
        surface: '#111111',
        border: '#1a1a1a',
        accent: '#00ff88',
        'accent-dim': '#00cc6a',
        muted: '#666666',
        subtle: '#333333',
      },
    },
  },
  plugins: [],
};
