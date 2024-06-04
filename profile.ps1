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
    uv venv
    .\.venv\Scripts\activate.ps1
}

Set-Alias -Name 'here' -Value Invoke-Explorer
Set-Alias -Name 'refreshenv' -Value Update-EnvPath
Set-Alias -Name 'venv' -Value New-PythonVenv

Set-Alias -Name 'touch' -Value New-Item
Set-Alias -Name 'rm' -Value Remove-ItemSafely -Force
Set-Alias -Name 'which' -Value Get-Command
Set-Alias -Name 'activate' -Value '.\.venv\Scripts\activate.ps1'
Set-Alias -Name 'pt' -Value 'ptpython'
