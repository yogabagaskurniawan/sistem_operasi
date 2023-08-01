@echo off

:menuSettingKomputer
cls
echo Menu Setting Komputer
echo.
echo 1. Setting Keyboard
echo 2. Setting Language
echo 3. Setting Sound
echo 4. Kembali ke Menu Utama
echo.

set /p pilihan=Silakan pilih menu (1-4): 

if "%pilihan%"=="1" (
  start control keyboard
) else if "%pilihan%"=="2" (
  start intl.cpl
) else if "%pilihan%"=="3" (
  start SndVol.exe
) else if "%pilihan%"=="4" (
  goto menu
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
)

pause
goto menuSettingKomputer