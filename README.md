# heuralabs.ai

Static homepage for [heuralabs.ai](https://heuralabs.ai) — a solo AI research lab.

## Stack

- **Astro** + **Tailwind CSS** — static site generation
- **nginx** — serving (non-root, hardened)
- **Docker** — containerized build and deploy
- **Cloudflare Tunnel** — zero-exposure hosting via shared network

## Development

```bash
npm install
npm run dev
```

## Build

```bash
npm run build    # outputs to dist/
npm run preview  # preview production build locally
```

## Deploy

Runs as a Docker container on a shared network with an existing Cloudflare Tunnel.

```bash
docker compose up -d --build
```

Requires the `heuralabs-net` Docker network to exist (created by the main infrastructure stack).
