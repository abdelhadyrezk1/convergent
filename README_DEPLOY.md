# How to Publish (Netlify: no commands needed)

## Netlify (recommended - free)
1) Create an empty GitHub repository.
2) Upload this folder's contents to the repo.
3) In Netlify: Add new site → Import an existing project → choose the repo.
4) It will read `netlify.toml` and run `npm run build`, then publish `dist/`.
5) Share the public URL Netlify gives you.

## Vercel (free)
1) Import the same repo into Vercel.
2) It will run `npm run build` and publish `dist/` per `vercel.json`.

## Docker (optional)
```bash
docker build -t portal .
docker run -d -p 80:80 portal
```
