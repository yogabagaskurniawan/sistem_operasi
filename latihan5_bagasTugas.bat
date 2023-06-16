@echo off

rem Buatlah variabel dan Tentukan nilai Variabel
set /a a=5
set /a b=3
set /a c=10
set /a d=2
set /a e=8

rem Lakukan operasi matematika soal ke 3 
set /a hasil1=a+b
set /a hasil2=a-b
set /a hasil3=c/a
set /a hasil4=e*e

rem Tampilkan hasil operasi matematika operasi matematika soal ke 3
echo Hasil operasi a+b adalah %hasil1%
echo Hasil operasi a-b adalah %hasil2%
echo Hasil operasi c/a adalah %hasil3%
echo Hasil operasi e^2 adalah %hasil4%

REM Lakukan operasi matematika soal ke 4 dan 5
set /a hasil1=(2*%a%)+(3*%b%)
set /a hasil2=(3*%c%)-(2*%d%)

set /a hasil3=(%e%*%e%)+(%a%*%a%)
set /a hasil4=(%b%*%b%)-(%c%)

set /a hasil5=%hasil1%*%hasil2%
set /a hasil6=%hasil3%/%hasil4%

REM Tampilkan hasil operasi matematika soal ke 4 dan 5
echo Hasil operasi (2a+3b) (3c - 2d) adalah %hasil5%
echo Hasil operasi (e^2 + a^2)/(b^2-c) adalah %hasil6%
pause
