@echo off
title Setting My Computer
:setting
color b5
cls
echo [===================================================]
echo                SETTING COMPUTER
echo [===================================================]
echo  [1] Setting Keyboard
echo  [2] Setting Language
echo  [3] Setting Date
echo  [4] Add User
echo  [5] Sound Control
echo  [6] Open Startup
echo  [7] Chrome
echo  [88] Kembali     [0] Keluar
echo [===================================================]
echo.
set /p "pilihanmenu=Masukan Pilihan Kamu : "
if %pilihanmenu%==1 goto Keyboard
if %pilihanmenu%==2 goto Language
if %pilihanmenu%==3 goto Date
if %pilihanmenu%==4 goto User
if %pilihanmenu%==5 goto Sound
if %pilihanmenu%==6 goto Startup
if %pilihanmenu%==7 goto Chrome
if %pilihanmenu%==88 goto Back
if %pilihanmenu%==0 goto Exit

:Keyboard
cls
start control keyboard
goto setting
pause

:Language
cls
start intl.cpl
goto setting
pause

:Date
cls
start timedate.cpl
goto setting
pause

:User
cls
start Netplwiz.exe
goto setting
pause

:Sound
cls
start SndVol.exe
goto setting
pause

:Startup
cls
start msconfig
goto setting
pause

:Chrome
cls
"C:\Program Files\Google\Chrome\Application\chrome.exe"
goto setting
pause

:Back
goto setting

:Exit
exit