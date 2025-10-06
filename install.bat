@echo off
setlocal

:: Set the path to the ZIP file
set "ZIP_FILE=drainmodsV2.zip"

:: Set the destination directory
set "DEST_DIR=%APPDATA%\.minecraft\mods"

:: Create the destination directory if it doesn't exist
if not exist "%DEST_DIR%" (
    mkdir "%DEST_DIR%"
)

:: Extract the ZIP file to the destination
powershell -Command "Expand-Archive -Path '%ZIP_FILE%' -DestinationPath '%DEST_DIR%' -Force"

echo Mod extracted to %DEST_DIR%
