#!/usr/bin/env pwsh

$documentsPath = [Environment]::GetFolderPath([Environment+SpecialFolder]::MyDocuments)
$modsPath = Join-Path $documentsPath "My Games/Beyond the Sword(J)/PublicMaps"
if (-Not (Test-Path $modsPath)) {
  $modsPath = Join-Path $documentsPath "My Games/Beyond the Sword/PublicMaps"
}
if (-Not (Test-Path $modsPath)) {
  throw "The PublicMaps path does not exist."
}
Write-Output $modsPath

$modName = "PublicMaps/*"

Copy-Item $modName $modsPath -Recurse
