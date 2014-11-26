$name = 'FoxitReader7'
$url  = 'http://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/win/7.x/7.0/en_us/FoxitReader703.0916_enu_Setup.exe'

Install-ChocolateyPackage $name 'EXE' '/VERYSILENT' $url