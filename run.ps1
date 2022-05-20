# this files serves as both documentation and a starting point for first time users

$ErrorActionPreference = 'Stop'

if($PSVersionTable.PSVersion.major -le 5)
{
    Write-Host "it is encouraged to use a powershell version larger then 5. your version: $($PSVersionTable.PSVersion)"
} elseif(-not $IsWindows)
{
    Write-Error 'this repository currently only supports Windows!'
}

if(-not $(Get-Command flutter))
{
    Write-Error 'install flutter first!'
}

Write-Host "checking flutter health..."
flutter doctor | Out-Null
if(-not $?)
{
    Write-Error 'flutter doctor failed, please run "flutter doctor" and follow the (online) instructions'
}

Push-Location "$PSScriptRoot/flutterapp"
flutter run -d windows
Pop-Location
