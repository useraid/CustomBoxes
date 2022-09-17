dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
wsl --set-default-version 1
wsl --install -d Ubuntu
wsl --set-version Ubuntu 1