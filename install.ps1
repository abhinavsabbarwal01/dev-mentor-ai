# DevMentor AI — One-liner install script (Windows PowerShell)
# Usage: irm https://raw.githubusercontent.com/abhinavsabbarwal01/dev-mentor-ai/main/install.ps1 | iex

$ErrorActionPreference = "Stop"

$RepoUrl = "https://github.com/abhinavsabbarwal01/dev-mentor-ai.git"
$InstallDir = "$env:USERPROFILE\.claude\skills\dev-mentor-ai"

Write-Host "🚀 Installing DevMentor AI..." -ForegroundColor Cyan

# Check git installed
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "❌ Error: git not installed. Install git first: https://git-scm.com/download/win" -ForegroundColor Red
    exit 1
}

# Check Claude Code config dir
$ClaudeDir = "$env:USERPROFILE\.claude\skills"
if (-not (Test-Path $ClaudeDir)) {
    Write-Host "📁 Creating Claude config dir: $ClaudeDir" -ForegroundColor Yellow
    New-Item -Path $ClaudeDir -ItemType Directory -Force | Out-Null
}

# If already installed, update instead
if (Test-Path "$InstallDir\.git") {
    Write-Host "⚙️  DevMentor AI already installed. Pulling latest..." -ForegroundColor Yellow
    Set-Location $InstallDir
    git pull origin main
    Write-Host "✅ Updated to latest version." -ForegroundColor Green
} else {
    Write-Host "📥 Cloning repo to $InstallDir..." -ForegroundColor Yellow
    git clone $RepoUrl $InstallDir
    Write-Host "✅ Cloned successfully." -ForegroundColor Green
}

Write-Host ""
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
Write-Host "🎉 DevMentor AI installed!" -ForegroundColor Green
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:"
Write-Host "  1. Restart Claude Code (close + reopen)"
Write-Host "  2. Run: /dev-mentor-ai"
Write-Host "  3. Answer onboarding questions"
Write-Host ""
Write-Host "Profile stored at: $env:USERPROFILE\.claude\dev-mentor-ai\user-profile.json"
Write-Host ""
Write-Host "Documentation: $RepoUrl"
