#Requires -RunAsAdministrator

Clear-Host
Write-Host @'
 .88888.  dP                   oo                   
d8'   `88 88                                        
88        88 .d8888b. d888888b dP .d8888b. 88d888b. 
88   YP88 88 88'  `88    .d8P' 88 88ooood8 88'  `88 
Y8.   .88 88 88.  .88  .Y8P    88 88.  ... 88       
 `88888'  dP `88888P8 d888888P dP `88888P' dP       
oooooooooooooooooooooooooooooooooooooooooooooooooooo

'@ -ForegroundColor Cyan

$scriptFiles = Get-ChildItem -Path '.\scripts' -Filter *.ps1
$progress = 0

# Loop through the script files and execute them
foreach ($scriptFile in $scriptFiles) {
    $progress++
    Write-Progress `
        -Activity 'Running scripts...' `
        -Status "($progress/$($scriptFiles.Count)) Running: $($scriptFile.Name)" `
        -PercentComplete (($progress / ($scriptFiles.Count + 1)) * 100)

    Write-Host "[*] Running script: $($scriptFile.Name)" -ForegroundColor Yellow
    try {
        & $scriptFile.FullName
    } catch {
        Write-Host "[X] An error occurred when running $($scriptFile.Name)" -ForegroundColor Red
    }
        
    Start-Sleep -Milliseconds 100
}

Write-Progress -Activity 'Running scripts...' -Completed
Write-Host '[O] All scripts have been executed.' -ForegroundColor Green

Write-Host "`nPress any key to exit" -ForegroundColor Cyan
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')
