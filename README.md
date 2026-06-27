# openclaw-static-web-game

OpenClaw Skill for developing, testing, and deploying **static HTML5 canvas games** (HTML / CSS / JavaScript, no bundler required).

## Skill: `static-web-game`

Teaches an OpenClaw agent to:

- Start a local dev server (avoid `file://` issues)
- Run a pre-deploy checklist (paths, assets, mobile, console errors)
- Publish to GitHub Pages
- Apply common game fixes (audio policy, DPI, touch controls)

## Install

### Manual (OpenClaw workspace)

```bash
git clone https://github.com/YOUR_USERNAME/openclaw-static-web-game.git
cp -r openclaw-static-web-game/static-web-game ~/.openclaw/workspace/skills/
```

Windows (WSL2 recommended for OpenClaw):

```powershell
git clone https://github.com/YOUR_USERNAME/openclaw-static-web-game.git
Copy-Item -Recurse openclaw-static-web-game\static-web-game $env:USERPROFILE\.openclaw\workspace\skills\
```

### Verify

```bash
openclaw skills list
# Should show: static-web-game
```

Start a new session so the agent picks up the skill:

```bash
/new
# or
openclaw gateway restart
```

## Usage examples

```bash
openclaw agent --message "帮我在本地运行这个 HTML5 游戏"
openclaw agent --message "检查项目能否部署到 GitHub Pages"
/skill static-web-game
```

## Structure

```
static-web-game/
├── SKILL.md                 # OpenClaw skill definition
├── scripts/
│   ├── serve.ps1            # Windows local server helper
│   └── serve.sh             # Linux/macOS/WSL helper
└── reference/
    └── deploy-github-pages.md
```

## Requirements

At least one of: `python`, `python3`, or `node` (for `npx serve` fallback).

## Related

- [OpenClaw — Creating Skills](https://docs.openclaw.ai/tools/creating-skills)
- [OpenClaw Getting Started](https://openclawlab.com/zh-cn/docs/start/getting-started/)

## License

MIT
