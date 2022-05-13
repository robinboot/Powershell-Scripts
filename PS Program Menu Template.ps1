#############################################################################
#       Author: RobinBoot(Sercan H.G.)
#       Reviewer: https://github.com/robinboot/Powershell-Scripts/
#       Date: 13/05/2022
#       Description: Creation of Powershel Menu
#############################################################################
###########################Define Variables##################################

function Show-Menu
{
     param (
           [string]$Title = 'System Check' 
     )
     cls
     Write-Host "================== $Title ===================" -ForegroundColor Green 
     Write-Host ""
     Write-Host "1: Who am I?"
     Write-Host "2: Show IP Detail"
     Write-Host "3: Change DataSource of All Reports in a SSRS Folder"
     Write-Host ""
     Write-Host "Q: Quit"
}

do
{
     Show-Menu
     Write-Host ""
     $input = Read-Host "What do you want to do?" 
     switch ($input)
     {
        '1'
        {      
            ###################### 1 - WHO AM I ? ###########################################
		    Write-Host "1: You are:" -ForegroundColor Red -backgroundColor yellow
            $outputString=whoami
            Write-Host $outputString -ForegroundColor Green
            #####################################################################################
        }
        '2'
        {
            ###################### 2 - SHOW IP DETAIL? ###########################################
	    	Write-Host "2: Your IP Detail:" -ForegroundColor Red -backgroundColor yellow
            ipconfig
            
		}
        '3'
        {
		    Write-Host "3: Number three selected..." -ForegroundColor Red -backgroundColor yellow
		}
        'q' {return}
     }
     pause
}
until ($input -eq 'q')

