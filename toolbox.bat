@echo off
title DarkHub Toolbox v0.01 - Waiting for Admin Privileges...
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
title DarkHub Toolbox v0.01
mode con: cols=70 lines=4
cls && color 01
echo  ====================================================================
echo                        Initializing Toolbox...
echo  ====================================================================
timeout /t 5 >nul
mode con: cols=100 lines=30
goto mainmenu
:mainmenu
cls && color a
echo  ==================================================================================================
echo                                 Welcome to DarkHub Toolbox v0.01
echo   User: %username% - Machine: %computername% - Main Drive: %HOMEDRIVE%\ - Date: %DATE% - %TIME%
echo  ==================================================================================================
echo.
echo  [34m[1][0m System Tools(1)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p choice=  Choose: 
if %choice%==1 goto system

:system
cls && color a
echo  ==================================================================================================
echo                                 Welcome to DarkHub Toolbox v0.01
echo   User: %username% - Machine: %computername% - Main Drive: %HOMEDRIVE%\ - Date: %DATE% - %TIME%
echo  ==================================================================================================
echo.
echo  [34m[1][0m Power Management(11)                                   [33m[B][0m Back
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p systools=Choose:
if %systools%==1 goto power
if %systools%==b goto mainmenu
if %systools%==B goto mainmenu

:power
cls && color a
echo  ==================================================================================================
echo                                 Welcome to DarkHub Toolbox v0.01
echo   User: %username% - Machine: %computername% - Main Drive: %HOMEDRIVE%\ - Date: %DATE% - %TIME%
echo  ==================================================================================================
echo.
echo  [34m[1][0m Shutdown(15s)                                          [33m[B][0m Back
echo  [34m[2][0m Shutdown(30s)
echo  [34m[3][0m Shutdown(No Wait)
echo  [34m[4][0m Shutdown(Force)
echo  [34m[5][0m Shutdown(Hybrid)
echo  [34m[6][0m Delete Timed Shutdown
echo  [34m[7][0m Remote Shutdown
echo  [34m[8][0m Restart
echo  [34m[9][0m Restart with Boot Options
echo  [34m[10][0m Hibernate
echo  [34m[11][0m Logout
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p systools= Choose: 
if %systools%==1 goto sd15s
if %systools%==2 goto sd30s
if %systools%==3 goto sdnow
if %systools%==4 goto sdforce
if %systools%==5 goto sdhybrid
if %systools%==6 goto sddelete
if %systools%==7 goto sdremote
if %systools%==8 goto sdrestart
if %systools%==9 goto sdrestartasboot
if %systools%==10 goto sdhibernate
if %systools%==11 goto sdlogout
if %systools%==b goto system
if %systools%==B goto system

:sd15s
shutdown -s -t 15
goto power

:sd30s
shutdown -s -t 30
goto power

:sdnow
shutdown -s
goto power

:sdforce
shutdown -s -f
goto power

:sdhybrid
shutdown -s -hybrid
goto power

:sddelete
shutdown -a
goto power

:sdremote
shutdown -i
goto power

:sdrestart
shutdown -r
goto power

:sdrestartasboot
shutdown -r -o
goto power

:sdhibernate
shutdown -h
goto power

:sdlogout
shutdown -l
goto power
