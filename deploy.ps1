New-Item -Path "C:\inetpub\wwwroot\" -Name "enpaul.net.new" -ItemType Directory -Force

$ExcludeExt = '*.yml', '*.ps1', '*.gitignore'

Get-ChildItem ".\" -Recurse -Exclude $ExcludeExtentions | Where-Object { ".\.git" -notcontains $_.DirectoryName } | Copy-Item -Destination "C:\inetpub\wwwroot\enpaul.net.new\"

#Copy-Item -Path .\* -Destination "C:\inetpub\wwwroot\enpaul.net.new\" -Force -Recurse
#Remove-Item -Path "C:\inetpub\wwwroot\enpaul.net.new\.git" -Recurse -Force
#Remove-Item -Path "C:\inetpub\wwwroot\enpaul.net.new\.gitlab-ci.yml" -Force
#Copy-Item -Path .\deploy.ps1 -Destination "C:\inetpub\wwwroot\enpaul.net.new\" -Force -Recurse
Rename-Item -Path "C:\inetpub\wwwroot\enpaul.net" -NewName "enpaul.net.old" -Force
Rename-Item -Path "C:\inetpub\wwwroot\enpaul.net.new" -NewName "enpaul.net" -Force
Remove-Item -path "C:\inetpub\wwwroot\enpaul.net.old" -Recurse -Force
#Remove-Item -Path "C:\inetpub\wwwroot\enpaul.net\deploy.ps1" -Force
exit
