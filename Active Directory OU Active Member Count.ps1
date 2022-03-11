$OUMembersActive=(Get-ADUser -Filter * -SearchBase “OU=_CONTOSO,DC=contoso,DC=com”).count
Write-Host "Active : " $OUMembersActive
