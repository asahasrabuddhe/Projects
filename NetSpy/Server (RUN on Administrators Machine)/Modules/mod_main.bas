Attribute VB_Name = "mod_main"
'Public Variables
Public FileNameTemp As String
Public refreshed As Boolean
Public refreshingduringcontrol As Boolean
Public dontstopcontrolling As Boolean
Public middleofrefresh As Boolean
Public documentCount As Integer
Public screenshot(100) As frm_childcapture
Public refreshformid As String
Public unavailable(100) As Boolean
Public usedforms(100) As Boolean
Public Users(100) As String
Public autorefresh As Boolean
Public stopautorefresh As Boolean
Public ControlClient As Boolean
Public controlrefresh As Boolean
Public AutoDoEvents As Boolean
Public sendtoall As Boolean
Public continue As Boolean
Public keyboardcommands As String
Public capturing As Boolean
Public iscapturing As Boolean
Public formnumber As Integer
Public controlling As Boolean
Public afterautostop As Boolean
Public NumberOfCaptures As Integer
Public capturemessage As Boolean

Public Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal _
hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx _
As Long, ByVal cy As Long, ByVal wFlags As Long) As Long

Public Const HWND_TOPMOST = -1
Public Const SWP_NOMOVE = &H2
Public Const SWP_NOSIZE = &H1
Public Const SWP_NOZORDER = &H8

Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Public Declare Function ShellExecute _
    Lib "shell32.dll" Alias "ShellExecuteA" ( _
    ByVal hwnd As Long, _
    ByVal lpOperation As String, _
    ByVal lpFile As String, _
    ByVal lpParameters As String, _
    ByVal lpDirectory As String, _
    ByVal nShowCmd As Long) As Long

Public Sub SetFormTopmost(TheForm As Form)

SetWindowPos TheForm.hwnd, HWND_TOPMOST, 0, 0, 0, 0, _
SWP_NOZORDER + SWP_NOMOVE + SWP_NOSIZE

End Sub

