#Create new account for a new user account in AD (without password) 
New-LocalUser -Name "John_Smith" -Description "New account for user." -NoPassword

#Find users and move users to a different OU 
Get-ADUser John_Smith
Move-ADObject John_Smith -TargetPath Accounting
Move-ADObject -Identity "CN=John_Smith,CN=Users,DC=Adatum,DC=com" -TargetPath "OU=Accounting,DC=Adatum,DC=com"

#Give user attributes like email address, office number, which workstation user can access, department, company
Set-ADUser John_Smith -EmailAddress jsmith@accounting.adatum.com -OfficePhone 12345670 -LogonWorkstations 'LON-CL1' #good
Set-ADUser John_Smith -Department "Accounting"
Set-ADUser John_Smith -Company "Adatum"

#Add job title for user 
Get-ADUser John_Smith -Properties title|select-object name,title 
Set-ADUser John_Smith -title "Senior Accountant"