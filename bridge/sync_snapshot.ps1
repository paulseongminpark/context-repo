param(
  [string]$RepoPath = "C:\dev\context-repo"
)

$statePath = Join-Path $RepoPath "context\STATE.md"
$snapPath  = Join-Path $RepoPath "context\SNAPSHOT.txt"

$now = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

if (!(Test-Path $statePath)) {
  $content = "(missing) $statePath"
} else {
  $content = Get-Content $statePath -Raw -Encoding UTF8
}

$meta = "<!-- updated=$now KST -->"

($meta + "`n" + $content) | Set-Content -Path $snapPath -Encoding UTF8
Write-Host "UPDATED: $snapPath"
