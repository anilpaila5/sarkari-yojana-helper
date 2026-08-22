# One-command update pipeline: run this AFTER editing any assets/data/*.json file.
# Usage:
#   $env:GH_TOKEN = '<your github token>'
#   powershell -File scripts\deploy_web.ps1
#
# What it does:
#   1. Rebuilds the Flutter web app into deploy_web/app/
#   2. Regenerates all 87+ SEO article pages, sitemap, landing page
#   3. Pushes the whole website to GitHub Pages (live in ~2 min)

if (-not $env:GH_TOKEN) {
  Write-Error 'Set GH_TOKEN first: $env:GH_TOKEN = "<token>"'
  exit 1
}
$env:PATH = "C:\Users\USER\dev\flutter\bin;$env:PATH"
$repo = 'https://github.com/anilpaila5/sarkari-yojana-helper.git'

Write-Host '[1/4] Building Flutter web app...'
flutter build web --release --base-href=/sarkari-yojana-helper/app/
if ($LASTEXITCODE -ne 0) { Write-Error 'Flutter build failed'; exit 1 }

Write-Host '[2/4] Generating content pages from assets/data/*.json...'
dart run tool/gen_site.dart
if ($LASTEXITCODE -ne 0) { Write-Error 'Site generation failed'; exit 1 }

Write-Host '[3/4] Committing...'
Push-Location deploy_web
if (-not (Test-Path .git)) { git init -q -b gh-pages }
New-Item -ItemType File -Path .nojekyll -Force | Out-Null
git add -A
git commit -q -m "Update site $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
if (-not (git remote | Select-String origin)) {
  git remote add origin $repo
}

Write-Host '[4/4] Pushing to GitHub Pages...'
git push -q -f https://anilpaila5:$env:GH_TOKEN@github.com/anilpaila5/sarkari-yojana-helper.git gh-pages
Pop-Location
Write-Host "`nDONE. Live at https://anilpaila5.github.io/sarkari-yojana-helper/ in ~2 minutes."
Write-Host 'Remember: Android APK needs a separate rebuild if data changed (flutter build apk).'
