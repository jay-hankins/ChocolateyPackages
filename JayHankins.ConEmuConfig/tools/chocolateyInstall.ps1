$package = 'JayHankins.ConEmuConfig'

try {

  function Get-CurrentDirectory
  {
    $thisName = $MyInvocation.MyCommand.Name
    [IO.Path]::GetDirectoryName((Get-Content function:$thisName).File)
  }

  Push-Location (Get-CurrentDirectory)
  Copy-Item '.\ConEmu.xml' 'C:\Program Files\ConEmu'

  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package $($_.Exception.Message)
  throw
}
