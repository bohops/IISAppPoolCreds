import-module WebAdministration
ForEach ($applicationPool in $(Get-ChildItem -path IIS:\AppPools).Name)
{
    Write-Host '------------------'
    Write-Host 'Application Pool: ' $applicationPool
    Write-Host '        Username: ' $(Get-Item (Join-Path 'IIS:\AppPools\' $applicationPool) | select -ExpandProperty processModel).userName
    Write-Host '        Password: ' $(Get-Item (Join-Path 'IIS:\AppPools\' $applicationPool) | select -ExpandProperty processModel).password
}
