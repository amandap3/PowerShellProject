#Search User Accounts, Disable User Accounts Inactive after 90 days, and Unlock Accounts 
Impport-Module Active Directory
Import-Module GroupPolicy

Search-ADAccount -AccountDisabled -UsersOnly | Select-Object Name, SamAccountName
$timespan = New-TimeSpan -Days 90
Search-ADAccount -UsersOnly -AccountInactive -TimeSpan $timespan | Disable-ADAccount

Search-ADAccount -LockedOut | Select-Object Name, SamAccountName 
Unlock-ADAccount -Identity krbtgt
