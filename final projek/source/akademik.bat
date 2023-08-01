@echo off

:menuAkademik
cls
echo Program Saya - Menu Akademik
echo.
echo 1. Penilaian Mahasiswa
echo 2. Cetak Laporan Penilaian Mahasiswa 
echo 3. Kembali ke Menu Utama
echo.

set /p pilihan=Silakan pilih menu (1-3): 

if "%pilihan%"=="1" (
  goto penilaianMahasiswa
) else if "%pilihan%"=="2" (
  goto laporanPenilaianMahasiswa
) else if "%pilihan%"=="3" (
  goto menu
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
  pause
  goto menuAkademik
)

:penilaianMahasiswa
cls
echo Penilaian Mahasiswa
echo.

setlocal enabledelayedexpansion

set "matkul[1]=Manajemen Basis Data"
set "matkul[2]=Manajemen Jaringan"
set "matkul[3]=RPL"
set "matkul[4]=Kewirausahaan"
set "matkul[5]=Etika Profesi"
set "matkul[6]=Probabilitas dan Statistika"
set "matkul[7]=Pemrograman Objek"
set "matkul[8]=Sistem Operasi"

set /a "sks[1]=4"
set /a "sks[2]=2"
set /a "sks[3]=4"
set /a "sks[4]=2"
set /a "sks[5]=2"
set /a "sks[6]=4"
set /a "sks[7]=4"
set /a "sks[8]=2"

set /a "totNilai=0"
set /a "totalSKS=0"
set /a "totalBobot=0"
REM Inisialisasi total_bobot sebagai array sebelum perulangan
for /l %%i in (1,1,8) do (
  set "total_bobot[%%i]=0"
)

for /l %%i in (1,1,8) do (
  echo Masukkan nilai matkul !matkul[%%i]!:
  set /p "nilai[%%i]=Nilai: "
  
  REM Tentukan bobot berdasarkan nilai
  if !nilai[%%i]! geq 81 (
    set "grade[%%i]=A"
    set "bobot[%%i]=4.00"
    set /a total_bobot[%%i]=sks[%%i]*bobot[%%i]
  ) else if !nilai[%%i]! geq 76 (
    set "grade[%%i]=AB"
    set "bobot[%%i]=3.50"
    set /a total_bobot[%%i]=sks[%%i]*bobot[%%i]
  ) else if !nilai[%%i]! geq 71 (
    set "grade[%%i]=B"
    set "bobot[%%i]=3.00"
    set /a total_bobot[%%i]=sks[%%i]*bobot[%%i]
  ) else if !nilai[%%i]! geq 66 (
    set "grade[%%i]=BC"
    set "bobot[%%i]=2.50"
    set /a total_bobot[%%i]=sks[%%i]*bobot[%%i]
  ) else if !nilai[%%i]! geq 61 (
    set "grade[%%i]=C"
    set bobot[%%i]=2.00
    set /a total_bobot[%%i]=sks[%%i]*bobot[%%i]
  ) else if !nilai[%%i]! geq 56 (
    set "grade[%%i]=CD"
    set "bobot[%%i]=1.50"
    set /a total_bobot[%%i]=sks[%%i]*bobot[%%i]
  ) else if !nilai[%%i]! geq 51 (
    set "grade[%%i]=D"
    set "bobot[%%i]=1.00"
    set /a total_bobot[%%i]=sks[%%i]*bobot[%%i]
  ) else if !nilai[%%i]! geq 0 (
    set "grade[%%i]=E"
    set "bobot[%%i]=0.00"
    set /a total_bobot[%%i]=sks[%%i]*bobot[%%i]
  ) else (
    echo Nilai tidak valid. Silakan coba lagi.
    pause
    goto penilaianMahasiswa
  )

  set /a "total_bobot[%%i]=sks[%%i]*bobot[%%i]"
  set /a "totalBobot+=total_bobot[%%i]"
  set /a "totalSKS+=sks[%%i]"
  set /a "totNilai+=nilai[%%i]"
)

if %totalSKS% equ 0 (
  set "ip=0"
) else (
  set /a "ip=totalBobot/totalSKS"
)

echo.
echo Hasil penilaian:
echo.
echo  No ^|SKS ^| NILAI ^|GRADE ^|BOBOT ^|HASIL ^|Nama Matkul           
for /l %%i in (1,1,8) do (
  echo   %%i ^|^| !sks[%%i]!   ^|^|!nilai[%%i]!     ^|^|!grade[%%i]!        ^|^|!bobot[%%i]!        ^|^|!total_bobot[%%i]!        ^|^|!matkul[%%i]! 
)

echo.
echo Total Nilai       = %totNilai%
echo Total Hasil Bobot = %totalBobot%
echo Total SKS         = %totalSKS%
echo IP Semester       = %ip%

pause
goto menuAkademik

:laporanPenilaianMahasiswa
cls
echo Cetak Laporan Penilaian Mahasiswa (bentuk txt)
echo.
echo Masukkan nama file laporan (tanpa spasi dan ekstensi file): 
set /p "namaFile=Nama File: "

echo.
echo Menyimpan laporan penilaian mahasiswa ke file %namaFile%.txt...
echo.
echo No ^|SKS ^| NILAI ^|GRADE ^|BOBOT ^|HASIL ^|Nama Matkul  >> %namaFile%.txt
echo ------------------------------------- >> %namaFile%.txt
for /l %%i in (1,1,8) do (
  echo %%i ^|^| !sks[%%i]!   ^|^|!nilai[%%i]!     ^|^|!grade[%%i]!        ^|^|!bobot[%%i]!        ^|^|!total_bobot[%%i]!        ^|^|!matkul[%%i]!  >> %namaFile%.txt
)

echo.   >> %namaFile%.txt
echo Total Nilai       = %totNilai%   >> %namaFile%.txt
echo Total Bobot Hasil = %totalBobot%   >> %namaFile%.txt
echo Total SKS         = %totalSKS%   >> %namaFile%.txt
echo IP Semester       = %ip%  >> %namaFile%.txt

echo.
echo Laporan penilaian mahasiswa telah disimpan ke file %namaFile%.txt.

pause
goto menuAkademik
