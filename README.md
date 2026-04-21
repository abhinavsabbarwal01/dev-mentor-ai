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

1. Clone this repo into your Claude Code skills directory:

```bash
# Unix/Mac/Linux
git clone https://github.com/YOUR_USERNAME/dev-mentor-ai.git ~/.claude/skills/dev-mentor-ai

# Windows PowerShell
git clone https://github.com/YOUR_USERNAME/dev-mentor-ai.git $env:USERPROFILE\.claude\skills\dev-mentor-ai

# Windows Git Bash
git clone https://github.com/YOUR_USERNAME/dev-mentor-ai.git ~/.claude/skills/dev-mentor-ai
```

2. Restart Claude Code.

3. Invoke with `/dev-mentor` or `/mentor`.

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
/mentor
```

DevMentor asks structured questions:
- Current role and experience
- Target role and timeline
- Language proficiency
- DSA / System Design / AI-LLM level
- Time availability

Then generates your personalized dashboard.

### Ongoing Sessions

```
/mentor
```

Loads your progress, shows dashboard, continues from where you left off.

### Modes

Switch modes mid-session:
- `/mentor mentor` — Guided learning (default)
- `/mentor interview` — Timed, no hints
- `/mentor caveman` — Terse, high-density responses
- `/mentor deep-dive` — One topic, thorough
- `/mentor revision` — Re-solve past problems
- `/mentor mock` — Full interview simulation

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
