#
Write-Host "========================================="
Write-Host "Backup VMs for Hyper-V"
Write-Host "Author: Angel Pescador Portas"
Write-Host "email: angel.pescador @ protonmail.com"
Write-Host "scripts name: INICIO_BackupVMs_Daily.ps1"
Write-Host "Version 1.3"
Write-Host "Date: 01/02/2018"
Write-Host "========================================="
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

& "./BackupVM_server11.ps1"
& "./BackupVM_server12.ps1"
& "./BackupVM_server13.ps1"
& "./BackupVM_server14.ps1"
& "./BackupVM_server15.ps1"
& "./BackupVM_server16.ps1"
& "./BackupVM_server17.ps1"
& "./BackupVM_server18.ps1"
& "./BackupVM_server19.ps1"
& "./BackupVM_server20.ps1"



Sleep 5




$ENDBCK = Get-Date -UFormat "%Hh-%M"

Write-Host
Write-Host " END Process " $ENDBCK h
Write-Host " --------------------- "
Write-Host




EXIT
