# 🍫 Chocolatey_installer
Quick installer via Powershell, install list of `apps.txt` via `install-apps.ps1` 

### 1. To [Install Chocolatey](https://chocolatey.org/install), from a Powershell **Administrator** console, simply do:

``` ps1
Set-Location $env:USERPROFILE
If ( ! ( Test-Path $PROFILE ) ) { New-Item -Force -ItemType File -Path $PROFILE; Add-Content -Path $PROFILE -Encoding UTF8 -Value "# Powershell Profile"; }
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
RefreshEnv.cmd
```
And you're ready to go.
If you want a window interface instead of the powershell console, you can do: `choco install chocolateygui`.


### 2. Change the execution policy
``` ps1
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
``` 
### 3. To use the batch installer Run this:
 ```ps1
.\install-apps.ps1 -filePath ".\apps.txt"
```


- see `chocolatey_cheatsheet.md` for quick indication of more functionalities

- change `apps.txt` accourdingly to your wishes, for example:
```
brave
docker-desktop
firefox
git
github-desktop
googlechrome
libreoffice-fresh
node
nodejs
npm
sharex
slack
vscode
vscode-csharp
vscode-drawio
vscode-gitlens
vscode-markdown-all-in-one
vscode-powershell
vscode-prettier
vscode-liveserver
xampp-81
```
