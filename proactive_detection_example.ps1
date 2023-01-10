$Path = "HKLM:\SOFTWARE\Palo Alto Networks\GlobalProtect\PanSetup"
$Name = "Portal"
$Type = "String"
$Value = "vpn.company.com"

Try {
    $Registry = Get-ItemProperty -Path $Path -Name $Name -ErrorAction Stop | Select-Object -ExpandProperty $Name
    If ($Registry -eq $Value){
        Write-Output "Compliant"
        Exit 0
    } 
    Write-Warning "Not Compliant"
    Exit 1
} 
Catch {
    Write-Warning "Not Compliant"
    Exit 1
}