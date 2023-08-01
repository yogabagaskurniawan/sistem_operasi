@echo off

:login
cls
echo Final Projek UAS Sistem Operasi
echo.
@REM set /p username=Masukkan username: 
@REM set /p password=Masukkan password: 

@REM rem Cek username dan password
@REM if "%username%"=="bagas" (
@REM   if "%password%"=="bagas123" (
@REM     goto menu
@REM   )
@REM )

@REM echo Username atau password salah. Silakan coba lagi.
@REM pause
@REM goto login

:menu
cls
echo Program Saya - Menu Utama
echo.
echo 1. Menu Aplikasi Kalkulator
echo 2. Menu Akademik
echo 3. Menu Perbaikan Komputer
echo 4. Menu Jaringan Komputer
echo 5. Menu Setting
echo 6. Menu Aplikasi
echo 7. Menu Desain
echo 8. Keluar
echo.

set /p pilihan=Silakan pilih menu (1-8): 

if "%pilihan%"=="1" (
  call "%~dp0source\aplikasiKalkulator.bat"
  goto menu 
) else if "%pilihan%"=="2" (
  call "%~dp0source\akademik.bat"
  goto menu 
) else if "%pilihan%"=="3" (
  call "%~dp0source\perbaikanKomputer.bat"
  goto menu 
) else if "%pilihan%"=="4" (
  call "%~dp0source\jaringanKomputer.bat"
  goto menu
) else if "%pilihan%"=="5" (
  call "%~dp0source\setting.bat"
  goto menu
) else if "%pilihan%"=="6" (
  call "%~dp0source\aplikasi.bat"
  goto menu
) else if "%pilihan%"=="7" (
  call "%~dp0source\desain.bat"
  goto menu
) else if "%pilihan%"=="8" (
  goto selesai
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
  pause
  goto menu
)