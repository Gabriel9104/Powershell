# Installation Serveur 01.

function SRV01
{
$Message = "Informations VM_01-SRV_01"
$Titre = "VM"

[System.Windows.Forms.MessageBox]::Show($Message, $Titre)

$NAME_SRV = Read-Host "Entrer le nom du SRV_01"
$RAM_SRV = Read-Host "Mémoire allouée à SRV_01"
$GENERATION_SRV = Read-Host "Génération de la VM (1 ou 2)"
$ISO_SRV = Read-Host "Chemin de l'ISO pour SRV_01"



}

SRV01


# Installation Serveur 02.

function SRV02
{
$Message = "Informations VM_02-SRV_02"
$Titre = "VM_02"

[System.Windows.Forms.MessageBox]::Show($Message, $Titre)

$NAME_SRV = Read-Host "Entrer le nom du SRV_02"
$RAM_SRV = Read-Host "Mémoire allouée à SRV_02"
$GENERATION_SRV = Read-Host "Génération de la VM (1 ou 2)"
$ISO_SRV = Read-Host "Chemin de l'ISO pour SRV_02"



}

SRV02



