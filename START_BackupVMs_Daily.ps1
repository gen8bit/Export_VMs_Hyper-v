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

& "./BackupVM_server1.ps1"
& "./BackupVM_server2.ps1"
& "./BackupVM_server3.ps1"
& "./BackupVM_server4.ps1"
& "./BackupVM_server5.ps1"
& "./BackupVM_server6.ps1"
& "./BackupVM_server7.ps1"
& "./BackupVM_server8.ps1"
& "./BackupVM_server9.ps1"
& "./BackupVM_server10.ps1"



Sleep 5




$ENDBCK = Get-Date -UFormat "%Hh-%M"

Write-Host
Write-Host " END Process " $ENDBCK h
Write-Host " --------------------- "
Write-Host




EXIT
