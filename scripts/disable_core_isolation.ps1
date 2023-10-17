# Source: https://github.com/Disassembler0/Win10-Initial-Setup-Script/blob/master/Win10.psm1 (EnableCIMemoryIntegrity)
Remove-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity' -Name 'Enabled' -ErrorAction SilentlyContinue
