$PwshVersion=$PSVersionTable.PSVersion.Major
$CMD="$PSHOME\powershell.exe"
if($PwshVersion -gt 5)
{
    $CMD="$PSHOME\pwsh.exe"
}
$WorkPath=Split-Path -Parent $MyInvocation.MyCommand.Definition
$WorkPwsh=Join-Path $WorkPath SwitchNetworkTool.ps1
$WorkPwsh
netsh interface show interface
Start-Process $CMD  $WorkPwsh  -Verb runas -Wait
# Start-Sleep –s 5
netsh interface show interface
Start-Sleep –s 5