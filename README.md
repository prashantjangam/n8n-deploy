# 🚀 n8n on Render with Custom Domain

This repo deploys **n8n Community Edition** on Render using Docker.

## Deploy Steps

1. Fork this repo to your GitHub.
2. Go to [Render Dashboard](https://dashboard.render.com) → **New Web Service** → select this repo.
3. Render auto-detects `render.yaml` and runs the official `n8nio/n8n` Docker image.
4. In Render → **Settings → Custom Domains**, add:
   ```
   www.n8n.jangame.org
   ```
5. In your DNS provider (Cloudflare/Ionos/etc.), add a **CNAME**:
   ```
   Name: www.n8n
   Type: CNAME
   Value: <your-service>.onrender.com
   Proxy: DNS only (⚪ gray cloud in Cloudflare)
   ```
6. Wait a few minutes → Render auto-issues a free HTTPS certificate.

## Login

- URL: https://www.n8n.jangame.org
- User: `admin`
- Password: `replace_with_strong_password_here`
