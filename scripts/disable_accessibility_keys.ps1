# Source: https://github.com/Disassembler0/Win10-Initial-Setup-Script/blob/ceca720bc74fede48b6bd7301afab28801ccc016/Win10.psm1#L1905-L1910
Set-ItemProperty -Path 'HKCU:\Control Panel\Accessibility\StickyKeys' -Name 'Flags' -Type String -Value '506'
Set-ItemProperty -Path 'HKCU:\Control Panel\Accessibility\ToggleKeys' -Name 'Flags' -Type String -Value '58'
Set-ItemProperty -Path 'HKCU:\Control Panel\Accessibility\Keyboard Response' -Name 'Flags' -Type String -Value '122'
