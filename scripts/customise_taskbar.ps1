# Source: https://techlabs.blog/categories/intune/move-windows-11-taskbar-left-center-right-using-registry-powershell-endpoint-manager
New-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAl' -Value 0 -Force

New-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowTaskViewButton' -Value 0 -Force
New-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAl' -Value 0 -Force

# Show 'End Task' in taskbar app context menu
New-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarDeveloperSettings' -Name 'TaskbarEndTask' -Value 1 -Force

# Source: https://lazyadmin.nl/win-11/disable-widgets-windows-11/
# Remove the installed package for each user
Get-AppxPackage -AllUsers | Where-Object { $_.Name -like "*WebExperience*" } | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue

# Uninstall built-in Teams app
Get-AppxPackage -AllUsers | Where-Object { $_.Name -like "*MicrosoftTeams*" } | Remove-AppxPackage -AllUsers

# Remove the provisioned package for new users
$AppxRemoval = Get-AppxProvisionedPackage -Online | Where-Object { $_.PackageName -like "*WebExperience*" } 
ForEach ( $App in $AppxRemoval) {
    Remove-AppxProvisionedPackage -Online -PackageName $App.PackageName 
}
