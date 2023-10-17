# Source: https://github.com/Disassembler0/Win10-Initial-Setup-Script/blob/master/Win10.psm1 (DisableAccessibilityKeys)
Set-ItemProperty -Path 'HKCU:\Control Panel\Accessibility\StickyKeys' -Name 'Flags' -Type String -Value '506'
Set-ItemProperty -Path 'HKCU:\Control Panel\Accessibility\ToggleKeys' -Name 'Flags' -Type String -Value '58'
Set-ItemProperty -Path 'HKCU:\Control Panel\Accessibility\Keyboard Response' -Name 'Flags' -Type String -Value '122'
