New-Item -Path "C:\inetpub\wwwroot\" -Name enpaul.net.new -ItemType Directory -Force
#Copy-Item -Path .\* -Destination "C:\inetpub\wwwroot\enpaul.net.new\" -Force -Recurse
Copy-Item -Path .\deploy.ps1 -Destination "C:\inetpub\wwwroot\enpaul.net.new\" -Force -Recurse
#Rename-Item -Path "C:\inetpub\wwwroot\enpaul.net" -NewName "enpaul.net.old" -Force
#Rename-Item -Path "C:\inetpub\wwwroot\enpaul.net.new" -NewName "enpaul.net" -Force
#Remove-Item -path "C:\inetpub\wwwroot\enpaul.net.old" -Recurse -Force
exit
