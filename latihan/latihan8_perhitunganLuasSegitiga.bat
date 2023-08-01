@echo off
Title Latihan 5 Perhitungan Luas Segitiga
rem =======================setting variabel==========================
echo ----------------------------------------------------------------
echo                INPUTAN NILAI ALAS DAN TINGGI
echo ----------------------------------------------------------------
set /p alas=    Masukan Nilai Alas      : 
set /p tinggi=  Masukan Nilai Tinggi    : 

rem =======================Setting Perhitungan=======================
set /a luas=alas*tinggi/2

if %luas% GEQ 500 (
    set grade=Kategori Besar
) else if %luas% GEQ 100 (
    set grade=Kategori Sedang
) else (
    set grade=Kateori Kecil
)

cls
rem ==========================Output=================================
echo ----------------------------------------------------------------
echo                PERHITUNGAN LUAS SEGITIGA
echo ----------------------------------------------------------------
echo Alas       : %alas%
echo TInggi     : %tinggi%
echo ----------------------------------------------------------------
echo Luas segitiga tersebut adalah : %luas%
echo Kategori bangunannya adalah   : %grade%
echo ----------------------------------------------------------------
pause