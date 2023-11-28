# Nom du logiciel
$swname = "NomDuLogiciel"

# Chemin du fichier MSI
$msiPath = "C:\Chemin\vers\$swname.msi"

# Chemin du fichier journal (log)
$logPath = "C:\SWLogs\Install_$swname.log"

# Installer le MSI avec journalisation
Start-Transcript -Path $logPath
Write-Output "Début de l'installation de $swname : $(Get-Date)"

# Commande d'installation MSI
Start-Process msiexec -ArgumentList "/i $msiPath /qn" -Wait

Write-Output "Fin de l'installation de $swname : $(Get-Date)"
Stop-Transcript