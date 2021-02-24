chcp 65001
@echo off
start .\bin\before_build_dau.bat
echo build updates now
pause
start .\bin\after_build_dau.bat
exit
@echo on
