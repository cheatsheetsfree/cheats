# Help Desk Diagnostic and PC Health Script

# 1. Gather System Identity & OS info
Write-Host "Collecting computer specifications..." -ForegroundColor Cyan
Get-ComputerInfo | Select-Object CsName, WindowsVersion, OsArchitecture | Out-Host

# 2. Check Network Connection and test a specific port (like web traffic)
Write-Host "Testing network and internet connectivity..." -ForegroundColor Cyan
Test-NetConnection -ComputerName "8.8.8.8" | Select-Object ComputerName, PingSucceeded | Out-Host

# 3. Find any Stopped services that are supposed to start automatically
Write-Host "Checking for broken Automatic Services..." -ForegroundColor Cyan
Get-Service | Where-Object {$_.Status -eq "Stopped" -and $_.StartType -eq "Automatic"} | 
    Select-Object Name, DisplayName, StartType | Sort-Object Name | Out-Host

# 4. Grab the top 10 heavy-resource processes and display them in a searchable pop-up window
Write-Host "Opening Top 10 memory-heavy applications in a grid view..." -ForegroundColor Cyan
Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 10 Name, Id, CPU, WorkingSet | 
    Out-GridView -Title "Top 10 High Memory Processes"

# 5. Export the active Local User accounts to an Excel-friendly CSV on the public desktop
Write-Host "Exporting local user list to CSV file..." -ForegroundColor Cyan
Get-LocalUser | Select-Object Name, Enabled, LastLogon | 
    Export-Csv -Path "$(Join-Path ([Environment]::GetFolderPath('Desktop')) 'LocalUsersReport.csv')" -NoTypeInformation

Write-Host "Diagnostic Complete! Report saved to Public Desktop." -ForegroundColor Green
