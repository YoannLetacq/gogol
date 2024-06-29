:: install.bat
@echo off

:: Compile the gogol binary
go build -o gogol.exe main.go

:: Move the binary to a directory in PATH
move gogol.exe %USERPROFILE%\AppData\Local\Microsoft\WindowsApps\

:: Ensure the binary is executable
icacls %USERPROFILE%\AppData\Local\Microsoft\WindowsApps\gogol.exe /grant Everyone:F

echo Gogol has been installed successfully!
echo You can now run Gogol from the command, use gogol help for information.
