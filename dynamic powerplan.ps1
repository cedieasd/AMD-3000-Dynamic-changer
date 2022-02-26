while($true){

if((get-process | ?{$_.path -eq "Z:\Steam\steamapps\common\Counter-Strike Global Offensive\csgo.exe"}) -or (get-process | ?{$_.path -eq "G:\Games\Valorant\Riot Games\Riot Client\RiotClientServices.exe"})){
    Write-Host ("Game detected")
    Write-Host ("AMD Balanced")
    powercfg /s 9897998c-92de-4669-853f-b7cd3ecb2790 }

else {
$SysMem = Get-WmiObject Win32_OperatingSystem -Property FreePhysicalMemory

If($SysMem.FreePhysicalMemory -ge (10200000)) {
    Write-Host ("Power Saver")
    powercfg /s a1841308-3541-4fab-bc81-f71556f20b4a } 
else {
    Write-Host ("AMD Balanced")
    powercfg /s 9897998c-92de-4669-853f-b7cd3ecb2790 }
}
    
Start-Sleep -Seconds 30
}