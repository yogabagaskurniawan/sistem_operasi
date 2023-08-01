@echo off

:menuPerbaikanKomputer
cls
echo Menu Perbaikan Komputer
echo.
echo 1. Disk Clean Up
echo 2. Register
echo 3. Troubleshooting
echo 4. Kembali ke Menu Utama
echo.

set /p pilihan=Silakan pilih menu (1-5): 

if "%pilihan%"=="1" (
  cls
  echo Menjalankan Disk Clean Up...
  cleanmgr
  pause
  goto menuPerbaikanKomputer
) else if "%pilihan%"=="2" (
  cls
  echo Menjalankan Register...
  regedit
  pause
  goto menuPerbaikanKomputer
) else if "%pilihan%"=="3" (
  cls
  echo Membuka Troubleshooting...
  control /name Microsoft.Troubleshooting
  pause
  goto menuPerbaikanKomputer
) else if "%pilihan%"=="4" (
  goto menu
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
  pause
  goto menuPerbaikanKomputer
)
