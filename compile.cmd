call c:\env\env_vc12x64.cmd
set path=C:\Qt\qtcreator-3.5.1\bin\;E:\deps\latest\qt\qt_v5.4.0_win32-msvc2013_x64_b5\qtbase\bin\;%path%

qmake.exe console_test.pro -r -spec win32-msvc2013 "CONFIG+=release"

set STARTTIME=%time%

jom.exe -f Makefile.Release -j8

set ENDTIME=%time%

echo --------------------------------------
echo   start time is %STARTTIME%  
echo --------------------------------------
echo --------------------------------------
echo   finish time is %ENDTIME% 
echo --------------------------------------

set /A STARTTIME=(1%STARTTIME:~0,2%-100)*360000 + (1%STARTTIME:~3,2%-100)*6000 + (1%STARTTIME:~6,2%-100)*100 + (1%STARTTIME:~9,2%-100)
set /A ENDTIME=(1%ENDTIME:~0,2%-100)*360000 + (1%ENDTIME:~3,2%-100)*6000 + (1%ENDTIME:~6,2%-100)*100 + (1%ENDTIME:~9,2%-100)
set /A DURATION=%ENDTIME%-%STARTTIME%

echo --------------------------------------
echo make DURATION: %DURATION% in centiseconds
echo --------------------------------------

jom.exe clean

rem echo For rollback type "nmake clean"
rem SET /P var=Press Enter for finish:

