@echo off
title FreeGLUT Setup for MinGW
echo ==============================
echo  🚀 FreeGLUT Installation
echo ==============================

:: Check if script is running as Administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ ERROR: This script must be run as Administrator!
    echo 🔹 Right-click "install.bat" → Select "Run as Administrator"
    echo Press any key to exit...
    pause >nul
    exit /b
)

:: Check if MinGW is installed
echo Checking if MinGW is installed...
where g++ >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ MinGW is NOT installed! Please install MinGW-w64 first.
    echo 📌 Download MinGW from: https://winlibs.com/
    echo Press any key to exit...
    pause >nul
    exit /b
)
echo ✅ MinGW detected! Proceeding with FreeGLUT installation...

:: Check if FreeGLUT files exist in C:\freeglut
if not exist C:\freeglut\bin\freeglut.dll (
    echo ❌ ERROR: FreeGLUT files not found in C:\freeglut!
    echo ➜ Make sure you have manually extracted FreeGLUT to "C:\freeglut".
    echo ➜ Expected structure:
    echo     C:\freeglut\
    echo     ├── bin\
    echo     │   ├── freeglut.dll
    echo     ├── lib\
    echo     │   ├── freeglut.lib
    echo     ├── include\
    echo         ├── GL\
    echo             ├── freeglut.h
    echo Press any key to exit...
    pause >nul
    exit /b
)

:: Copying FreeGLUT files
echo 🔹 Copying FreeGLUT files to MinGW directories...
copy C:\freeglut\bin\freeglut.dll C:\Windows\System32 >nul
copy C:\freeglut\lib\freeglut.lib C:\mingw-w64\lib >nul
xcopy C:\freeglut\include\GL C:\mingw-w64\include\GL /E /I /Y >nul

echo ✅ FreeGLUT installation complete!
echo Press any key to close this window...
pause >nul
