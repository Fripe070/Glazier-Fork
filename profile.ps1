Invoke-Expression (&starship init powershell)
Import-Module ZLocation

Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit

Function Invoke-Explorer {
    explorer.exe .
}

Function Update-EnvPath {
    $env:Path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' + [System.Environment]::GetEnvironmentVariable('Path', 'User')
}

Set-Alias -Name 'here' -Value Invoke-Explorer
Set-Alias -Name 'refreshenv' -Value Update-EnvPath

Set-Alias -Name 'activate' -Value '.\venv\Scripts\activate.ps1'
Set-Alias -Name 'pt' -Value 'ptpython'
