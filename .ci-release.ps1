if (Test-Path "C:\inetpub\wwwroot\tmp-build.enpaul") {
  Remove-Item -Path "C:\inetpub\wwwroot\tmp-build.enpaul" -Recurse -Force
}

New-Item -Path "C:\inetpub\wwwroot\" -Name "tmp-build.enpaul" -ItemType Directory -Force

Copy-Item -Path ".\*" -Destination "C:\inetpub\wwwroot\tmp-build.enpaul\" -Force -Recurse

if (Test-Path "C:\inetpub\wwwroot\tmp-build.enpaul\.git") {
  Remove-Item -Path "C:\inetpub\wwwroot\tmp-build.enpaul\.git" -Recurse -Force
}
if (Test-Path "C:\inetpub\wwwroot\tmp-build.enpaul\.gitlab-ci.yml") {
  Remove-Item -Path "C:\inetpub\wwwroot\tmp-build.enpaul\.gitlab-ci.yml" -Force
}

Remove-Item -Path "C:\inetpub\wwwroot\tmp-build.enpaul\*.ps1" -Force

if (Test-Path "C:\inetpub\wwwroot\tmp-build.enpaul\.gitignore") {
  Remove-Item -Path "C:\inetpub\wwwroot\tmp-build.enpaul\.gitignore" -Force
}
if (Test-Path "C:\inetpub\wwwroot\tmp-build.enpaul\.htaccess") {
  Remove-Item -Path "C:\inetpub\wwwroot\tmp-build.enpaul\.htaccess" -Force
}

if (Test-Path "C:\inetpub\wwwroot\enpaul") {
  Rename-Item -Path "C:\inetpub\wwwroot\enpaul" -NewName "enpaul.old" -Force
}

Rename-Item -Path "C:\inetpub\wwwroot\tmp-build.enpaul" -NewName "enpaul" -Force

if (Test-Path "C:\inetpub\wwwroot\enpaul.old") {
  Remove-Item -path "C:\inetpub\wwwroot\enpaul.old" -Recurse -Force
}

exit
