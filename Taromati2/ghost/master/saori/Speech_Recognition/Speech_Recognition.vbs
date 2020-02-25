
Dim CommandDictionary '命令字典对象
Dim WshShell   'WshShell对象提供对本地Windows程序的访问。
Dim ScriptComplete '程序结束标志
Dim SR   '语音识别(Speech Recognition)对象
Dim Grammar '语音识别的命令语法对象
'初始化命令字典对象,可根据自己的需要添加命令
Set CommandDictionary = CreateObject("Scripting.Dictionary")
CommandDictionary.Add "计算器",   "calc"
CommandDictionary.Add "记事本",   "notepad"
CommandDictionary.Add "打开键盘", "osk"

Set WshShell = CreateObject("WScript.Shell") '创建WshShell对象
ScriptComplete = False '初始化程序结束标志
'创建语音识别对象,调用由"Command.XML"所定义的语法,并启动语音识别引擎
Set SR = WScript.CreateObject("SAPI.SpSharedRecoContext", "RecoContext_")
Set Grammar = SR.CreateGrammar
Grammar.CmdLoadFromFile "COMMAND.XML", SLODynamic
Grammar.CmdSetRuleIdState 0, 1
Set objTTS = CreateObject( "SAPI.SpVoice" )
msgbox "语音识别系统测试"


Do
WScript.Sleep 0
Loop Until ScriptComplete

objTTS.Speak "命令结束,再见!", 0
Set objTTS = Nothing

'你的语音命令被识别
Sub RecoContext_Recognition(ByVal StreamNumber, ByVal StreamPosition, ByVal RecognitionType, ByVal Result )
Text = Result.PhraseInfo.GetText     '获取语音识别引擎所识别的命令

MySec = Second(Now)
If (MySec Mod 2) = 1 Then
WScript.Sleep 1000
End If
set fso=createobject("scripting.filesystemobject").opentextfile(".\\text.txt",2)
fso.write Text  & vbcrlf & "Text"
'If Text = "计算器" Then
'    objTTS.Speak "正在打开" + Text, 0
'    WshShell.Run CommandDictionary.Item(Text)
'Elseif Text = "记事本" Then
'    objTTS.Speak "正在打开" + Text, 0
'    WshShell.Run CommandDictionary.Item(Text)
'Elseif Text = "打开键盘" Then
'    objTTS.Speak "正在打开" + Text, 0
'    WshShell.Run CommandDictionary.Item(Text)
'Elseif Text = "命令结束" Then
'    ScriptComplete = true      '程序结束标志
'End If
End Sub