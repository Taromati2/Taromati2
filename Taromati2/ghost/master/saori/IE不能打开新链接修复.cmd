@echo off
echo   ===================================================================
echo   安装引擎失败以及IE不能打开新窗口或链接等各种莫名其妙的问题的解决方法.
echo   本处理程序是安全性的,但是往往能解决一下因Dll注册实效造成的问题.
echo   ===================================================================
echo.
echo  执行中,大约需要1分多钟,完成后自动退出.如果出现提示框,确定就可以了.
regsvr32 setupwbv.dll /s 
regsvr32 wininet.dll /s
regsvr32 comcat.dll /s
regsvr32 shdoc401.dll /s
regsvr32 shdoc401.dll /s /i
regsvr32 asctrls.ocx /s
regsvr32 oleaut32.dll /s
regsvr32 shdocvw.dll /s /I
regsvr32 shdocvw.dll /s
regsvr32 browseui.dll /s
regsvr32 browseui.dll /s /I
regsvr32 msrating.dll /s
regsvr32 mlang.dll /s
regsvr32 hlink.dll /s
regsvr32 mshtml.dll /s
regsvr32 mshtmled.dll /s
regsvr32 urlmon.dll /s
regsvr32 plugin.ocx /s
regsvr32 sendmail.dll /s
regsvr32 comctl32.dll /s /i
regsvr32 inetcpl.cpl /i
regsvr32 mshtml.dll /s /i
regsvr32 scrobj.dll /s
regsvr32 mmefxe.ocx /s
regsvr32 proctexe.ocx /s 
regsvr32 corpol.dll /s
regsvr32 jscript.dll /s
regsvr32 msxml.dll /s
regsvr32 imgutil.dll /s
regsvr32 thumbvw.dll /s
regsvr32 cryptext.dll /s
regsvr32 rsabase.dll /s
regsvr32 triedit.dll /s
regsvr32 dhtmled.ocx /s
regsvr32 inseng.dll /s
regsvr32 iesetup.dll /s /i
regsvr32 hmmapi.dll /s
regsvr32 cryptdlg.dll /s
regsvr32 actxprxy.dll /s
regsvr32 dispex.dll /s
regsvr32 occache.dll /s
regsvr32 occache.dll /s /i
regsvr32 iepeers.dll /s
regsvr32 wininet.dll /s /i
regsvr32 urlmon.dll /s /i
regsvr32 digest.dll /s /i
regsvr32 cdfview.dll /s
regsvr32 webcheck.dll /s
regsvr32 mobsync.dll /s
regsvr32 pngfilt.dll /s
regsvr32 licmgr10.dll /s
regsvr32 icmfilter.dll /s
regsvr32 hhctrl.ocx /s
regsvr32 inetcfg.dll /s
regsvr32 trialoc.dll /s
regsvr32 tdc.ocx /s
regsvr32 MSR2C.dll /s
regsvr32 msident.dll /s
regsvr32 msieftp.dll /s
regsvr32 xmsconf.ocx /s
regsvr32 ils.dll /s
regsvr32 msoeacct.dll /s
regsvr32 wab32.dll /s
regsvr32 wabimp.dll /s
regsvr32 wabfind.dll /s
regsvr32 oemiglib.dll /s
regsvr32 directdb.dll /s
regsvr32 inetcomm.dll /s
regsvr32 msoe.dll /s
regsvr32 oeimport.dll /s
regsvr32 msdxm.ocx /s
regsvr32 dxmasf.dll /s
regsvr32 laprxy.dll /s
regsvr32 l3codecx.ax /s
regsvr32 acelpdec.ax /s
regsvr32 mpg4ds32.ax /s
regsvr32 voxmsdec.ax /s
regsvr32 danim.dll /s
regsvr32 Daxctle.ocx /s
regsvr32 lmrt.dll /s
regsvr32 datime.dll /s
regsvr32 dxtrans.dll /s
regsvr32 dxtmsft.dll /s
regsvr32 vgx.dll /s
regsvr32 WEBPOST.dll /s
regsvr32 WPWIZdll /s.dll /s
regsvr32 POSTWPP.dll /s
regsvr32 CRSWPP.dll /s
regsvr32 FTPWPP.dll /s
regsvr32 FPWPP.dll /s
regsvr32 FLUPL.ocx /s
regsvr32 wshom.ocx /s
regsvr32 wshext.dll /s
regsvr32 vbscript.dll /s
regsvr32 scrrun.dll /s mstinit.exe /setup
regsvr32 msnsspc.dll /s /SspcCreateSspiReg
regsvr32 msapsspc.dll /s /SspcCreateSspiReg
echo   =====================================================
echo  执行完成,可能你的问题得到了解决哦,不行的话另想办法咯!.
pause