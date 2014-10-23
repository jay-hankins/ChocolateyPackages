@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jay-hankins/ChocolateyPackages/master/AutoInstallers/win_autoinstall_chocolatey_feed.ps1'))

cyg-get wget
cyg-get curl
cyg-get zsh
cyg-get nano
cyg-get vim

wget 
C:\bin\cygwin\bin\zsh 