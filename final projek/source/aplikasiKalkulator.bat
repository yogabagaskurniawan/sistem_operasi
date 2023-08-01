@echo off

:menuAplikasiPerhitungan
cls
echo Aplikasi Perhitungan Kalkulator
echo.
echo 1. Penjumlahan
echo 2. Pengurangan
echo 3. Perkalian
echo 4. Pembagian
echo 5. Kembali ke Menu Utama
echo.

set /p pilihan=Silakan pilih operasi perhitungan (1-5): 

if "%pilihan%"=="1" (
  goto penjumlahan
) else if "%pilihan%"=="2" (
  goto pengurangan
) else if "%pilihan%"=="3" (
  goto perkalian
) else if "%pilihan%"=="4" (
  goto pembagian
) else if "%pilihan%"=="5" (
  goto menu
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
)

:penjumlahan
cls
echo Aplikasi Perhitungan - Penjumlahan
echo.

set /p angka1=Masukkan angka pertama: 
set /p angka2=Masukkan angka kedua: 

set /a hasil=%angka1% + %angka2%
echo.
echo Hasil penjumlahan: %hasil%
pause
goto menuAplikasiPerhitungan

:pengurangan
cls
echo Aplikasi Perhitungan - Pengurangan
echo.

set /p angka1=Masukkan angka pertama: 
set /p angka2=Masukkan angka kedua: 

set /a hasil=%angka1% - %angka2%
echo.
echo Hasil pengurangan: %hasil%
pause
goto menuAplikasiPerhitungan

:perkalian
cls
echo Aplikasi Perhitungan - Perkalian
echo.

set /p angka1=Masukkan angka pertama: 
set /p angka2=Masukkan angka kedua: 

set /a hasil=%angka1% * %angka2%
echo.
echo Hasil perkalian: %hasil%
pause
goto menuAplikasiPerhitungan

:pembagian
cls
echo Aplikasi Perhitungan - Pembagian
echo.

set /p angka1=Masukkan angka pertama: 
set /p angka2=Masukkan angka kedua: 

set /a "hasil=angka1 / angka2"
echo.
echo Hasil pembagian: %hasil%

pause
goto menuAplikasiPerhitungan
