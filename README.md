# Export_VMs_Hyper-v
Scripts for exporting VMs over MS Windows Hyper-v

- Estos script realizan una exportación completa de la Maquina Virtual.
- Durante la exportación, la Maquina Virtual seguira activa, reducirá su rendimiento
- Requisito obligatorio para realizar el backup, ejecutar cada script desde el host de Hyper-v que está ejecutando la maquina virtual, con este
disco conectado a esa misma máquina, usando la unidad E:
- Es posible ejecutar el script 'INICIO_BackupVMs.ps1' que realiza una exportación de todas las Maquinas Virtuales del host en el
que esta pinchado el disco duro USB, por lo que sería necesario pincharlo en el otro host y repetir la operación para disponer en este host.
- Se pruede realizar en horario de trabajo, pero se recomienda realizar fuera del horario de trabajo.

