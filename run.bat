@echo off
setlocal
cd /d "%~dp0"

where java >nul 2>nul
if errorlevel 1 (
    echo Java was not found. Install JDK 17 or newer and add it to PATH.
    exit /b 1
)

where javac >nul 2>nul
if errorlevel 1 (
    echo javac was not found. Install JDK 17 or newer and add it to PATH.
    exit /b 1
)

if not exist "bin" mkdir "bin"
powershell -NoProfile -Command "$sources = Get-ChildItem -Path 'IPMS' -Recurse -Filter '*.java' | ForEach-Object FullName; & javac --release 17 -d 'bin' $sources; exit $LASTEXITCODE"
if errorlevel 1 (
    echo Build failed.
    exit /b 1
)

java -cp "bin" IPMS.System.SystemApp
