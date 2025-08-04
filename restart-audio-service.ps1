if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Warning "Restarting script with administrative privileges..."
    $scriptPath = $MyInvocation.MyCommand.Path
    Start-Process powershell -ArgumentList "-File `"$scriptPath`"" -Verb RunAs
    exit
}

try {
    Stop-Service -Name Audiosrv -Force
    Stop-Service -Name AudioEndpointBuilder -Force
    Start-Service -Name Audiosrv
    Start-Service -Name AudioEndpointBuilder
    Write-Host "Restarted the services successfully"
}
catch {
    Write-Error "Failed to restart service: $_"
    Write-Host "Exiting in 5 seconds"
    Start-Sleep -Seconds 5
    exit 1
}
Write-Host "Exiting in 5 seconds"
Start-Sleep -Seconds 5
exit 0