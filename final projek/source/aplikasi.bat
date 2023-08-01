@echo off

:menu_aplikasi
cls
echo Menu Aplikasi
echo.
echo 1. Aplikasi chrome
echo 2. Aplikasi firefox
echo 3. Aplikasi word
echo 4. Kembali ke Menu Utama
echo.

set /p pilihan_aplikasi=Silakan pilih menu (1-4): 

if "%pilihan_aplikasi%"=="1" (
  "C:\Program Files\Google\Chrome\Application\chrome.exe"
) else if "%pilihan_aplikasi%"=="2" (
  "C:\Program Files\Mozilla Firefox\firefox.exe"
) else if "%pilihan_aplikasi%"=="3" (
  "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
) else if "%pilihan_aplikasi%"=="4" (
  goto menu
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
)

pause
goto menu_aplikasi
