<#
  Author: Akash Chawla
  Source: https://github.com/Azure/RDS-Templates/tree/master/CustomImageTemplateScripts/CustomImageTemplateScripts_2023-09-15
#>

#description: Admin sys prep
#execution mode: Individual
#tags: Microsoft, Custom Image Template Scripts

((Get-Content -path C:\\DeprovisioningScript.ps1 -Raw) -replace 'Sysprep.exe /oobe /generalize /quiet /quit','Sysprep.exe /oobe /generalize /quit /mode:vm' ) | Set-Content -Path C:\\DeprovisioningScript.ps1