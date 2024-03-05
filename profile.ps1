Invoke-Expression (&starship init powershell)

Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit
Invoke-Expression (& { (zoxide init --cmd cd powershell | Out-String) })

Function Invoke-Explorer {
    explorer.exe .
}

Function Update-EnvPath {
    $env:Path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' + [System.Environment]::GetEnvironmentVariable('Path', 'User')
}

Function New-PythonVenv {
    python -m venv venv
    .\.venv\Scripts\activate.ps1
}

Set-Alias -Name 'here' -Value Invoke-Explorer
Set-Alias -Name 'refreshenv' -Value Update-EnvPath
Set-Alias -Name 'venv' -Value New-PythonVenv

Set-Alias -Name 'touch' -Value New-Item
Set-Alias -Name 'bin' -Value Remove-ItemSafely
Set-Alias -Name 'which' -Value Get-Command
Set-Alias -Name 'activate' -Value '.\venv\Scripts\activate.ps1'
Set-Alias -Name 'pt' -Value 'ptpython'

#34de4b3d-13a8-4540-b76d-b9e8d3851756 PowerToys CommandNotFound module

Import-Module "C:\Users\Andrew\AppData\Local\PowerToys\WinUI3Apps\..\WinGetCommandNotFound.psd1"
#34de4b3d-13a8-4540-b76d-b9e8d3851756
