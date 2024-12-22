# ─── Aliases ──────────────────────────────────────────────────────────────────


# ─── Prompt ───────────────────────────────────────────────────────────────────
Invoke-Expression (&starship init powershell)

function Invoke-Starship-TransientFunction {
    &starship module character
  }

  Invoke-Expression (&starship init powershell)


# ─── Functions ────────────────────────────────────────────────────────────────
function whereis ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Source
}

# ─── Terminal-icons ───────────────────────────────────────────────────────────
Import-Module Terminal-icons

# ─── Psreadline ───────────────────────────────────────────────────────────────
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView

# ─── Start-up ─────────────────────────────────────────────────────────────────