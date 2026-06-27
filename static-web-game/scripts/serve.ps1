param(
    [int]$Port = 8080,
    [string]$Root = "."
)

$Root = Resolve-Path $Root
Set-Location $Root

Write-Host "Serving $Root at http://localhost:$Port"
Write-Host "Press Ctrl+C to stop."

$python = Get-Command python -ErrorAction SilentlyContinue
if ($python) {
    python -m http.server $Port
    exit $LASTEXITCODE
}

$python3 = Get-Command python3 -ErrorAction SilentlyContinue
if ($python3) {
    python3 -m http.server $Port
    exit $LASTEXITCODE
}

Write-Error "Python not found. Install Python or use: npx serve -l $Port ."
exit 1
