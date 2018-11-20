
Write-host "Download Files"

$WebClient = New-Object System.Net.WebClient
$WebUrl = "https://www.os-templates.com/website-templates/template-downloads/page-templates/portfolio-templates/portfolio-{0}"
$FileDst = "C:\Users\omely\Downloads\Portfolio.T\P.{0}"
$total = 36

for($i = 1; $i -lt $total; $i++){
  
  $itm = $i.ToString() +".7z"
  $Orig = ($WebUrl -f $itm )
  $Dest = ($FileDst -f  $itm)
  #Write-host $Orig  , $Dest 
  $WebClient.DownloadFile( $Orig, $Dest )
}

for($i = 1; $i -lt $total; $i++){

  $itm2 = $i.ToString() +"-html5.7z"
  $Orig2 = ($WebUrl -f $itm2 )
  $Dest2 = ($FileDst -f  $itm2)
  $WebClient.DownloadFile( $Orig2, $Dest2 )
  
}

$WebUrl = "https://www.os-templates.com/website-templates/template-downloads/free-basic-html5-templates/basic-{0}"
$FileDst = "C:\Users\omely\Downloads\Basic.T\T.{0}"
$total = 90

for($i = 1; $i -lt $total; $i++){

  $itm2 = $i.ToString() +".7z"
  $Orig2 = ($WebUrl -f $itm2 )
  $Dest2 = ($FileDst -f  $itm2)
  $WebClient.DownloadFile( $Orig2, $Dest2 )
  
}

$FileLs = "1200","1140","960","940"
$WebUrl = "https://www.os-templates.com/website-templates/template-downloads/free-basic-html5-templates/rs-mqf-{0}"
$FileDst = "C:\Users\omely\Downloads\Basic.T\T.{0}"

Foreach ($i in $FileLs) {
  
  $itm2 = $i.ToString() +".7z"
  $Orig2 = ($WebUrl -f $itm2 )
  $Dest2 = ($FileDst -f  $itm2)
  $WebClient.DownloadFile( $Orig2, $Dest2 )
 
}