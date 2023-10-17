# Based on https://woshub.com/disable-web-search-windows-start-menu/
if (!(Test-Path -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer')) {
    New-Item -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer'
}
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'DisableSearchBoxSuggestions' -Value 1 -Type DWORD
