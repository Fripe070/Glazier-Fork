winget install --id 'OpenJS.NodeJS'

setx /M npm_config_cache D:\.config\npm
$env:Path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' + [System.Environment]::GetEnvironmentVariable('Path', 'User')

npm install -g npm
npm config set fund false
