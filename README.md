# Personal-site

My personal site, built with [Astro](https://astro.build/) and the [Spectre](https://github.com/louisescher/spectre) theme. Hosted at [laming.dev](https://laming.dev/)

## Content

| What | Where |
|------|-------|
| Blog posts | `src/content/posts/` |
| Projects | `src/content/projects/` |
| Bio & about | `src/content/info.json` |
| Social links | `src/content/socials.json` |
| Work experience | `src/content/work.json` |
| Tags | `src/content/tags.json` |
| Profile picture | `src/assets/pfp.png` |

## Local development

```bash
pnpm install
pnpm run dev
```

## Build

```bash
pnpm run build
pnpm run preview   # preview the production build
```
## Deployment

Pushes to `main` auto-deploy to GitHub Pages via GitHub Actions.
