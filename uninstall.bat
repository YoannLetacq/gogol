:: uninstall.bat
@echo off

:: Remove the binary from the WindowsApps directory
del %USERPROFILE%\AppData\Local\Microsoft\WindowsApps\gogol.exe

echo Gogol has been uninstalled successfully!
