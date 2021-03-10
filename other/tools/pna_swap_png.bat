chcp 65001
@echo off
for %%x in (%*) do (
	cd /d "%%x"
	cd
	for /r %%a in (*.pna) do ren "%%a" "%%~na.xxx"
	timeout /t 7
	for /r %%a in (*.png) do ren "%%a" "%%~na.pna"
	timeout /t 7
	for /r %%a in (*.xxx) do ren "%%a" "%%~na.png"
	timeout /t 7
)
@echo on
