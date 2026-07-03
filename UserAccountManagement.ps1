Import-Csv "users.csv" | ForEach-Object {
    try {
        $securePassword = ConvertTo-SecureString "ChangeMe123!" -AsPlainText -Force

        New-ADUser `
            -Name $_.Name `
            -GivenName $_.FirstName `
            -Surname $_.LastName `
            -SamAccountName $_.Username `
            -UserPrincipalName "$($_.Username)@yourdomain.com" `
            -AccountPassword $securePassword `
            -Enabled $true `
            -ChangePasswordAtLogon $true

        Write-Host "Created user: $($_.Username)" -ForegroundColor Green
    }
    catch {
        Write-Host "Failed to create user $($_.Username): $($_.Exception.Message)" -ForegroundColor Red
    }
}
