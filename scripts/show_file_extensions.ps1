# Source: https://github.com/Disassembler0/Win10-Initial-Setup-Script/blob/master/Win10.psm1 (ShowKnownExtensions)
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideFileExt' -Type DWord -Value 0

# Show empty drives
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideDrivesWithNoMedia' -Type DWord -Value 0
