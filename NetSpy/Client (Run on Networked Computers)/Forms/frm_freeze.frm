VERSION 5.00
Begin VB.Form frm_freeze 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Explorer"
   ClientHeight    =   5715
   ClientLeft      =   3870
   ClientTop       =   3540
   ClientWidth     =   11370
   ControlBox      =   0   'False
   FillColor       =   &H00FFFFFF&
   FillStyle       =   0  'Solid
   BeginProperty Font 
      Name            =   "MS Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H8000000E&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "frm_freeze.frx":0000
   MousePointer    =   99  'Custom
   Moveable        =   0   'False
   NegotiateMenus  =   0   'False
   ScaleHeight     =   5715
   ScaleWidth      =   11370
   ShowInTaskbar   =   0   'False
   WindowState     =   2  'Maximized
   Begin VB.Timer tmr_start 
      Enabled         =   0   'False
      Interval        =   300
      Left            =   5400
      Top             =   2160
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   5400
      Top             =   1680
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H00000000&
      Height          =   255
      HideSelection   =   0   'False
      IMEMode         =   3  'DISABLE
      Left            =   -720
      PasswordChar    =   "*"
      TabIndex        =   0
      Top             =   0
      Width           =   915
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "The Network Administrator has blocked access to this machine"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   735
      Left            =   2040
      TabIndex        =   1
      Top             =   240
      Width           =   7455
   End
End
Attribute VB_Name = "frm_freeze"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim timerarray As Integer
Dim hhkLowLevelKybd As Long

Public Sub SetFormTopmost(TheForm As Form)

SetWindowPos TheForm.hwnd, HWND_TOPMOST, 0, 0, 0, 0, _
SWP_NOZORDER + SWP_NOMOVE + SWP_NOSIZE

End Sub

Private Function unfreezeme()
Call frm_client.unfreeze
End Function

'Remove the program from the CAD List
Public Sub RemoveProgramFromList()
Dim lngProcessID As Long
Dim lngReturn As Long
   
If WinVersionID = 1 Then
    lngProcessID = GetCurrentProcessId()
    lngReturn = RegisterServiceProcess(pid, RSP_SIMPLE_SERVICE)
End If
End Sub

'Sub necessary to Remove the CAD list altogether:
Sub DisableCtrlAltDelete(bDisabled As Boolean)
    Dim X As Long
    X = SystemParametersInfo(97, bDisabled, CStr(1), 0)
End Sub


Private Sub Form_Click()
Text1.Enabled = True
Text1.SelStart = Len(Text1.Text)

DoEvents
Text1.SetFocus
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
Text1.Enabled = True
Text1.SelStart = Len(Text1.Text)

DoEvents                'This is necessary as Windows XP causes an error on setting focus on objects
Text1.SetFocus          'something to do with multi-tasking (not ideal solution but does the job
End Sub

Private Sub Form_Load()
Dim rc As Long
Dim OwnerhWnd As Long

Label1.Left = Screen.Width - (Screen.Width / 2) - (Label1.Width / 2)

SetFormTopmost frm_freeze

Text1.Text = ""
End Sub

Private Sub Text1_Change()
If Len(Text1.Text) = 4 Then
    holdall = Text1.Text
    holdlast = Right(holdall, 3)
    Text1.Text = holdlast
    Text1.SelStart = 3
End If

If Text1.Text = "bob" Then   '''Sets the SECRET EXIT password (only 3 characters unless you fillde with code above)
    Text1.Text = ""
    Call unfreezeme
End If
End Sub

Public Sub FreezeXP(freeze As Boolean)

If freeze = True Then
    'Disable Taskmanager buttons after ctrl alt del
    result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\system\", "DisableTaskMgr", "1")
    result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\system\", "DisableLockWorkstation", "1")
    result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\system\", "DisableChangePassword", "1")
    result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\explorer\", "NoLogOff", "1")
    result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\explorer\", "NoClose", "1")
    
    'Disable Start Menu & Bar
    Diswin "Start Menu", 0
    Call EnableStartBar(False)
    'crude method but i need code to disable start menu in win2k or the classic start menu in 2000
    If WinVersionID = 2 And getVersion <> "Windows XP" Then
        tmr_start.Enabled = True
    End If
    
    'Enable LowLevel Key hook
    Hook
ElseIf freeze = False Then
    'Enable Taskmanager buttons after ctrl alt del
    result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\system\", "DisableTaskMgr", "0")
    result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\system\", "DisableLockWorkStation", "0")
    result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\system\", "DisableChangePassword", "0")
    result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\explorer\", "NoLogOff", "0")
    result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\explorer\", "NoClose", "0")

    'Enable Start Menu & Bar
    Diswin "Start Menu", 1
    Call EnableStartBar(True)
    
    'Disable LowLevel Key hook
    UnHook
    
End If
End Sub

Private Sub tmr_start_Timer()
keybd_event 91, 0, 0, 0
keybd_event 91, 0, KEYEVENTF_KEYUP, 0
DoEvents
frm_freeze.SetFocus
Timer1.Enabled = False
End Sub
