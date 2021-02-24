@echo off
echo nar×ö³ÉÖÐ........
for %%x in (%*) do "E:\7-Zip\7z.exe" a -tzip "%%~dpx%%~nxx.nar" -mx=0 -mmt -mtc=off -r "%%~dpx%%~nxx"
pause
