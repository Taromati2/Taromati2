
Dim CommandDictionary '�����ֵ����
Dim WshShell   'WshShell�����ṩ�Ա���Windows����ķ��ʡ�
Dim ScriptComplete '���������־
Dim SR   '����ʶ��(Speech Recognition)����
Dim Grammar '����ʶ��������﷨����
'��ʼ�������ֵ����,�ɸ����Լ�����Ҫ�������
Set CommandDictionary = CreateObject("Scripting.Dictionary")
CommandDictionary.Add "������",   "calc"
CommandDictionary.Add "���±�",   "notepad"
CommandDictionary.Add "�򿪼���", "osk"

Set WshShell = CreateObject("WScript.Shell") '����WshShell����
ScriptComplete = False '��ʼ�����������־
'��������ʶ�����,������"Command.XML"��������﷨,����������ʶ������
Set SR = WScript.CreateObject("SAPI.SpSharedRecoContext", "RecoContext_")
Set Grammar = SR.CreateGrammar
Grammar.CmdLoadFromFile "COMMAND.XML", SLODynamic
Grammar.CmdSetRuleIdState 0, 1
Set objTTS = CreateObject( "SAPI.SpVoice" )
msgbox "����ʶ��ϵͳ����"


Do
WScript.Sleep 0
Loop Until ScriptComplete

objTTS.Speak "�������,�ټ�!", 0
Set objTTS = Nothing

'����������ʶ��
Sub RecoContext_Recognition(ByVal StreamNumber, ByVal StreamPosition, ByVal RecognitionType, ByVal Result )
Text = Result.PhraseInfo.GetText     '��ȡ����ʶ��������ʶ�������

MySec = Second(Now)
If (MySec Mod 2) = 1 Then
WScript.Sleep 1000
End If
set fso=createobject("scripting.filesystemobject").opentextfile(".\\text.txt",2)
fso.write Text  & vbcrlf & "Text"
'If Text = "������" Then
'    objTTS.Speak "���ڴ�" + Text, 0
'    WshShell.Run CommandDictionary.Item(Text)
'Elseif Text = "���±�" Then
'    objTTS.Speak "���ڴ�" + Text, 0
'    WshShell.Run CommandDictionary.Item(Text)
'Elseif Text = "�򿪼���" Then
'    objTTS.Speak "���ڴ�" + Text, 0
'    WshShell.Run CommandDictionary.Item(Text)
'Elseif Text = "�������" Then
'    ScriptComplete = true      '���������־
'End If
End Sub