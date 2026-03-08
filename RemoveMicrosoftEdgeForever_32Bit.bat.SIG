@echo off
title RemoveMicrosoftEdgeForever - kk2lly
cls
echo Warning: This scirpt will force removing Microsoft Edge, before you think,
echo this will breaking your system.
echo It's not!
echo But... you use it at OWN RISK!
timeout 10 >nul
cd %userprofile%\AppData\Local\Microsoft
@echo on
taskkill /f /im msedge.exe
taskkill /f /im MicrosoftEdgeUpdate.exe
rmdir /s /q "Edge"
rmdir /s /q "EdgeCore"
rmdir /s /q "EdgeUpdate"
@echo off
cd "C:\Program Files\Microsoft\"
@echo on
rmdir /s /q "Edge"
rmdir /s /q "EdgeCore"
rmdir /s /q "EdgeUpdate"
@echo off
echo Changing registrys...
timeout 4 >nul
@echo on
reg delete "HKCU\\SOFTWARE\\Policies\\Microsoft\\Edge" /f
reg delete "HKLM\\SOFTWARE\\Policies\\Microsoft\\Edge" /f
reg add "HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\edgeupdate" /v Start /t REG_DWORD /d 4 /f  
reg add "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\EdgeUpdate" /v UpdateDefault /t REG_DWORD /d 0 /f
@echo off
cls
echo Microsoft Edge has been forced removed!
timeout 5 >nul
cls
echo Restarting your computer...
timeout 3 >nul
shutdoown -r -t 0