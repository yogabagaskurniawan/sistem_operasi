@echo off

title Latihan 7 inputan

set /p nim= Masukan NIM anda : 
set /p nama= Masukan nama anda : 
set /p prodi= Masukan prodi anda : 
set /p kelas= Masukan kelas anda : 
set /p kampus= Masukan kampus anda : 

rem output

echo ---------------------------------
echo   Data Mahasiswa Uniss
echo ---------------------------------
echo nim      : %nim%
echo nama     : %nama%
echo prodi    : %prodi%
echo kelas    : %kelas%
echo kampus   : %kampus%
echo ---------------------------------
pause