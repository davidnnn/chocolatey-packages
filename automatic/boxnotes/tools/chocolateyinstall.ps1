$ErrorActionPreference = 'Stop';
$packageName= 'boxnotes' # arbitrary name for the package, used in messages
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://e3.boxcdn.net/box-installers/boxnotes/win/latest/BoxNotesSetup.exe'
  softwareName  = 'boxnotes*'
  checksum      = '2435b4ad40d447161b5ee1b4e76103345f0d8d4737abbdc0ffca74533bb5d771'
  checksumType  = 'sha256'
  silentArgs   = '--silent'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs