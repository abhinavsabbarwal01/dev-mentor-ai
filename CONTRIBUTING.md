# Contributing to DevMentor AI

Thanks for contributing. This project grows with community input.

## How to Contribute

### Adding Hot Topics

1. Fork this repo
2. Edit `docs/hot-topics.json`
3. Add your topic in the appropriate track (dsa / javaCore / systemDesign / aiLlm)
4. Include: priority, trend reason, questions with URLs
5. Submit a PR with title: `[HOT-TOPIC] Add {topic_name}`

### Example

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

If you have better dashboard/review formats, add under `templates/`.

### Improving Skill Prompts

Edit `SKILL.md` — keep changes focused and justify them in PR description.

## Standards

- **JSON:** Valid, formatted, alphabetized keys where possible
- **URLs:** Must be working (LeetCode / GFG / official docs)
- **Difficulty:** `easy` / `medium` / `hard`
- **Priority:** `high` / `medium` / `low`
- **Trend:** One-sentence reason why this topic matters now

## Code of Conduct

Be respectful. Share knowledge. Help others grow.

## Review Process

1. Maintainer reviews PR within 7 days
2. CI validates JSON structure
3. Merged to main if valid
4. Deployed to community skill registry

## Questions?

Open an issue with tag `question` or `help-wanted`.
