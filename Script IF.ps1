cls

$var1 = 10
$var2 = 10
$var3 = 10

if ($var1 -eq $var2 -and $var2 -eq $var3) {
    Write-Host "C'est bon"
} else {
    Write-Host "C'est pas bon"
}