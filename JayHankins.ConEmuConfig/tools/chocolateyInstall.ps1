$package = 'JayHankins.ConEmuConfig'

try {

  function Get-CurrentDirectory
  {
    $thisName = $MyInvocation.MyCommand.Name
    [IO.Path]::GetDirectoryName((Get-Content function:$thisName).File)
  }

  Push-Location (Get-CurrentDirectory)
  Copy-Item '.\ConEmu-bash.xml' 'C:\Program Files\ConEmu\ConEmu.xml'

  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package $($_.Exception.Message)
  throw
}
