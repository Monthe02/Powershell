if (-not (Test-Path "HKLM:\SOFTWARE\Palo Alto Networks")) {
  New-Item -Path "HKLM:\SOFTWARE" -Name "Palo Alto Networks" | Out-Null
}
if (-not (Test-Path "HKLM:\SOFTWARE\Palo Alto Networks\GlobalProtect")) {
  New-Item -Path "HKLM:\SOFTWARE\Palo Alto Networks" -Name "GlobalProtect" | Out-Null
}
if (-not (Test-Path "HKLM:\SOFTWARE\Palo Alto Networks\GlobalProtect\PanSetup")) {
  New-Item -Path "HKLM:\SOFTWARE\Palo Alto Networks\GlobalProtect" -Name "PanSetup" | Out-Null
}
New-ItemProperty -LiteralPath "HKLM:\SOFTWARE\Palo Alto Networks\GlobalProtect\PanSetup" -Name "Portal" -Value "vpn.company.com" -PropertyType String

