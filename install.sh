#!/usr/bin/env bash
# DevMentor AI — One-liner install script (Unix/Mac/Linux)
# Usage: curl -fsSL https://raw.githubusercontent.com/abhinavsabbarwal01/dev-mentor-ai/main/install.sh | bash

set -e

REPO_URL="https://github.com/abhinavsabbarwal01/dev-mentor-ai.git"
SKILL_DIR="$HOME/.claude/skills/dev-mentor-ai"
TMP_DIR="$(mktemp -d)"

echo "🚀 Installing DevMentor AI..."

if ! command -v git &> /dev/null; then
    echo "❌ Error: git not installed. Install git first: https://git-scm.com/downloads"
    exit 1
fi

mkdir -p "$HOME/.claude/skills"

echo "📥 Cloning repo..."
git clone --depth 1 "$REPO_URL" "$TMP_DIR/repo"

if [ -d "$SKILL_DIR" ]; then
    echo "⚙️  Existing install found. Backing up to ${SKILL_DIR}.bak"
    rm -rf "${SKILL_DIR}.bak"
    mv "$SKILL_DIR" "${SKILL_DIR}.bak"
fi

echo "📦 Installing skill to $SKILL_DIR..."
mkdir -p "$SKILL_DIR"
cp -R "$TMP_DIR/repo/skills/dev-mentor-ai/." "$SKILL_DIR/"

rm -rf "$TMP_DIR"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎉 DevMentor AI installed!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Next steps:"
echo "  1. Restart Claude Code (close + reopen)"
echo "  2. Run: /dev-mentor-ai"
echo "  3. Answer onboarding questions"
echo ""
echo "Profile stored at: $HOME/.claude/dev-mentor-ai/user-profile.json"
echo ""
echo "Documentation: $REPO_URL"
