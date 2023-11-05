# Source: https://github.com/Disassembler0/Win10-Initial-Setup-Script/blob/ceca720bc74fede48b6bd7301afab28801ccc016/Win10.psm1#L986
Remove-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity' -Name 'Enabled' -ErrorAction SilentlyContinue
