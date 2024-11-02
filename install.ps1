#!/usr/bin/env pwsh

$documentsPath = [Environment]::GetFolderPath([Environment+SpecialFolder]::MyDocuments)
$customMapPath = Join-Path $documentsPath "My Games/Beyond the Sword(J)/PublicMaps"
if (-Not (Test-Path $customMapPath)) {
  $customMapPath = Join-Path $documentsPath "My Games/Beyond the Sword/PublicMaps"
}
if (-Not (Test-Path $customMapPath)) {
  throw "The PublicMaps path does not exist."
}
Write-Output $customMapPath

$scriptPath = $PSScriptRoot
$publicMapsPath = Join-Path $scriptPath "PublicMaps"
Copy-Item "$publicMapsPath/*" $customMapPath -Recurse -Verbose
