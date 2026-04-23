# Contributing to DevMentor AI

Thanks for contributing. This project grows with community input.

## Repo Layout (Important)

All skill content lives under `skills/dev-mentor-ai/` inside this repo. All paths below are relative to the repo root.

```
skills/dev-mentor-ai/
├── SKILL.md
├── docs/hot-topics.json
├── templates/
│   ├── onboarding.md
│   ├── dashboard.md
│   └── weekly-review.md
└── examples/
    └── sample-profile.json
```

When installed, those files land in `~/.claude/skills/dev-mentor-ai/` on the user's machine.

---

## How to Contribute

### Adding Hot Topics

1. Fork this repo
2. Edit `skills/dev-mentor-ai/docs/hot-topics.json`
3. Add your topic under the appropriate track (`dsa` / `javaCore` / `systemDesign` / `aiLlm`)
4. Include: `priority`, `trend`, `questions` with URLs
5. Submit a PR with title `[HOT-TOPIC] Add {topic_name}`

#### Example

```json
{
  "dsa": {
    "subtopics": {
      "monotonic_stack": {
        "priority": "high",
        "trend": "Asked in FAANG 2026 onsite rounds",
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

### Adding Templates

Better dashboard / review formats go under `skills/dev-mentor-ai/templates/`. Name the file after its purpose (`dashboard.md`, `weekly-review.md`, etc.).

### Improving Skill Prompts

Edit `skills/dev-mentor-ai/SKILL.md`. Keep changes focused. Justify them in the PR description — what behavior changes, why it is better.

### Improving Install Scripts

`install.sh` and `install.ps1` live at the repo root. They clone to a temp dir, copy `skills/dev-mentor-ai/` into `~/.claude/skills/dev-mentor-ai/`, then clean up. Keep the two scripts in parity — any change to one should land in the other.

### Plugin Manifest Changes

`.claude-plugin/plugin.json` and `.claude-plugin/marketplace.json` are the plugin marketplace entry points. Version bumps must be reflected in both files and in `CHANGELOG.md`.

---

## Standards

- **JSON:** Valid, formatted, alphabetized keys where possible
- **URLs:** Must work (LeetCode / GFG / official docs)
- **Difficulty:** `easy` / `medium` / `hard`
- **Priority:** `high` / `medium` / `low`
- **Trend:** One-sentence reason why this topic matters now
- **Commit messages:** Conventional Commits format preferred (`feat:`, `fix:`, `docs:`, `chore:`)

---

## Code of Conduct

Be respectful. Share knowledge. Help others grow.

## Review Process

1. Maintainer reviews PR within 7 days
2. CI validates JSON structure (when enabled)
3. Merged to `main` if valid
4. Next release bump picks up the change

## Questions?

Open an issue with tag `question` or `help-wanted`.
