# Apply this patch to deploy as a static SPA on Netlify

1) In your GitHub repository, replace the root `netlify.toml` with this one.
2) In Netlify, trigger a new deploy (Retry deploy).
3) Netlify will run `npx vite build` (frontend only) and publish `dist/`.

If your project needs its Node server at runtime, deploy with Render or Fly.io.
