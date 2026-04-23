# DevMentor AI — Adaptive Engineering Growth OS

> Open-source, community-driven learning system for software engineers. Built as a Claude Code plugin + skill.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-Plugin-blueviolet)](https://github.com/abhinavsabbarwal01/dev-mentor-ai)
[![Version](https://img.shields.io/badge/version-1.0.0-blue)](./CHANGELOG.md)

---

## What It Is

DevMentor AI is **not a chatbot**. It is a structured, personalized, adaptive learning system for software engineers growing from their current level to their target level:

- **Fresher → SDE1**
- **SDE1 → SDE2**
- **SDE2 → SDE3**
- **Backend → AI/LLM Systems**

## Core Philosophy

```
Diagnose → Plan → Execute → Evaluate → Adapt → Track
```

Every interaction follows this loop. You are not just solving problems — you are building a personal learning DNA that evolves with you.

## Features

- **Adaptive Onboarding** — Understands your level, goals, timeline
- **Personalized Roadmap** — Dynamically generated from your weak areas
- **Hot Topics Injection** — Trending interview topics prioritized automatically
- **Multi-Track Learning** — DSA, Java Core, System Design, AI/LLM
- **Multiple Modes** — Mentor, Interview, Deep Dive, Revision, Mock
- **Progress Tracking** — JSON-based, resumable across sessions
- **Weekly Reviews** — Automatic insights on strengths/weaknesses
- **Community-Driven** — Fork and contribute hot topics

---

## Installation

Pick the option that fits your workflow. All three install the same skill.

### Option 1: Claude Code Plugin Marketplace (Recommended)

Inside Claude Code, run:

```
/plugin marketplace add abhinavsabbarwal01/dev-mentor-ai
/plugin install dev-mentor-ai@dev-mentor-ai-marketplace
```

Restart Claude Code. Done.

### Option 2: One-Liner Install Script

**Unix/Mac/Linux:**
```bash
curl -fsSL https://raw.githubusercontent.com/abhinavsabbarwal01/dev-mentor-ai/main/install.sh | bash
```

**Windows PowerShell:**
```powershell
irm https://raw.githubusercontent.com/abhinavsabbarwal01/dev-mentor-ai/main/install.ps1 | iex
```

Script clones the repo to a temp dir, copies `skills/dev-mentor-ai/` into `~/.claude/skills/dev-mentor-ai/`, and cleans up.

### Option 3: Manual (Git Clone or ZIP)

The skill files live under `skills/dev-mentor-ai/` inside this repo. Copy **the contents of that directory** into your Claude Code skills folder.

**Unix/Mac/Linux:**
```bash
git clone https://github.com/abhinavsabbarwal01/dev-mentor-ai.git /tmp/dev-mentor-ai
mkdir -p ~/.claude/skills/dev-mentor-ai
cp -R /tmp/dev-mentor-ai/skills/dev-mentor-ai/. ~/.claude/skills/dev-mentor-ai/
rm -rf /tmp/dev-mentor-ai
```

**Windows PowerShell:**
```powershell
git clone https://github.com/abhinavsabbarwal01/dev-mentor-ai.git $env:TEMP\dev-mentor-ai
New-Item -ItemType Directory -Force $env:USERPROFILE\.claude\skills\dev-mentor-ai | Out-Null
Copy-Item $env:TEMP\dev-mentor-ai\skills\dev-mentor-ai\* $env:USERPROFILE\.claude\skills\dev-mentor-ai -Recurse -Force
Remove-Item -Recurse -Force $env:TEMP\dev-mentor-ai
```

**ZIP download:** Download ZIP from GitHub → extract → copy the `skills/dev-mentor-ai/` folder contents (NOT the repo root) into `~/.claude/skills/dev-mentor-ai/`.

Restart Claude Code after any manual install.

---

## Paths Reference

Two distinct paths — do not confuse them:

| Path | Purpose | Created by |
|------|---------|-----------|
| `~/.claude/skills/dev-mentor-ai/` | Skill code (SKILL.md, templates, docs) | Installer |
| `~/.claude/dev-mentor-ai/` | **Your** profile + progress data | Skill on first run |

On Windows replace `~` with `%USERPROFILE%`.

Files the skill creates on first run:
- `user-profile.json` — name, role, levels, preferences
- `learning-progress.json` — detailed per-track progress

These are **never committed** to any repo. Per-machine, per-user.

---

## Usage

### First Run (Onboarding)

```
/dev-mentor-ai
```

DevMentor asks structured questions one at a time (via `AskUserQuestion`):
- Current role and experience
- Target role
- Language proficiency
- DSA / System Design / AI-LLM level
- Pace preference (Self-paced / Steady / Intensive)

Then generates your personalized dashboard and saves your profile.

### Ongoing Sessions

```
/dev-mentor-ai
```

Auto-loads your profile, shows the dashboard, resumes from `nextFocus`. No re-onboarding.

### Switching Modes

Modes are **conversational** — just state intent:

| Mode | Trigger phrase | Behavior |
|------|---------------|----------|
| Mentor (default) | "guide me" | Guided learning with hints |
| Interview | "interview mode" | Timed, no hints, strict |
| Deep Dive | "deep dive on {topic}" | One topic, thorough |
| Revision | "revise {pattern}" | Cycle through solved problems |
| Mock | "mock interview" | 45-min simulated interview |

DevMentor announces mode switch:
> 🎭 Switched to Interview Mode. 30 min timer starts on problem.

---

## Hot Topics System

`skills/dev-mentor-ai/docs/hot-topics.json` is the evolving source of truth for trending interview topics. DevMentor reads it at the start of every session and injects trending topics into your roadmap.

### Contributing Hot Topics

1. Fork this repo
2. Edit `skills/dev-mentor-ai/docs/hot-topics.json`
3. Add under the relevant track (`dsa`, `javaCore`, `systemDesign`, `aiLlm`)
4. Include URL, difficulty, priority, trend reason
5. Submit PR with title `[HOT-TOPIC] Add {topic_name}`

Example:

```json
{
  "dsa": {
    "subtopics": {
      "monotonic_stack": {
        "priority": "high",
        "trend": "Asked in FAANG 2026 onsite",
        "questions": [
          {
            "name": "Daily Temperatures",
            "url": "https://leetcode.com/problems/daily-temperatures/",
            "difficulty": "medium"
          }
        ]
      }
    }
  }
}
```

See [CONTRIBUTING.md](./CONTRIBUTING.md) for full guidelines.

---

## Tracks Covered

### DSA
Pattern-based learning: Sliding Window, Two Pointers, DP, Graphs, Trees, Backtracking, Greedy, Binary Search.

### Java Core
Concurrency, Collections internals, JVM, GC, Memory management, Reflection, Generics.

### System Design
CAP, Consistency, Sharding, Caching, Rate Limiting, Message Queues, Load Balancing, Distributed Systems.

### AI/LLM
RAG, Embeddings, Vector DBs, LangChain, LangGraph, Agentic AI, ReAct, Multi-agent systems.

---

## Repository Structure

```
dev-mentor-ai/                          # Repo root
├── .claude-plugin/
│   ├── plugin.json                     # Plugin manifest
│   └── marketplace.json                # Marketplace catalog
├── skills/
│   └── dev-mentor-ai/                  # The skill itself (installed to ~/.claude/skills/dev-mentor-ai/)
│       ├── SKILL.md                    # Skill definition + behavior
│       ├── docs/
│       │   └── hot-topics.json         # Community-maintained trending topics
│       ├── templates/
│       │   ├── onboarding.md
│       │   ├── dashboard.md
│       │   └── weekly-review.md
│       └── examples/
│           └── sample-profile.json     # Reference profile schema
├── install.sh                          # One-liner installer (Unix/Mac/Linux)
├── install.ps1                         # One-liner installer (Windows)
├── README.md                           # This file
├── CONTRIBUTING.md                     # Contribution guide
├── AUTHORS.md                          # Credits
├── CHANGELOG.md                        # Release history
├── LICENSE                             # MIT
└── .gitignore
```

---

## Roadmap

- [x] Core skill definition
- [x] Hot topics JSON
- [x] User profile persistence (`user-profile.json`)
- [x] One-liner install scripts (bash + PowerShell)
- [x] Claude Code plugin marketplace support
- [ ] Mock interview mode (full 45-min simulation)
- [ ] Weekly review automation
- [ ] LeetCode API integration (progress sync)
- [ ] Community contribution dashboard

---

## Contributing

Open-source, community-driven. Anyone can:
- Add hot topics
- Improve skill prompts
- Add new learning tracks
- Contribute templates

See [CONTRIBUTING.md](./CONTRIBUTING.md). Major features — open an issue first.

---

## License

MIT — see [LICENSE](./LICENSE). Use freely, attribute fairly, share generously.

## Authors

- **Abhinav Sabbarwal** — Author, creator, maintainer ([GitHub](https://github.com/abhinavsabbarwal01))
- **Claude (Anthropic)** — Co-author, built with Claude Code assistance

Full credits: [AUTHORS.md](./AUTHORS.md)

## Credits

Built by Abhinav with Claude Code assistance. Inspired by the belief that every engineer deserves a personalized growth coach tailored to their level and pace — not a one-size-fits-all curriculum.

### Attribution

If you fork or use this skill:
- Keep credit to original author(s)
- Contributions welcome via PRs to `skills/dev-mentor-ai/docs/hot-topics.json`
- Major feature PRs — open an issue first
