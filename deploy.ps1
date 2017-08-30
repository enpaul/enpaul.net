if (Test-Path "C:\inetpub\wwwroot\enpaul.net.new") {
  Remove-Item -Path "C:\inetpub\wwwroot\enpaul.net.new" -Recurse -Force
}

New-Item -Path "C:\inetpub\wwwroot\" -Name "enpaul.net.new" -ItemType Directory -Force

Copy-Item -Path ".\*" -Destination "C:\inetpub\wwwroot\enpaul.net.new\" -Force -Recurse

if (Test-Path "C:\inetpub\wwwroot\enpaul.net.new\.git") {
  Remove-Item -Path "C:\inetpub\wwwroot\enpaul.net.new\.git" -Recurse -Force
}
if (Test-Path "C:\inetpub\wwwroot\enpaul.net.new\.gitlab-ci.yml") {
  Remove-Item -Path "C:\inetpub\wwwroot\enpaul.net.new\.gitlab-ci.yml" -Force
}
if (Test-Path "C:\inetpub\wwwroot\enpaul.net.new\deploy.ps1") {
  Remove-Item -Path "C:\inetpub\wwwroot\enpaul.net.new\deploy.ps1" -Force
}
if (Test-Path "C:\inetpub\wwwroot\enpaul.net.new\.gitignore") {
  Remove-Item -Path "C:\inetpub\wwwroot\enpaul.net.new\.gitignore" -Force
}

Rename-Item -Path "C:\inetpub\wwwroot\enpaul.net" -NewName "enpaul.net.old" -Force
Rename-Item -Path "C:\inetpub\wwwroot\enpaul.net.new" -NewName "enpaul.net" -Force

Remove-Item -path "C:\inetpub\wwwroot\enpaul.net.old" -Recurse -Force
exit
