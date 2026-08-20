@echo off
setlocal

set ROOT=%~dp0
set DEPLOY=%ROOT%deploy

echo ==========================================
echo   EnglishWords Web Deploy Build
echo ==========================================

if exist "%DEPLOY%" rmdir /S /Q "%DEPLOY%"
mkdir "%DEPLOY%"

echo.
echo [1/3] Copying game hub...
copy /Y "%ROOT%index.html" "%DEPLOY%\index.html" >nul

echo.
echo [2/3] Copying mario game...
mkdir "%DEPLOY%\mario"
copy /Y "%ROOT%mario\index.html" "%DEPLOY%\mario\index.html" >nul

echo.
echo [3/3] Copying plane 3D game...
mkdir "%DEPLOY%\plane"
copy /Y "%ROOT%plane\index.html" "%DEPLOY%\plane\index.html" >nul
copy /Y "%ROOT%plane\three.min.js" "%DEPLOY%\plane\three.min.js" >nul

echo.
echo ==========================================
echo   Deploy folder ready:
echo   %DEPLOY%
echo   Upload this folder to your web server.
echo   Entry point: index.html
echo ==========================================
exit /b 0

:FAIL
echo.
echo Build FAILED! Check error messages above.
exit /b 1