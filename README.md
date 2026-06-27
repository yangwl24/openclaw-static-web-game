# openclaw-static-web-game

[![OpenClaw Skill](https://img.shields.io/badge/OpenClaw-Skill-blue)](https://docs.openclaw.ai/tools/creating-skills)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

> 一个 [OpenClaw](https://openclaw.ai) Agent Skill，帮助 AI 助手开发、调试并部署**纯静态 HTML5 游戏**（HTML / CSS / JavaScript，无需打包工具）。

An [OpenClaw](https://openclaw.ai) Agent Skill for developing, testing, and deploying static HTML5 canvas games.

## ✨ 功能

| 能力 | 说明 |
|------|------|
| 🚀 本地运行 | 自动启动 dev server，避免 `file://` 导致的音频 / CORS 问题 |
| ✅ 发布前检查 | 检查路径、资源、移动端适配、控制台报错 |
| 🌐 GitHub Pages | 提供部署指南与常见问题修复 |
| 🎮 游戏优化 | 音频策略、高清屏适配、触摸操作等 |

## 适用场景

- 开发 Canvas / DOM 小游戏（如雷霆战机类项目）
- 需要本地预览或上线 Demo 链接
- 做作品集，需要可访问的在线地址

## Skill 信息

| 字段 | 值 |
|------|-----|
| **Skill 名称** | `static-web-game` |
| **触发方式** | 自动识别，或 `/skill static-web-game` |
| **依赖** | `python` / `python3` / `node` 至少其一 |

## 安装

### 手动安装（OpenClaw workspace）

**Linux / macOS / WSL2：**

```bash
git clone https://github.com/yangwl24/openclaw-static-web-game.git
cp -r openclaw-static-web-game/static-web-game ~/.openclaw/workspace/skills/
```

**Windows（OpenClaw 建议用 WSL2）：**

```powershell
git clone https://github.com/yangwl24/openclaw-static-web-game.git
Copy-Item -Recurse openclaw-static-web-game\static-web-game $env:USERPROFILE\.openclaw\workspace\skills\
```

### 验证安装

```bash
openclaw skills list
# 应显示: static-web-game
```

加载新 Skill 后，建议开启新会话：

```bash
/new
# 或
openclaw gateway restart
```

## 使用示例

```bash
openclaw agent --message "帮我在本地运行这个 HTML5 游戏"
openclaw agent --message "检查项目能否部署到 GitHub Pages"
/skill static-web-game
```

## 目录结构

```
static-web-game/
├── SKILL.md                 # OpenClaw Skill 主文件
├── scripts/
│   ├── serve.ps1            # Windows 本地服务器脚本
│   └── serve.sh             # Linux / macOS / WSL 本地服务器脚本
└── reference/
    └── deploy-github-pages.md
```

## 相关链接

- [OpenClaw — Creating Skills](https://docs.openclaw.ai/tools/creating-skills)
- [OpenClaw 入门指南（中文）](https://openclawlab.com/zh-cn/docs/start/getting-started/)

## 作者

- GitHub: [@yangwl24](https://github.com/yangwl24)

## License

MIT
