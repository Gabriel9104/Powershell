cls
<#
function hello($name)
{
    "Hello " + [string] $name
}

hello("Gabriel")
hello("Toto")
#>

function world
{
    Write-Host "World"
}
world
