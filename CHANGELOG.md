# Changelog

All notable changes to DevMentor AI are documented here.

Format loosely follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Versioning follows [SemVer](https://semver.org/).

## [1.0.0] — 2026-04-23

First production release.

### Added
- Core `SKILL.md` with adaptive Diagnose → Plan → Execute → Evaluate → Adapt → Track loop
- Onboarding engine using `AskUserQuestion` (one question at a time, conversational)
- Dashboard engine with section breadcrumbs on every response
- Phased roadmap (topic-based, not time-based)
- Hot topics injection from `docs/hot-topics.json`
- Six conversational modes: Mentor, Interview, Caveman, Deep Dive, Revision, Mock
- Weekly review engine
- Engineer DNA inference (strengths, weaknesses, learning style)
- Portable profile storage at `~/.claude/dev-mentor-ai/user-profile.json`
- Templates: `onboarding.md`, `dashboard.md`, `weekly-review.md`
- Sample profile schema at `examples/sample-profile.json`
- One-liner install scripts for Unix/Mac/Linux (`install.sh`) and Windows (`install.ps1`)
- Claude Code plugin marketplace support via `.claude-plugin/plugin.json` and `.claude-plugin/marketplace.json`
- MIT license, `AUTHORS.md`, `CONTRIBUTING.md`

### Repo Structure
- Skill files relocated to `skills/dev-mentor-ai/` to comply with Claude Code plugin layout
- Install scripts updated to clone → copy subdirectory → clean up

[1.0.0]: https://github.com/abhinavsabbarwal01/dev-mentor-ai/releases/tag/v1.0.0
