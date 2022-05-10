$ipnet = '10.0.0.'
$lastoctect = 0
$ErrorActionPreference = 'silentlyContinue'
$WarningPreference = 'SilentlyContinue'

while($lastoctect -ne 11) 
{
    $lastoctect++
    $ipadd = $ipnet + $lastoctect
    $tryping = (Test-NetConnection $ipadd).pingsucceeded
    
    if ($tryping -eq 'True'){
        write-host $ipadd
    }
}
