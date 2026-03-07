@echo off
echo Warning: This scirpt will force removing Microsoft Edge, before you think,
echo this will breaking your system.
echo It's not!
echo But... you use it at OWN RISK!
timeout 10 >nul
cd %userprofile%\AppData\Local\Microsoft
taskkill /f /im msedge.exe
taskkill /f /im MicrosoftEdgeUpdate.exe
@echo on
rmdir /s /q "Edge"
rmdir /s /q "EdgeCore"
rmdir /s /q "EdgeUpdate"
cd "C:\Program Files (x86)\Microsoft\"
rmdir /s /q "Edge"
rmdir /s /q "EdgeCore"
rmdir /s /q "EdgeUpdate"
@echo off
cls
echo Microsoft Edge has been forced removed!
timeout 3 >nul