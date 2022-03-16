Find Locked Accounts & Disable Inactive Users from 3 months
and unlock 

Impport-Module Active Directory
Import-Module GroupPolicy

Search-ADAccount -AccountDisabled -UsersOnly | Select-Object Name, SamAccountName
$timespan = New-TimeSpan -Days 90
Search-ADAccount -UsersOnly -AccountInactive -TimeSpan $timespan | Disable-ADAccount

Search-ADAccount -LockedOut | Select-Object Name, SamAccountName 
Unlock-ADAccount -Identity krbtgt
