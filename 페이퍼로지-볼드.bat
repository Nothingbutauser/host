@echo off
setlocal

REM === Define variables ===
set "URL=https://raw.githubusercontent.com/Nothingbutauser/ResourcepackHost/refs/heads/main/Paperlogy-bold.zip"
set "FILENAME=Paperlogy-bold.zip"
set "MCDIR=%AppData%\.minecraft\resourcepacks"

REM === Create resourcepacks folder if it doesnât exist ===
if not exist "%MCDIR%" (
    mkdir "%MCDIR%"
)

REM === Download file using PowerShell ===
echo Downloading resource pack...
powershell -Command "Invoke-WebRequest -Uri '%URL%' -OutFile '%MCDIR%\%FILENAME%'"

REM === Confirm completion ===
if exist "%MCDIR%\%FILENAME%" (
    echo installed resourcepack. "%MCDIR%\%FILENAME%"
) else (
    echo failed.
)

pause
