setx.exe /M 'PIP_CACHE_DIR' 'D:\.cache\pip'
setx.exe /M 'npm_config_cache' 'D:\.cache\npm'
setx.exe /M 'NUGET_PACKAGES' 'D:\.cache\nuget'
setx.exe /M 'CARGO_HOME' 'D:\.cache\cargo'
setx.exe /M 'VCPKG_DEFAULT_BINARY_CACHE' 'D:\.cache\vcpkg'
setx.exe /M 'MAVEN_OPTS' '-Dmaven.repo.local=D:\.cache\maven %MAVEN_OPTS%'  # naturally Java has to be a special snowflake
