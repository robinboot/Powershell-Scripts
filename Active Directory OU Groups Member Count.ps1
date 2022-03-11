$MemberCount=((Get-ADGroup '<OU Group Name like HelpDesk>' -Properties *).Member.Count

Write-Host "Help Desk Members : " $MemberCount