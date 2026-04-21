# DevMentor AI — One-liner install script (Windows PowerShell)
# Usage: irm https://raw.githubusercontent.com/abhinavsabbarwal01/dev-mentor-ai/main/install.ps1 | iex

$ErrorActionPreference = "Stop"

$RepoUrl = "https://github.com/abhinavsabbarwal01/dev-mentor-ai.git"
$SkillDir = "$env:USERPROFILE\.claude\skills\dev-mentor-ai"
$TmpDir = Join-Path $env:TEMP "dev-mentor-ai-install-$(Get-Random)"

Write-Host "🚀 Installing DevMentor AI..." -ForegroundColor Cyan

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "❌ Error: git not installed. Install git first: https://git-scm.com/download/win" -ForegroundColor Red
    exit 1
}

$ClaudeSkillsDir = "$env:USERPROFILE\.claude\skills"
if (-not (Test-Path $ClaudeSkillsDir)) {
    New-Item -Path $ClaudeSkillsDir -ItemType Directory -Force | Out-Null
}

Write-Host "📥 Cloning repo..." -ForegroundColor Yellow
git clone --depth 1 $RepoUrl "$TmpDir\repo"

if (Test-Path $SkillDir) {
    $BackupDir = "$SkillDir.bak"
    Write-Host "⚙️  Existing install found. Backing up to $BackupDir" -ForegroundColor Yellow
    if (Test-Path $BackupDir) { Remove-Item -Recurse -Force $BackupDir }
    Move-Item $SkillDir $BackupDir
}

Write-Host "📦 Installing skill to $SkillDir..." -ForegroundColor Yellow
New-Item -Path $SkillDir -ItemType Directory -Force | Out-Null
Copy-Item -Path "$TmpDir\repo\skills\dev-mentor-ai\*" -Destination $SkillDir -Recurse -Force

Remove-Item -Recurse -Force $TmpDir

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
