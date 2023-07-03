echo off
title setting my computer
:setting
color 9 
cls
echo =================================
echo        setting komputerku
echo =================================
echo        1. setting keyboard
echo        2. setting bahasa
echo        3. setting Date
echo        4. Add User
echo        5. Sound Control
echo        6. OPen Startup
echo        7. Chrome
echo        8. kembali       
echo        0. keluar
echo ==================================
echo.
set /p "pilihmenu=Masukkan pilihan menu:"
if %pilihmenu%==1 goto keyboard
if %pilihmenu%==2 goto Language
if %pilihmenu%==3 goto Date
if %pilihmenu%==4 goto User
if %pilihmenu%==5 goto sound
if %pilihmenu%==6 goto startup
if %pilihmenu%==7 goto chrome 
if %pilihmenu%==8 goto back
if %pilihmenu%==0 goto exit

@REM :keyboard
@REM cls
@REM start 

:Date
cls
start timedate.cpl
goto setting

:User
cls
start Netp1wiz.exe
pause

:sound 
cls
start SndVol.exe
goto setting
pause

:chrome
"C:\Program Files\Google\Chrome\Application\chrome.exe"
goto setting

:back
goto setting

:exit
exit