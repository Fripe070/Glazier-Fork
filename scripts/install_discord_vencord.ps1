# Install Discord
winget install --id 'Discord.Discord'

# Install Vencord
winget install --id 'Git.Git'
winget install --id 'pnpm.pnpm'
$env:Path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' + [System.Environment]::GetEnvironmentVariable('Path', 'User')

# https://github.com/Vendicated/Vencord/blob/0fd76ab15a51a8426786b696d422f59bd1250099/scripts/runInstaller.mjs#L126-L127
$env:VENCORD_USER_DATA_DIR = "$env:LOCALAPPDATA\Vencord"
$env:VENCORD_DEV_INSTALL = "1"

git clone https://github.com/Vendicated/Vencord.git "$env:VENCORD_USER_DATA_DIR"
pnpm -C "$env:VENCORD_USER_DATA_DIR" install
pnpm -C "$env:VENCORD_USER_DATA_DIR" build

Invoke-WebRequest -Uri 'https://github.com/Vencord/Installer/releases/latest/download/VencordInstallerCli.exe' -OutFile "$env:TEMP\VencordInstallerCli.exe"
& "$env:TEMP\VencordInstallerCli.exe" -branch stable -install -install-openasar
& "$env:TEMP\VencordInstallerCli.exe" -branch stable -install-openasar
