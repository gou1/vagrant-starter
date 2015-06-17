@echo off

cd %~dp0

FOR /F "tokens=1-2 delims= " %%G IN ('vagrant ssh-config') DO (
    if "%%G"=="Port" set SshPort=%%H
    if "%%G"=="IdentityFile" set IdentityFile=%%H
)

start "" "%CD%\putty.exe" -ssh -P %SshPort% -i %IdentityFile%.ppk vagrant@127.0.0.1
exit