
<#
$fruits = @("Pomme", "Cerise", "45", $var1)

$user = @{Nom="Le Gac"; Prenom="Glen"; Age=28; Role="Prof";}

foreach($item in $fruits){
    $item
    Write-Host "ça fonctionne"
}
#>
<#
for($i = 0; $i -lt 10; $i++){
    $fruits[$i]
}
#>

$i = 0;
<#
while ($i -lt 10) {
    $i * 5;
    $i++;
}
#>
while($i -lt 500){
    $i * 1;
    $i++;
}

