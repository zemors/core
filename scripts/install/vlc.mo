# VLC Installation
This script will install VLC media player on your computer.

```powershell
# Download the VLC installer
# check if admin rights are available
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Please run this script as administrator" -ForegroundColor Red
    exit
}

# check if VLC is already installed
if (Get-Command vlc -ErrorAction SilentlyContinue) {
    Write-Host "VLC is already installed" -ForegroundColor Green
    exit
}

# use winget to install VLC
winget install vlc




```