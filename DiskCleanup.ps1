$TempFiles = "C:\Windows\Temp\*"
Remove-Item $TempFiles -Recurse -Force
Write-Host "Temporary files deleted."
