---
name: static-web-game
description: Develop, test, and deploy static HTML5 canvas games (HTML/CSS/JS). Use for local servers, GitHub Pages, and game project checks.
homepage: https://github.com/yangwl24/openclaw-static-web-game
metadata: { "openclaw": { "requires": { "anyBins": ["python", "python3", "node"] } } }
---

# Static Web Game Dev

Help the user build, run, and publish static browser games (Canvas / DOM, no build step required).

## When to use

- User mentions HTML5 game, canvas game, 雷霆战机, or a repo with `index.html` + `js/` + `css/`
- User asks to run a game locally, deploy to GitHub Pages, or review a static game project
- User wants a portfolio demo link for a front-end / game project

## Project layout (expected)

```
project/
├── index.html          # entry point
├── css/
├── js/
│   └── game.js         # main loop
└── README.md
```

If layout differs, adapt — do not force a rewrite unless broken.

## Local dev server

Never open `index.html` via `file://` — Canvas games often break on CORS / audio / fetch.

Pick the first available option:

### Python (preferred)

```bash
cd <project-root>
python -m http.server 8080
# or: python3 -m http.server 8080
```

Open: `http://localhost:8080`

### Node (fallback)

```bash
npx --yes serve -l 8080 .
```

### Windows PowerShell helper

If `{baseDir}/scripts/serve.ps1` exists:

```powershell
powershell -ExecutionPolicy Bypass -File "{baseDir}/scripts/serve.ps1" -Port 8080 -Root "<project-root>"
```

Tell the user the URL after starting the server.

## Pre-deploy checklist

Before publishing, verify:

1. **Paths** — all `<script>` / `<link>` use relative paths (`js/game.js`, not absolute disk paths)
2. **No localhost** — no hard-coded `localhost` URLs in production code
3. **Assets** — images/audio/fonts exist and are referenced relatively
4. **Mobile** — viewport meta tag in `index.html`; touch controls if applicable
5. **README** — includes run instructions and a screenshot or GIF if possible
6. **Console** — open DevTools; fix JS errors before deploy

## GitHub Pages deploy

Assumes repo root is the game root (or use `/docs` folder — see below).

### Option A: root deploy (simplest)

1. Push project to GitHub
2. Settings → Pages → Source: **Deploy from branch**
3. Branch: `main`, folder: `/ (root)`
4. Live URL: `https://<username>.github.io/<repo>/`

### Option B: docs folder

If the repo has other files, copy game into `docs/` and set Pages folder to `/docs`.

### After deploy

- Wait 1–3 minutes for first build
- Test the live URL in an incognito window
- Add the live link to README under **Demo**

## Common fixes

| Problem | Fix |
|---------|-----|
| Black screen | Check console; often wrong script path or JS error on load |
| Audio silent until click | Expected browser policy — add "Click to start" overlay |
| High DPI blur | Scale canvas with `devicePixelRatio` |
| Touch not working | Add `touch-action: none` on canvas; prevent default on touchmove |
| 404 on Pages | Ensure `index.html` is at Pages root; check branch/folder settings |

## Game quality suggestions (when asked)

Offer only what the user requested — do not over-engineer.

- **Feel**: screen shake, particles, combo text, difficulty ramp
- **Clarity**: distinct colors for player bullets vs enemy bullets vs pickups
- **Polish**: pause/mute, high score (`localStorage`), stage themes
- **Portfolio**: one-line pitch, tech stack, demo link, 30s gameplay GIF

## Safety

- Do not run destructive shell commands on the user's machine without confirmation
- Do not commit secrets (API keys, `.env`) — warn if found
- Prefer `python -m http.server` over arbitrary download-and-run scripts

## Reference

Detailed GitHub Pages steps: `{baseDir}/reference/deploy-github-pages.md`
