<#
function exo11
{
    $word = read-host "Entrer un mot"
    $word.Length
}
exo11






function exo12
{
    $number = read-host "Entrez un chiffre"
    if ($number % 2) {
        Write-Host "nbr impaire"
    } else {
        Write-Host "nbr pair"
    }
}

exo12





function exo13
{
    [int]$nbr = Read-host "Give me a number between 10 and 20"
    if ($nbr -lt 10 -or $nbr -gt 20) {
        Write-Host "bad"
        exo13
    } else {
        Write-Host "good"
    }
}

exo13



Function exo14
{
    [int]$chiffre = Read-Host "Give me a number"
    for ($i = $chiffre + 1; $i -lt $chiffre + 11;$i++){
        $i
        }
}

exo14
#>

<#

Function exo15
{
    [int]$age = Read-Host "Give me a number"
    for ($i = 0; $i -lt 11; $i++){
        $res = $i * $age
        Write-Host $i * $age =$res
        }
}
exo15

#>
<#
Function exo16
{
    [int]$nombre = Read-Host "Give me a number"
    $count = 0
    for ($i =0; $i -le $nombre; $i++){
        $count = $i + $count
    } 
    $count
}
exo16
#>

<#
Function exo17
{
    [int]$nbre = Read-Host "Donnez l'âge de votre enfant"
    if ($nbre -eq 6 -or $nbre -eq 7) {
             Write-Host "Poussin"
        } elseif ($nbre -eq 8 -or $nbre -eq 9) {
             Write-Host "Pupille"
        } elseif ($nbre -eq 8 -or $nbre -eq 9) {
             Write-Host "Minime"
        } elseif ($nbre -ge 12) {
             Write-Host "Cadet"
        } else {
             Write-Host "too small"
        }
}
exo17
#>


<#
Function exo18
{
    Get-ChildItem -Path . -Filter *.old | Rename-Item -NewName {[System.IO.Path]::ChangeExtension($_.name, ".txt")}
}

exo18
#>
<#
Function exo19
{
    $deparement = Read-host "donnez le nom de votre département"
    $url = "https://geo.api.gouv.fr/communes?codePostal="+$deparement
    $reponse = Invoke-WebRequest $url -Method 'GET' -UseBasicParsing
    $reponse.Content
    
}
exo19
#>

<#

[System.Windows.Forms.MessageBox]::Show($Message = lol, $Titre = lol)

#>



function Show-Message {

param (
    [string]$Message = "Vous avez prit un Ransonware",
    [string]$Titre = "Aie",
    [switch]$OKCancel,
    [switch]$AbortRetryIgnore,
    [switch]$YesNoCancel,
    [switch]$YesNo,
    [switch]$RetryCancel,
    [switch]$IconErreur,
    [switch]$IconQuestion,
    [switch]$IconAvertissement,
    [switch]$IconInformation
    )

# Affecter la valeur selon le type de boutons choisis
if ($OKCancel) { $Btn = 1 }
elseif ($AbortRetryIgnore) { $Btn = 2 }
elseif ($YesNoCancel) { $Btn = 3 }
elseif ($YesNo) { $Btn = 4 }
elseif ($RetryCancel) { $Btn = 5 }
else { $Btn = 0 }

# Affecter la valeur pour l'icone 
if ($IconErreur) {$Icon = 16 }
elseif ($IconQuestion) {$Icon = 32 }
elseif ($IconAvertissement) {$Icon = 48 }
elseif ($IconInformation) {$Icon = 64 }
else {$Icon = 0 }
    

# Charger la biblithèque d'objets graphiques Windows.Forms
[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null

# Afficher la boite de dialogue et renvoyer la valeur de retour (bouton appuyé)
$Reponse = [System.Windows.Forms.MessageBox]::Show($Message, $Titre , $Btn, $Icon)
Return $Reponse
}
Show-Message

