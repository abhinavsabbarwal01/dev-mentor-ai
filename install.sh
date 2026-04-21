#!/usr/bin/env bash
# DevMentor AI — One-liner install script (Unix/Mac/Linux)
# Usage: curl -fsSL https://raw.githubusercontent.com/abhinavsabbarwal01/dev-mentor-ai/main/install.sh | bash

set -e

REPO_URL="https://github.com/abhinavsabbarwal01/dev-mentor-ai.git"
INSTALL_DIR="$HOME/.claude/skills/dev-mentor-ai"

echo "🚀 Installing DevMentor AI..."

# Check git installed
if ! command -v git &> /dev/null; then
    echo "❌ Error: git not installed. Install git first: https://git-scm.com/downloads"
    exit 1
fi

# Check Claude Code config dir
if [ ! -d "$HOME/.claude" ]; then
    echo "📁 Creating Claude config dir: $HOME/.claude"
    mkdir -p "$HOME/.claude/skills"
fi

# If already installed, update instead
if [ -d "$INSTALL_DIR/.git" ]; then
    echo "⚙️  DevMentor AI already installed. Pulling latest..."
    cd "$INSTALL_DIR"
    git pull origin main
    echo "✅ Updated to latest version."
else
    echo "📥 Cloning repo to $INSTALL_DIR..."
    git clone "$REPO_URL" "$INSTALL_DIR"
    echo "✅ Cloned successfully."
fi

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
