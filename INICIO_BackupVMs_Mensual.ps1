#
Write-Host "===================================="
Write-Host "Backup VMs for Hyper-V"
Write-Host "(c) Previlabor 2017"
Write-Host "Author: Angel Pescador Portas"
Write-Host "email: apescador@previlabor.com"
Write-Host "email: tic@previlabor.com"
Write-Host "scripts name: INICIO_BackupVMs.ps1"
Write-Host "Version 1.2"
Write-Host "Date: 30/06/2017"
Write-Host "===================================="
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

# & "./BackupVMeqprevalia.ps1"
# & "./BackupVMsrdc1.ps1"
# & "./BackupVMsrintegratest.ps1"
# & "./BackupVMsrmgt.ps1"
# & "./BackupVMsrprocesos.ps1"
& "./BackupVMsrsage01.ps1"
# & "./BackupVMsrsage02.ps1"
& "./BackupVMsrshares01.ps1"
# & "./BackupVMsrts.ps1"
# & "./BackupVMsrvora.ps1"
# & "./BackupVMsrvorapre.ps1"




Sleep 5




$ENDBCK = Get-Date -UFormat "%Hh-%M"

Write-HostWrite-Host " END Process " $ENDBCK hWrite-Host " --------------------- "
Write-Host




EXIT