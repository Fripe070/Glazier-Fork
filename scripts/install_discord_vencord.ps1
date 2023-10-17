# Install Discord
winget install --id 'Discord.Discord'

# Install Vencord
Invoke-WebRequest -Uri 'https://github.com/Vencord/Installer/releases/latest/download/VencordInstallerCli.exe' -OutFile "$env:TEMP\VencordInstallerCli.exe"
& "$env:TEMP\VencordInstallerCli.exe" -branch stable -install -install-openasar
& "$env:TEMP\VencordInstallerCli.exe" -branch stable -install-openasar
