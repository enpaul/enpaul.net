if (Test-Path "C:\inetpub\wwwroot\dev\build-tmp.enpaul") {
  Remove-Item -Path "C:\inetpub\wwwroot\dev\build-tmp.enpaul" -Recurse -Force
}

New-Item -Path "C:\inetpub\wwwroot\dev\" -Name "build-tmp.enpaul" -ItemType Directory -Force

Copy-Item -Path ".\*" -Destination "C:\inetpub\wwwroot\dev\build-tmp.enpaul\" -Force -Recurse

if (Test-Path "C:\inetpub\wwwroot\dev\build-tmp.enpaul\.git") {
  Remove-Item -Path "C:\inetpub\wwwroot\dev\build-tmp.enpaul\.git" -Recurse -Force
}
if (Test-Path "C:\inetpub\wwwroot\dev\build-tmp.enpaul\.gitlab-ci.yml") {
  Remove-Item -Path "C:\inetpub\wwwroot\dev\build-tmp.enpaul\.gitlab-ci.yml" -Force
}

Remove-Item -Path "C:\inetpub\wwwroot\dev\build-tmp.enpaul\*.ps1" -Force

if (Test-Path "C:\inetpub\wwwroot\dev\build-tmp.enpaul\.gitignore") {
  Remove-Item -Path "C:\inetpub\wwwroot\dev\build-tmp.enpaul\.gitignore" -Force
}
if (Test-Path "C:\inetpub\wwwroot\dev\build-tmp.enpaul\.htaccess") {
  Remove-Item -Path "C:\inetpub\wwwroot\dev\build-tmp.enpaul\.htaccess" -Force
}

if (Test-Path "C:\inetpub\wwwroot\dev\enpaul") {
  Rename-Item -Path "C:\inetpub\wwwroot\dev\enpaul" -NewName "enpaul.old" -Force
}

Rename-Item -Path "C:\inetpub\wwwroot\dev\build-tmp.enpaul" -NewName "enpaul" -Force

if (Test-Path "C:\inetpub\wwwroot\dev\enpaul.old") {
  Remove-Item -path "C:\inetpub\wwwroot\dev\enpaul.old" -Recurse -Force
}
exit
