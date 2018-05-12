$packageName = "boxnotes"
$installerType = "exe"


# Uninstall PDFCreator if older version is installed
if (Test-Path "$env:LOCALAPPDATA\boxnotes") {
    Uninstall-ChocolateyPackage $packageName $installerType "--uninstall" "$env:LOCALAPPDATA\boxnotes\update.exe"
}