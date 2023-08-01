@echo off

:menuDesain
cls
echo Menu Desain
echo.
echo 1. Canva
echo 2. Figma
echo 3. Kembali ke Menu Utama
echo.
set /p pilihan=Silakan pilih menu (1-3):

if "%pilihan%"=="1" (
  cls
  start "https://www.canva.com/id_id/"
  pause
  goto menuDesain
) else if "%pilihan%"=="2" (
  cls
  start "https://www.figma.com"
  pause
  goto menuDesain
) else if "%pilihan%"=="3" (
  goto menu
)
