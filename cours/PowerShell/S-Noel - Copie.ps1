$Etage = 20
$space = " "
$etoile = "* "
$cadeau = @()
for ($j=0; $j -lt ($etage+1-2) ; $j++){
	$cadeau += "          "
}
$cadeau +=  "  (\ /)   "
$cadeau +=  "  (O.o)   "
$cadeau +=  "(`"`")(`"`")  "
for ($i=1;$i -le $Etage; $i++)
{
	$Construct = $space * ($Etage - $i) + "* " * $i
	if ($i % 3 -eq 0) {$couleur = "yellow"}
	elseif ($i % 3 -eq 1) {$couleur = "red"}
	else {$couleur = "white"}
    write-host $cadeau[$i] -NoNewline
	Write-Host $Construct -foregroundcolor $couleur
}
$Construct = $space * [int]($Etage -3) + "[ ]"
write-host $cadeau[$etage] -NoNewline
Write-Host $Construct -foregroundcolor "DarkGray"



