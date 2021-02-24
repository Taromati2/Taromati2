chcp 65001
@echo off
.\bin\unlocker.exe
cd ..
.\unlocker.exe
cd release
echo update build foldr now
pause
.\bin\locker.exe
del Taromati2.nar
"E:\7-Zip\7z.exe" a -tzip "Taromati2.nar" -mx=0 -mmt -mtc=off -r "Taromati2"
del Taromati2.7z
"E:\7-Zip\7z.exe" a -t7z "Taromati2.7z" s=9999f4g -mx=9 -mmt -mtm=off -ms=512m -mhc -mhcf -m0=LZMA2:a=2:d=1536m:mf=bt4:fb=273:lc=4:lp=0:pb=4 -r "Taromati2.nar"
del StarterPack.7z
"E:\7-Zip\7z.exe" a -t7z "StarterPack.7z" s=9999f4g -mx=9 -mmt -mtm=off -ms=512m -mhc -mhcf -m0=LZMA2:a=2:d=1536m:mf=bt4:fb=273:lc=4:lp=0:pb=4 -r "Taromati2.nar" "ssp" "使用方法.txt"
del Taromati2.nar
"E:\7-Zip\7z.exe" a -tzip "Taromati2.nar" -mx=9 -mmt -mm=LZMA -md=1536m -mfb=273 -mtc=off -r "Taromati2"
exit
@echo on
