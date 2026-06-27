# GitHub Pages Deploy Reference

## Prerequisites

- Git repository on GitHub
- Game files at repo root (or in `docs/`)

## Steps

1. **Initialize git** (if needed)

   ```bash
   git init
   git add .
   git commit -m "Initial commit: static web game"
   git branch -M main
   git remote add origin https://github.com/<username>/<repo>.git
   git push -u origin main
   ```

2. **Enable Pages**

   - GitHub repo → **Settings** → **Pages**
   - **Build and deployment** → Source: **Deploy from a branch**
   - Branch: `main`, Folder: `/ (root)` or `/docs`
   - Save

3. **Verify**

   - URL: `https://<username>.github.io/<repo>/`
   - First deploy may take 1–3 minutes
   - Check **Actions** tab if deploy fails

## Custom domain (optional)

Settings → Pages → Custom domain → add domain → configure DNS CNAME.

## Troubleshooting

| Issue | Solution |
|-------|----------|
| 404 | Confirm `index.html` exists at Pages root |
| Assets 404 | Use relative paths (`./js/game.js`) |
| Old version cached | Hard refresh (Ctrl+Shift+R) or incognito |
| Mixed content | Use HTTPS URLs only on live site |
