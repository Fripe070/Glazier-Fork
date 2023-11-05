# Source: https://github.com/Disassembler0/Win10-Initial-Setup-Script/blob/ceca720bc74fede48b6bd7301afab28801ccc016/Win10.psm1#L2484
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideFileExt' -Type DWord -Value 0

# Show empty drives
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideDrivesWithNoMedia' -Type DWord -Value 0
