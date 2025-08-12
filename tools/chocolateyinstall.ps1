
$ErrorActionPreference = 'Stop'
  
$packageName = 'synologydrive'
$url         = 'https://global.synologydownload.com/download/Utility/SynologyDriveClient/3.5.2-16111/Windows/Installer/x86_64/Synology%20Drive%20Client-3.5.2-16111-x64.msi'
$checksum    = '7CC58DCA192E352BB1D473C0EF5A529898E251437DD66FC78E79D47A1280CF81'
  
$packageArgs = @{
  packageName            = $packageName
  fileType               = 'msi'
  url                    = $url
  silentArgs             = '/passive /qn /norestart'
  checksum               = $checksum
  checksumType           = 'sha256'
  validExitCodes         = @(0)
}
Install-ChocolateyPackage @packageArgs