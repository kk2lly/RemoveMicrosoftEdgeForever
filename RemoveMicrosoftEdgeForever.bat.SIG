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
cd "C:\Program Files (x86)\Microsoft\"
@echo on
rmdir /s /q "Edge"
rmdir /s /q "EdgeCore"
rmdir /s /q "EdgeUpdate"
@echo off
echo Changing registrys...
timeout 4 >nul
@echo off
reg delete "HKLM\SOFTWARE\Microsoft\Edge" /f   
timeout 1 >nul
reg delete "HKLM\SOFTWARE\Microsoft\EdgeUpdate" /f 
timeout 1 >nul
reg delete "HKLM\SOFTWARE\Microsoft\EdgeCore" /f 
timeout 1 >nul
cls
echo Microsoft Edge has been forced removed!
timeout 5 >nul
cls
echo Restarting your computer...
timeout 3 >nul
shutdoown -r -t 0