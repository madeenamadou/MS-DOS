

@echo off
color 1F
mode con cols=100 lines=60
title Get Files Back v1.0

echo +++++++++++++++++++++++++++++++++++++++++++++++++++++ >%cd%\gfb_report.log
echo ----------------------------------------------------- >>%cd%\gfb_report.log
echo ++               Get Files Back v1.0               ++ >>%cd%\gfb_report.log
echo ++                By Youssef Amadou                ++ >>%cd%\gfb_report.log
echo ----------------------------------------------------- >>%cd%\gfb_report.log
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++ >>%cd%\gfb_report.log
echo. >>%cd%\gfb_report.log
echo. >>%cd%\gfb_report.log
echo. >>%cd%\gfb_report.log
echo. >>%cd%\gfb_report.log
echo -REPORT- >>%cd%\gfb_report.log
date /t >>%cd%\gfb_report.log
time /t >>%cd%\gfb_report.log
echo ------ >>%cd%\gfb_report.log
echo. >>%cd%\gfb_report.log
echo. >>%cd%\gfb_report.log


echo +++++++++++++++++++++++++++++++++++++++++++++++++++++
echo -----------------------------------------------------
echo ++               Get Files Back v1.0               ++
echo ++                By Youssef Amadou                ++
echo -----------------------------------------------------
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.
echo.
echo.
echo ABOUT :
echo ----------------------------------
echo.
ECHO THIS TOOL IS USEFULL WHEN : 
ECHO.
ECHO 1) FILES AND FOLDERS IN USB STORAGE DEVICE
ECHO ARE TURNED IN LINKS.
ECHO.
ECHO 2) FILES AND FOLDERS IN USB STORAGE DEVICE
ECHO ARE SET HIDDEN.
ECHO.
ECHO. 
ECHO HOW TO USE IT :
ECHO ----------------------------------
ECHO.
ECHO JUST PLACE Get Files Back IN THE USB STORAGE DEVICE
ECHO AND LAUNCH IT.
echo.
echo.
echo Press any key to continue...
pause>nul
cls


echo +++++++++++++++++++++++++++++++++++++++++++++++++++++
echo -----------------------------------------------------
echo ++               Get Files Back v1.0               ++
echo ++                By Youssef Amadou                ++
echo -----------------------------------------------------
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.
echo.
echo.
echo Finding the letter assigned to this volume...
set dir=%cd%
set letter=%dir:~0,1%
%letter%:
echo VOLUME : %letter% >>%cd%\gfb_report.log
echo. >>%cd%\gfb_report.log
echo ATTRIBUTES BEFORE RECOVERY >>%cd%\gfb_report.log
echo -------------------------- >>%cd%\gfb_report.log
attrib  *.* /s /d /l >>%cd%\gfb_report.log
echo. >>%cd%\gfb_report.log
echo.
echo.
echo The letter assigned to this volume is -%letter%-. Press any key to continue...
pause>nul
cls



echo +++++++++++++++++++++++++++++++++++++++++++++++++++++
echo -----------------------------------------------------
echo ++               Get Files Back v1.0               ++
echo ++                By Youssef Amadou                ++
echo -----------------------------------------------------
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.
echo.
echo.
echo Recovering files and folders. Please wait...
attrib -a -s -h -r -i *.* /s /d
cls
echo. >>%cd%\gfb_report.log
echo ATTRIBUTES AFTER RECOVERY >>%cd%\gfb_report.log
echo ------------------------- >>%cd%\gfb_report.log
attrib  *.* /s /d /l >>%cd%\gfb_report.log
echo. >>%cd%\gfb_report.log


echo +++++++++++++++++++++++++++++++++++++++++++++++++++++
echo -----------------------------------------------------
echo ++               Get Files Back v1.0               ++
echo ++                By Youssef Amadou                ++
echo -----------------------------------------------------
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.
echo.
echo.
echo Recovering files and folders. Please wait...
echo.
echo.
echo Recovery done.

if exist *.lnk (
goto clean 
) else (
goto end
)

:clean

echo.
echo.
echo Now, erasing junk files...
echo JUNK FILES DELETED >>%cd%\gfb_report.log
echo ------------------ >>%cd%\gfb_report.log
dir *.lnk /b /n /o:n >>%cd%\gfb_report.log
del /f /q *.lnk 
echo. >>%cd%\gfb_report.log
echo -END OF REPORT- >>%cd%\gfb_report.log
cls


echo +++++++++++++++++++++++++++++++++++++++++++++++++++++
echo -----------------------------------------------------
echo ++               Get Files Back v1.0               ++
echo ++                By Youssef Amadou                ++
echo -----------------------------------------------------
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.
echo.
echo.
echo Recovering files and folders. Please wait...
echo.
echo.
echo Recovery done.
echo ----------------------------------
echo.
echo.
echo Now, erasing junk files...
echo.
echo.
echo Junk files erased.
echo ----------------------------------
echo.
echo.
echo Everything done. Press any key to quit...
pause>nul
start %cd%\gfb_report.log
exit


:end

cls
echo. >>%cd%\gfb_report.log
echo NO JUNK FILES DELETED >>%cd%\gfb_report.log
echo. >>%cd%\gfb_report.log
echo -END OF REPORT- >>%cd%\gfb_report.log
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++
echo -----------------------------------------------------
echo ++               Get Files Back v1.0               ++
echo ++                By Youssef Amadou                ++
echo -----------------------------------------------------
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.
echo.
echo.
echo Recovering files and folders. Please wait...
echo.
echo.
echo Recovery done.
echo ----------------------------------
echo.
echo.
echo No junk files remaining.
echo ----------------------------------
echo.
echo.
echo Everything done. Press any key to quit...
pause>nul
start %cd%\gfb_report.log
exit




