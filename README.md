# DevMentor AI — Adaptive Engineering Growth OS

> An open-source, community-driven learning system for software engineers. Built as a Claude Code skill.

## What It Is

DevMentor AI is **not a chatbot**. It's a structured, personalized, adaptive learning system that helps software engineers grow from their current level to their target level:

- **Fresher → SDE1**
- **SDE1 → SDE2**
- **SDE2 → SDE3**
- **Backend → AI/LLM Systems**

## Core Philosophy

```
Diagnose → Plan → Execute → Evaluate → Adapt → Track
```

Every interaction follows this loop. You are not just solving problems — you're building a personal learning DNA that evolves with you.

## Features

- **Adaptive Onboarding** — Understands your level, goals, timeline
- **Personalized Roadmap** — Generated dynamically based on your weak areas
- **Hot Topics Injection** — Trending interview topics automatically prioritized
- **Multi-Track Learning** — DSA, Java Core, System Design, AI/LLM
- **Multiple Modes** — Mentor, Interview, Caveman, Deep Dive, Revision, Mock
- **Progress Tracking** — JSON-based, resumable across sessions
- **Weekly Reviews** — Automatic insights on strengths/weaknesses
- **Community-Driven** — Fork and contribute hot topics

## Installation

### Option 1: One-Liner (Easiest ⚡)

**Unix/Mac/Linux:**
```bash
curl -fsSL https://raw.githubusercontent.com/abhinavsabbarwal01/dev-mentor-ai/main/install.sh | bash
```

**Windows PowerShell:**
```powershell
irm https://raw.githubusercontent.com/abhinavsabbarwal01/dev-mentor-ai/main/install.ps1 | iex
```

That's it. Restart Claude Code, then run `/dev-mentor-ai`.

### Option 2: Git Clone (Manual)

```bash
# Unix/Mac/Linux
git clone https://github.com/abhinavsabbarwal01/dev-mentor-ai.git ~/.claude/skills/dev-mentor-ai

# Windows PowerShell
git clone https://github.com/abhinavsabbarwal01/dev-mentor-ai.git $env:USERPROFILE\.claude\skills\dev-mentor-ai
```

Then restart Claude Code.

### Option 3: Download ZIP (No Git Needed)

1. Go to https://github.com/abhinavsabbarwal01/dev-mentor-ai
2. Click `Code` → `Download ZIP`
3. Extract to:
   - Unix/Mac: `~/.claude/skills/dev-mentor-ai/`
   - Windows: `%USERPROFILE%\.claude\skills\dev-mentor-ai\`
4. Restart Claude Code.

### After Installation

Invoke with: `/dev-mentor-ai`

First time → onboarding asks questions, creates profile.
Subsequent times → resumes from where you left off.

### Profile Storage (Portable)

Your profile and progress are stored at:

- **Unix/Mac:** `~/.claude/dev-mentor-ai/`
- **Windows:** `%USERPROFILE%\.claude\dev-mentor-ai\`

Files created:
- `user-profile.json` — your profile (name, role, levels, preferences)
- `learning-progress.json` — detailed progress tracker

**Never committed to repo** (see `.gitignore`). User-specific, per machine.

## Usage

### First Time (Onboarding)

```
/dev-mentor-ai
```

DevMentor asks structured questions (one at a time via multi-choice):
- Current role and experience
- Target role
- Language proficiency
- DSA / System Design / AI-LLM level
- Pace preference (Self-paced / Steady / Intensive)

Then generates your personalized dashboard and saves profile to `~/.claude/dev-mentor-ai/user-profile.json`.

### Ongoing Sessions

```
/dev-mentor-ai
```

Auto-loads your profile from JSON, shows dashboard, resumes from `nextFocus` — no re-onboarding.

### Switching Modes

Modes are conversational — just tell DevMentor what you want:

- **Mentor Mode** (default): "guide me through this"
- **Interview Mode:** "give me interview mode — timed, no hints"
- **Caveman Mode:** say "caveman mode" to activate terse responses
- **Deep Dive Mode:** "deep dive on {topic}"
- **Revision Mode:** "revise past problems on {pattern}"
- **Mock Mode:** "start mock interview"

DevMentor switches mode immediately based on conversational intent. No subcommands needed.

## Hot Topics System

`docs/hot-topics.json` is the **evolving source of truth** for trending interview topics.

### Contributing

1. Fork this repo
2. Edit `docs/hot-topics.json`
3. Add your topic under the appropriate section (dsa, javaCore, systemDesign, aiLlm)
4. Include URL, difficulty, priority
5. Submit PR

Example contribution:

```json
{
  "dsa": {
    "subtopics": {
      "monotonic_stack": {
        "priority": "high",
        "trend": "Asked in FAANG 2026",
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

## File Structure

```
dev-mentor-ai/
├── SKILL.md                  # Main skill definition
├── README.md                 # This file
├── docs/
│   └── hot-topics.json       # Community-maintained trending topics
├── templates/
│   ├── onboarding.md         # Onboarding questions
│   ├── dashboard.md          # Dashboard format
│   └── weekly-review.md      # Weekly review template
└── examples/
    └── sample-profile.json   # Example user profile
```

## Tracks Covered

### DSA
Pattern-based learning: Sliding Window, Two Pointers, DP, Graphs, Trees, Backtracking, Greedy, Binary Search.

### Java Core
Concurrency, Collections internals, JVM, GC, Memory management, Reflection, Generics.

### System Design
CAP, Consistency, Sharding, Caching, Rate Limiting, Message Queues, Load Balancing, Distributed Systems.

### AI/LLM
RAG, Embeddings, Vector DBs, LangChain, LangGraph, Agentic AI, ReAct, Multi-agent systems.

## Roadmap

- [x] Core skill definition
- [x] Hot topics JSON
- [ ] User profile persistence
- [ ] Mock interview mode
- [ ] Weekly review automation
- [ ] Community contribution guidelines
- [ ] Integration with LeetCode API (progress sync)

## Contributing

This is an open-source, community-driven project. Anyone can:
- Add hot topics
- Improve skill prompts
- Add new learning tracks
- Contribute templates

## License

MIT — Use freely, attribute fairly, share generously.

## Authors

- **Abhinav Sabbarwal** — Author, creator, maintainer ([GitHub](https://github.com/abhinavsabbarwal01))
- **Claude (Anthropic)** — Co-author, built with Claude Code assistance

## Credits

Built with ❤️ by Abhinav with Claude Code assistance. Inspired by the belief that every engineer deserves a personalized growth coach, tailored to their level and pace — not a one-size-fits-all curriculum.

### Attribution

If you fork or use this skill:
- Keep credit to original author(s)
- Contributions welcome via PRs to `docs/hot-topics.json`
- Major feature PRs should discuss in an issue first
