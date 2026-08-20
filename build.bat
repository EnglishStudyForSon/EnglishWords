@echo off
setlocal

set ROOT=%~dp0
set JAVA_HOME=D:\workspace\tools\jdk-21\jdk-21.0.8+9
set PATH=%JAVA_HOME%\bin;%PATH%

echo ==========================================
echo   EnglishWords APK Build Script
echo ==========================================

cd /d "%ROOT%"

echo.
echo [1/4] Syncing web assets...
call npx cap sync android
if errorlevel 1 goto FAIL

echo.
echo [2/4] Building Debug APK...
cd /d "%ROOT%android"
call gradlew.bat assembleDebug
if errorlevel 1 goto FAIL

echo.
echo [3/4] Building Release APK...
call gradlew.bat assembleRelease
if errorlevel 1 goto FAIL

echo.
echo [4/4] Build finished!

echo.
echo ==========================================
echo   APK output:
echo   Debug:   %ROOT%android\app\build\outputs\apk\debug\app-debug.apk
echo   Release: %ROOT%android\app\build\outputs\apk\release\app-release.apk
echo ==========================================
exit /b 0

:FAIL
echo.
echo Build FAILED! Check error messages above.
exit /b 1