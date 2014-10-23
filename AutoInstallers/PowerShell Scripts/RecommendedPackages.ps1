#########################
# Autoinstall script using chocolatey
#########################
# Note: Net 4.0 must be installed prior to running this script
#
#Modify this line to change packages
$items = @("GoogleChrome", "Firefox", "skype", "vlc", "k-litecodecpackbasic", "flashplayerplugin", "javaruntime", "DotNet4.5", "dropbox", "jdk8", "7zip.install", "eclipse-standard-luna", "notepadplusplus.install", "cyg-get", "iTunes",  "paint.net", "picasa", "Silverlight", "spotify", "teamviewer", "FoxitReader", "putty", "winscp")



#################
# Create packages.config based on passed arguments
#################
$xml = '<?xml version="1.0" encoding="utf-8"?>'+ "`n" +'<packages>' + "`n"
foreach ($item in $items)
{
  $xml += "`t" +'<package id="' + $item + '"/>' + "`n"
}
$xml += '</packages>'

$file = ([system.environment]::getenvironmentvariable("userprofile") + "\packages.config")
$xml | out-File $file

######
# Install packages with cinst
######

cinst $file


########
# Delete packages.config