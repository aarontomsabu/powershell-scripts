Get-ComputerInfo |
Select-Object CsName, WindowsProductName, OsVersion |
Export-Csv "SystemReport.csv" -NoTypeInformation

Write-Host "System report generated."
