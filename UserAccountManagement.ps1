Import-Csv "users.csv" | ForEach-Object {
    New-ADUser `
        -Name $_.Name `
        -GivenName $_.FirstName `
        -Surname $_.LastName `
        -SamAccountName $_.Username `
        -Enabled $true
}
