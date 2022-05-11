$ipnet = '10.0.0.'
$lastoctect = 0
$ErrorActionPreference = 'silentlyContinue'
$WarningPreference = 'SilentlyContinue'

while($lastoctect -ne 255) 
{
    $lastoctect++
    $ipadd = $ipnet + $lastoctect
    $tryping = (Test-NetConnection $ipadd -ErrorAction SilentlyContinue -WarningAction SilentlyContinue).pingsucceeded
    
    if ($tryping -eq 'True'){
        Write-Host 'Live Hosts'
        Write-Host  '-----------'
        Write-Host $ipadd
    }
}
