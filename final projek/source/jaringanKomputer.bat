@echo off

:menuJaringanKomputer
cls
echo Menu Jaringan Komputer
echo.
echo 1. Cek IP Address Komputer
echo 2. Pengecekan Ipconfig
echo 3. Ping Google
echo 4. Kembali ke Menu Utama
echo.

set /p pilihan=Silakan pilih menu (1-5): 

if "%pilihan%"=="1" (
  cls
  ipconfig | findstr /i "IPv4"
  pause
  goto menuJaringanKomputer
) else if "%pilihan%"=="2" (
  cls
  echo Menjalankan pengecekan ipconfig...
  ipconfig
  pause
  goto menuJaringanKomputer
) else if "%pilihan%"=="3" (
  cls
  echo Menjalankan ping ke Google...
  ping www.google.com -n 4
  pause
  goto menuJaringanKomputer
) else if "%pilihan%"=="4" (
  goto menu
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
  pause
  goto menuJaringanKomputer
)
