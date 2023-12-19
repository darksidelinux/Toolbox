@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=
REM BFCPEICON=
REM BFCPEICONINDEX=-1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=0
REM BFCPEVERVERSION=1.0.0.0
REM BFCPEVERPRODUCT=Product Name
REM BFCPEVERDESC=Product Description
REM BFCPEVERCOMPANY=Your Company
REM BFCPEVERCOPYRIGHT=Copyright Info
REM BFCPEWINDOWCENTER=1
REM BFCPEDISABLEQE=0
REM BFCPEWINDOWHEIGHT=30
REM BFCPEWINDOWWIDTH=120
REM BFCPEWTITLE=Window Title
REM BFCPEOPTIONEND
@echo off
title DarkHub Toolbox %PRVersion% - Waiting for Admin Privileges...
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
title DarkHub Toolbox %PRVersion%
mode con: cols=70 lines=4
cls && color 01
echo  ====================================================================
echo                        Initializing Toolbox...
echo  ====================================================================
timeout /t 5 >nul
mode con: cols=100 lines=30
set PRVersion=v0.02
goto mainmenu
:mainmenu
cls && color a
echo  ==================================================================================================
echo                                 Welcome to DarkHub Toolbox %PRVersion%
echo   User: %username% - Machine: %computername% - Main Drive: %HOMEDRIVE%\ - Date: %DATE% - %TIME%
echo  ==================================================================================================
echo.
echo  [34m[1][0m System Tools(2)
echo  [34m[2][0m Downloads(3)
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
if %choice%==2 goto chocolatey

:chocolatey
cls && color a
echo  ==================================================================================================
echo                                 Welcome to DarkHub Toolbox %PRVersion%
echo   User: %username% - Machine: %computername% - Main Drive: %HOMEDRIVE%\ - Date: %DATE% - %TIME%
echo  ==================================================================================================
echo.
echo  [34m[1][0m Download Chocolatey First                              [33m[B][0m Back
echo  [34m[2][0m Web Browsers(3)
echo  [34m[3][0m Messaging(2)
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
if %systools%==1 goto dlchoco
if %systools%==2 goto webbrowsers
if %systools%==3 goto messaging
if %systools%==b goto mainmenu
if %systools%==B goto mainmenu

:dlchoco
powershell -command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
goto chocolatey

:webbrowsers
cls && color a
echo  ==================================================================================================
echo                                 Welcome to DarkHub Toolbox %PRVersion%
echo   User: %username% - Machine: %computername% - Main Drive: %HOMEDRIVE%\ - Date: %DATE% - %TIME%
echo  ==================================================================================================
echo.
echo  [34m[1][0m Mozilla Firefox                                        [33m[B][0m Back
echo  [34m[2][0m Opera
echo  [34m[3][0m Opera GX
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
set /p cleanperform= Choose: 
if %cleanperform%==1 goto firefox
if %cleanperform%==2 goto opera
if %cleanperform%==3 goto operagx
if %cleanperform%==b goto chocolatey
if %cleanperform%==B goto chocolatey

:firefox
choco install -y firefox
goto webbrowsers

:opera
choco install -y opera
goto webbrowsers

:operagx
choco install -y opera-gx
goto webbrowsers

:messaging
cls && color a
echo  ==================================================================================================
echo                                 Welcome to DarkHub Toolbox %PRVersion%
echo   User: %username% - Machine: %computername% - Main Drive: %HOMEDRIVE%\ - Date: %DATE% - %TIME%
echo  ==================================================================================================
echo.
echo  [34m[1][0m Discord                                                [33m[B][0m Back
echo  [34m[2][0m Whatsapp
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
set /p cleanperform= Choose: 
if %cleanperform%==1 goto discord
if %cleanperform%==2 goto whatsapp
if %cleanperform%==b goto chocolatey
if %cleanperform%==B goto chocolatey

:discord
choco install -y --ignore-checksums discord
goto messaging

:whatsapp
choco install -y --ignore-checksums whatsapp
goto messaging

:system
cls && color a
echo  ==================================================================================================
echo                                 Welcome to DarkHub Toolbox %PRVersion%
echo   User: %username% - Machine: %computername% - Main Drive: %HOMEDRIVE%\ - Date: %DATE% - %TIME%
echo  ==================================================================================================
echo.
echo  [34m[1][0m Power Management(11)                                   [33m[B][0m Back
echo  [34m[2][0m Cleaning and Performance(6)
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
if %systools%==2 goto cp
if %systools%==b goto mainmenu
if %systools%==B goto mainmenu

:cp
cls && color a
echo  ==================================================================================================
echo                                 Welcome to DarkHub Toolbox %PRVersion%
echo   User: %username% - Machine: %computername% - Main Drive: %HOMEDRIVE%\ - Date: %DATE% - %TIME%
echo  ==================================================================================================
echo.
echo  [34m[1][0m Clean Temp                                             [33m[B][0m Back
echo  [34m[2][0m Clean Prefetch
echo  [34m[3][0m Defrag(%HOMEDRIVE%)
echo  [34m[4][0m Defrag(All Disks)
echo  [34m[5][0m Clean Manager(%HOMEDRIVE%)
echo  [34m[6][0m Clean Manager(All Disks)
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
set /p cleanperform= Choose: 
if %cleanperform%==1 goto ctemp
if %cleanperform%==2 goto cpfetch
if %cleanperform%==3 goto cdefhome
if %cleanperform%==4 goto cdefall
if %cleanperform%==5 goto cclnmgrhome
if %cleanperform%==6 goto cclnmgrauto
if %cleanperform%==b goto system
if %cleanperform%==B goto system

:ctemp
rd %temp% /s /q
rd C:\Windows\Temp /s /q
goto cp

:cpfetch
rd C:\Windows\Prefetch /s /q
goto cp

:cdefhome
defrag %HOMEDRIVE% /H /M
goto cp

:cdefall
defrag /C /H /M
goto cp

:cclnmgrhome
cleanmgr.exe /d%HOMEDRIVE% /verylowdisk
goto cp

:cclnmgrauto
cleanmgr.exe /AUTOCLEAN /verylowdisk
goto cp

:power
cls && color a
echo  ==================================================================================================
echo                                 Welcome to DarkHub Toolbox %PRVersion%
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
