cls
$error.clear()

#Variables rentrées par l'utilisateur
$Service = read-host "Nom du service "
$path = read-host "Chemin Executable "
$NameExe = read-host "Nom de l'executable "

#Variables lecture
$FullExe = $path + $NameExe
$FullSrvany = $path + "srvany.exe"

#Creation de l'executable issu de "MonService.PS1"
.\PS2EXE-GUI\ps2exe.ps1 MonService.PS1 MonService.exe

#Creation du service
New-Service -Name $Service -BinaryPathName $FullSrvany -DisplayName $Service -StartupType Manual

#Initialisation des paramètres du service
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\services\$Service\Parameters\
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\services\$Service\Parameters\ -Propertytype String -Name Appdirectory -Value $Path
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\services\$Service\Parameters\ -PropertyType String -Name Application -Value $fullExe

#Mise en place des Logs de confirmation
New-EventLog -LogName Application -Source "MonAppli" -ErrorAction Ignore
Write-EventLog -LogName "Application" -Source "MonAppli" -EventID 1234 -EntryType Information -Message "L'application a bien créé le système d'événement"

if ($error.count -gt 0) {Write-Host "L'operation a eu un problème" -foregroundcolor red}
else {Write-Host "L'operation s'est bien déroulée" -foregroundcolor green}