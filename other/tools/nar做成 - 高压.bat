@echo off
echo nar×ö³ÉÖÐ........
for %%x in (%*) do "E:\7-Zip\7z.exe" a -tzip "%%~dpx%%~nxx.nar" -mx=9 -mmt -mm=LZMA -md=1536m -mfb=273 -mtc=off -r "%%~dpx%%~nxx"
pause
