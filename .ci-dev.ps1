if (Test-Path "C:\inetpub\wwwroot\build-tmp.enpaul-dev") {
  Remove-Item -Path "C:\inetpub\wwwroot\build-tmp.enpaul-dev" -Recurse -Force
}

New-Item -Path "C:\inetpub\wwwroot\" -Name "build-tmp.enpaul-dev" -ItemType Directory -Force

Copy-Item -Path ".\*" -Destination "C:\inetpub\wwwroot\build-tmp.enpaul-dev\" -Force -Recurse

if (Test-Path "C:\inetpub\wwwroot\build-tmp.enpaul-dev\.git") {
  Remove-Item -Path "C:\inetpub\wwwroot\build-tmp.enpaul-dev\.git" -Recurse -Force
}
if (Test-Path "C:\inetpub\wwwroot\build-tmp.enpaul-dev\.gitlab-ci.yml") {
  Remove-Item -Path "C:\inetpub\wwwroot\build-tmp.enpaul-dev\.gitlab-ci.yml" -Force
}

Remove-Item -Path "C:\inetpub\wwwroot\build-tmp.enpaul-dev\*.ps1" -Force

if (Test-Path "C:\inetpub\wwwroot\build-tmp.enpaul-dev\.gitignore") {
  Remove-Item -Path "C:\inetpub\wwwroot\build-tmp.enpaul-dev\.gitignore" -Force
}
if (Test-Path "C:\inetpub\wwwroot\build-tmp.enpaul-dev\.htaccess") {
  Remove-Item -Path "C:\inetpub\wwwroot\build-tmp.enpaul-dev\.htaccess" -Force
}

if (Test-Path "C:\inetpub\wwwroot\enpaul-dev") {
  Rename-Item -Path "C:\inetpub\wwwroot\enpaul-dev" -NewName "enpaul-dev.old" -Force
}

Rename-Item -Path "C:\inetpub\wwwroot\build-tmp.enpaul-dev" -NewName "enpaul-dev" -Force

if (Test-Path "C:\inetpub\wwwroot\enpaul-dev.old") {
  Remove-Item -path "C:\inetpub\wwwroot\enpaul-dev.old" -Recurse -Force
}
exit
