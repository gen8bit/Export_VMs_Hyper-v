#
Write-Host "=========================================="
Write-Host "Backup VMs for Hyper-V"
Write-Host "Author: Angel Pescador Portas"
Write-Host "email: angel.pescador @ protonmail.com"
Write-Host "scripts name: START_BackupVMs_Monthly.ps1"
Write-Host "Version 1.3"
Write-Host "Date: 01/02/2018"
Write-Host "=========================================="
Write-Host
Sleep 5


# Var $Bckdate
$Bckdate = Get-Date -UFormat "%d-%m-%Y"
$StartBCK = Get-Date -UFormat "%Hh-%M"



Write-Host
Write-Host " Start Process " $StartBCK h
Write-Host " ----------------------- "
Write-Host
Write-Host "====================================="
Write-Host " Start Backup VMs "
Write-Host "====================================="
Write-Host

& "./BackupVM_server21.ps1"
& "./BackupVM_server22.ps1"
& "./BackupVM_server23.ps1"
& "./BackupVM_server24.ps1"
& "./BackupVM_server25.ps1"
& "./BackupVM_server26.ps1"
& "./BackupVM_server27.ps1"
& "./BackupVM_server28.ps1"
& "./BackupVM_server29.ps1"
& "./BackupVM_server30.ps1"



Sleep 5




$ENDBCK = Get-Date -UFormat "%Hh-%M"

Write-Host
Write-Host " END Process " $ENDBCK h
Write-Host " --------------------- "
Write-Host




EXIT
