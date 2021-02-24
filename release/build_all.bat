chcp 65001
@echo off
%1(start /min cmd.exe /c %0 :& exit )
start .\build_dau.bat
start /wait .\build_packs.bat
start .\build_png7z.bat
exit
@echo on
