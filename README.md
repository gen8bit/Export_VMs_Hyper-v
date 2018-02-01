# Export_VMs_Hyper-v
Scripts for exporting VMs over MS Windows Hyper-v

Copy in the Host VM, for example in C:\scripts\Export_VMs_Hyper-v\

- Add to the task scheduler a job for the scripts; START_BackupVMs_Daily.ps1, START_BackupVMs_Weekly.ps1 and START_BackupVMs_Monthly.ps1 as you need.
- Copy and configure one script 'BackupVM_server1.ps1' for every VM (Change some variables inside the script, like name of the server, retencion of backup, etc).

After finish the export backup, the script compress every backup with 7za
