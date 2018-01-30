#
Write-Host "===================================="
Write-Host "Backup VMs for Hyper-V"
Write-Host "Author: Angel Pescador Portas"
Write-Host "email: apescador@previlabor.com"
Write-Host "scripts name: BackupVMsrsdc1.ps1"
Write-Host "Version 1.3"
Write-Host "Date: 29/12/2017"
Write-Host "===================================="
Write-Host
Sleep 5


# Var $Bckdate
$Bckdate = Get-Date -UFormat "%d-%m-%Y"
$StartBCK = Get-Date -UFormat "%H-%M"


# VM, Source & Destination Folders
# For ALL, Use: Get-VM | foreach Name

$VM = 'SERVERNAMETOEXPORT'
$destination = 'K:\BackupVMs\'+$VM +'\' +$Bckdate


# eMail Setting
$From = 'NameOfYourServer@domain.com'
$To = 'youremail@domain.com'
$Subject = 'END of Export VM ' + $VM
$smtpServer = 'yourSMTPServer'


# keep only 15 backup of this VM
forfiles -p K:\BackupVMs\$VM -d -16 -c "cmd /c rmdir /s /q @PATH" >null


Write-Host
Write-Host " Start Process " $StartBCK h
Write-Host " ------------------------- "
Write-Host
Write-Host "======================================================"
Write-Host " Exporting $VM  "
Write-Host " DESTINATION: $destination "
Write-Host "======================================================"
Write-Host



$ExportJob = Export-VM -Name $VM -path $destination -AsJob;

while( $ExportJob.State -eq "Running" -or $ExportJob.State -eq "NotStarted") 
{
    Write-Output ("[Exporting VM $VM] " + $($ExportJob.Progress.PercentComplete) + "% complete");
    sleep(60);
}

if($ExportJob.State -ne "Completed")
{
    Write-Error ("Export Job did not complete: " +$ExportJob.State);
    throw $ExportJob.Error;
}


Write-Host
Write-Host
Write-Host
Write-Host " 7za Process, please wait, I'm working "
Write-Host " ------------------------------------- "
Write-Host
Write-Host "======================================================"
Write-Host " Compress VM Backup $VM  "
Write-Host " DESTINATION: $destination "
Write-Host "======================================================"
Write-Host


.\7za.exe a $destination\$VM-7ZA.7z $destination -r -V1G -bt -y -mx=9 -ms=on -xr@exclude.txt -mhe -sdel

$ENDBCK = Get-Date -UFormat "%H-%M"
$Body = 'END of Backup ' + $VM + ' | ' + ' Start process ' + $StartBCK + ' | ' + ' END process ' + $ENDBCK

send-mailmessage -from $From -to $To -Subject $Subject -body $Body -smtpServer $smtpServer

Write-Host
Write-Host " END Process " $ENDBCK h
Write-Host " --------------------- "
Write-Host


EXIT
