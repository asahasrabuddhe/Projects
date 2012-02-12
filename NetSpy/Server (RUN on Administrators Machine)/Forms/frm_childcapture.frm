VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frm_childcapture 
   ClientHeight    =   5145
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7635
   Icon            =   "frm_childcapture.frx":0000
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5145
   ScaleWidth      =   7635
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   330
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   7635
      _ExtentX        =   13467
      _ExtentY        =   582
      ButtonWidth     =   1773
      ButtonHeight    =   582
      Style           =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   9
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "actual"
            Object.ToolTipText     =   "Resize the screenshot to its source aspect ratio"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "stretch"
            Object.ToolTipText     =   "Resize the screenshot to fit the entire form"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "edit"
            Object.ToolTipText     =   "Edit/save the screenshot in an image editor"
            ImageIndex      =   7
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "space1"
            Style           =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "control"
            Object.ToolTipText     =   "Control remote machine's mouse and keyboard"
            ImageIndex      =   5
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "space2"
            Style           =   3
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "auto"
            Object.ToolTipText     =   "Repeatedly updates the screenshot"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "refresh"
            Object.ToolTipText     =   "Update the screenshot from the remote machine"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "capturing"
            ImageIndex      =   1
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   120
      Top             =   720
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   12829635
      ImageWidth      =   60
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   9
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_childcapture.frx":0442
            Key             =   "capturing"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_childcapture.frx":0FD4
            Key             =   "stretch"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_childcapture.frx":17E6
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_childcapture.frx":2378
            Key             =   "actual"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_childcapture.frx":2B8A
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_childcapture.frx":371C
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_childcapture.frx":42AE
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_childcapture.frx":4E40
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_childcapture.frx":59D2
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Left            =   1080
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   4200
      Width           =   4815
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00FFFFFF&
      Height          =   3615
      Left            =   840
      ScaleHeight     =   3555
      ScaleWidth      =   4755
      TabIndex        =   1
      Top             =   600
      Width           =   4815
      Begin VB.PictureBox Picture2 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   2895
         Left            =   360
         MouseIcon       =   "frm_childcapture.frx":6564
         ScaleHeight     =   2865
         ScaleWidth      =   4065
         TabIndex        =   2
         Top             =   360
         Width           =   4095
         Begin VB.PictureBox Picture3 
            BorderStyle     =   0  'None
            Height          =   15
            Left            =   2760
            Picture         =   "frm_childcapture.frx":686E
            ScaleHeight     =   15
            ScaleWidth      =   15
            TabIndex        =   9
            Top             =   1560
            Visible         =   0   'False
            Width           =   15
         End
      End
   End
   Begin VB.VScrollBar Vscroll1 
      Height          =   3615
      Left            =   5640
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   600
      Width           =   255
   End
   Begin VB.Label Label4 
      Height          =   495
      Left            =   0
      TabIndex        =   8
      Top             =   3240
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label Label3 
      Height          =   495
      Left            =   0
      TabIndex        =   7
      Top             =   2640
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label Label2 
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Top             =   2040
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label Label1 
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   1560
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Image image1 
      BorderStyle     =   1  'Fixed Single
      Height          =   3975
      Left            =   840
      Stretch         =   -1  'True
      Top             =   600
      Width           =   5175
   End
End
Attribute VB_Name = "frm_childcapture"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim client As String
Dim firstx, firsty As Single
Dim rightclick As Boolean

Private Sub Form_Load()
On Error GoTo loaderror

Toolbar1.Buttons("capturing").Visible = False
Toolbar1.Buttons("capturing").Enabled = False

Image1.Move 0, Toolbar1.Height, ScaleWidth, ScaleHeight - (Toolbar1.Height)

Picture1.Move 0, Toolbar1.Height, ScaleWidth - Vscroll1.Width, ScaleHeight - (HScroll1.Height + Toolbar1.Height)
Picture2.Move 0, 0

With Vscroll1
    .Left = Picture1.Width - Vscroll1.Width
    .Height = Picture1.Height
    .Top = Toolbar1.Height
    .Max = Picture2.Height - Picture1.Height
End With

With HScroll1
    .Left = 0
    .Width = Picture1.Width
    '.Top = Picture1.Height - HScroll1.Height
    .Top = Picture1.Height + Toolbar1.Height
    .Max = Picture2.Width - Picture1.Width
End With

'Set the Max value for the scroll bars.
HScroll1.Max = Picture2.Width - Picture1.Width
Vscroll1.Max = Picture2.Height - Picture1.Height
HScroll1.LargeChange = -HScroll1.Max / 5
Vscroll1.LargeChange = -Vscroll1.Max / 5

'start with actual size
Call mnu_actual_Click
Exit Sub

loaderror:
    Call mnu_actual_Click
End Sub

Private Sub Form_Terminate()
Unload Me
End Sub

Private Sub HScroll1_Change()
Picture2.Left = -HScroll1.Value
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)

Select Case Button.Key
    Case "actual"
        Call mnu_actual_Click
    Case "stretch"
        Call mnu_stretch_Click
    Case "refresh"
        iscapturing = True
        Call frm_mdicaptures.DisableOtherCaptures(True, Me.caption, "refresh")
        Call mnu_refresh_Click
        If iscapturing = True Then
            capturing = True
        End If
    Case "edit"
        'SavePicture Picture2.Picture, (App.Path & "\temp.jpg")
        ShellExecute hwnd, "open", FileNameTemp, vbNullString, "C:\", 3
    Case "control"
        Call frm_falsemsgbox.FakeMsgBox("You are about to control the client's machine." & vbCrLf & _
        "(The client can only be controlled while the screenshot is in its original size and aspect ratio.)" _
        & vbCrLf & vbCrLf & "After each command the client will wait approximately 1.5 seconds to update your screenshot, during which time you will " _
        & vbCrLf & "be unable to control it (shown by your mouse changing to an hourglass)" _
        & vbCrLf & vbCrLf & "The following are a the list of things you can do whilst controlling the client's machine:" _
        & vbCrLf & vbCrLf & "        Click - simply click on the screenshot." _
        & vbCrLf & "        Right Click - simply right click on the screenshot." _
        & vbCrLf & "        Drag && Drop - simply drag anywhere on the screenshot using the mouse as you would normally in a drag drop operation." _
        & vbCrLf & "        Double Click - Hold down the SHIFT key and LEFT CLICK ONCE on the screenshot." _
        & vbCrLf & vbCrLf & "        Type - Press a key on the keyboard to bring up the keyboard input box where you can input the keyboard commands to send.", _
        11130, 4105, "How to control the remote client machine", 9870, 3220)
        
        formnumber = CInt(Left(Me.caption, (InStr(Me.caption, ":")) - 1))
        controlling = True
        Picture3.Visible = True
        Picture3.MousePointer = 99
        Picture2.MousePointer = 99
        Call frm_mdicaptures.DisableOtherCaptures(True, Me.caption, "control")
    Case "abort"
        controlling = False
        Picture3.Visible = False
        Picture3.MousePointer = 0
        Picture2.MousePointer = 0
        Call frm_mdicaptures.DisableOtherCaptures(False, Me.caption, "control")
    Case "auto"
        result = MsgBox("If the client on the remote machine is unexpectedly terminated then the autorefreshing may freeze." & _
        "This will be apparent by the lack of a changing picture and by the fact that the statusbar at the bottom" & _
        " of the screen will stop changing between 'Sending CAPTURE Command' and 'Downloading Capture' as frequently as it would usually.", vbInformation, "Be aware...")
        
        formnumber = CInt(Left(Me.caption, (InStr(Me.caption, ":")) - 1))
        stopautorefresh = False
        autorefresh = True
        Call frm_mdicaptures.DisableOtherCaptures(True, Me.caption, "auto")
        Call mnu_refresh_Click
    Case "stop"
        Toolbar1.Buttons("stop").Enabled = False
        stopautorefresh = True
        autorefresh = False
        afterautostop = True
        frm_server.tmr_autorefresh.Enabled = False
        Call frm_mdicaptures.DisableOtherCaptures(False, frm_server.refreshID.caption, "auto")
        frm_mdicaptures.SB.Panels(3).Text = ""
End Select
End Sub

Private Sub Vscroll1_Change()
Picture2.Top = -Vscroll1.Value
End Sub
Private Sub Form_Resize()
On Error GoTo resizeerror

If Me.Height < 3400 And Me.WindowState <> 1 And Me.WindowState <> 2 Then
    Me.Height = 3400
    Exit Sub
ElseIf Me.WindowState = 2 And Me.Height < 3400 Then
    Me.WindowState = 0
    'Me.Height = 3400
ElseIf Me.WindowState = 1 Then
    Exit Sub
ElseIf Me.WindowState = 2 And frm_mdicaptures.WindowState = 1 Then
    Me.WindowState = 0
End If

Image1.Move 0, Toolbar1.Height, ScaleWidth, ScaleHeight - (Toolbar1.Height)
Picture1.Move 0, Toolbar1.Height, ScaleWidth - Vscroll1.Width, ScaleHeight - (HScroll1.Height + Toolbar1.Height)
Picture2.Move 0, 0
HScroll1.Value = 0
Vscroll1.Value = 0


With HScroll1
        .Top = (Picture1.Height + Toolbar1.Height)
        .Left = 0
        .Width = Picture1.Width
        .Max = Picture2.Width - Picture1.Width
End With

With Vscroll1
        .Top = Toolbar1.Height
        .Left = Picture1.Width
        .Height = Picture1.Height
        .Max = Picture2.Height - Picture1.Height
End With

If Toolbar1.Buttons("actual").Enabled = False Then
    Vscroll1.Visible = (Picture1.Height < Picture2.Height)
    HScroll1.Visible = (Picture1.Width < Picture2.Width)
End If
Exit Sub

resizeerror:

    If Right(LCase(Err.Description), 7) = "picture" Then
        MsgBox "This error is because the Client sent a picture that is invalid.", vbInformation, "ERROR..."
    End If
        
    MsgBox Err.Description
End Sub
Public Sub Unloadme()
Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
Dim holder, bob As Integer
Dim holder2 As String

If iscapturing = True And controlling = False Then            'if it is busy refreshing
    Call frm_mdicaptures.DisableOtherCaptures(False, Me.caption, "refresh")
    'think of code to stop a single refresh half way through!

ElseIf iscapturing = True And controlrefresh = True Then         'if its controlling and in the middle of a refresh
    middleofrefresh = True
    Call frm_mdicaptures.DisableOtherCaptures(False, Me.caption, "refresh")
    controlling = False
    Picture3.Visible = False
    Picture3.MousePointer = 0
    Picture2.MousePointer = 0
    
'ElseIf controlling = True And controlrefresh = True Then        'if it is controlling and sending/downloading a command
    

ElseIf controlling = True Then      'if it is busy controlling
    controlling = False
    Picture3.Visible = False
    Picture3.MousePointer = 0
    Picture2.MousePointer = 0
    Call frm_mdicaptures.DisableOtherCaptures(False, Me.caption, "control")
    
ElseIf autorefresh = True Then      'if it is busy autorefreshing
    Toolbar1.Buttons("stop").Enabled = False
    stopautorefresh = True
    autorefresh = False
    afterautostop = False
    frm_server.tmr_autorefresh.Enabled = False
    Call frm_mdicaptures.DisableOtherCaptures(False, frm_server.refreshID.caption, "auto")
End If

'this prevents the server from NOT loading a new capture when the next screenshot arrives
capturemessage = False

Toolbar1.Buttons("actual").Enabled = True
Toolbar1.Buttons("stretch").Enabled = False

bob = InStr(Me.caption, ":")

holder2 = Left(Me.caption, bob - 1)
holder = CInt(holder2)
unavailable(holder) = False

NumberOfCaptures = NumberOfCaptures - 1
frm_mdicaptures.SB.Panels(1).Text = CStr(NumberOfCaptures) & " captures active"

Unload Me
End Sub


Private Sub mnu_actual_Click()
Toolbar1.Buttons("stretch").Enabled = True
Toolbar1.Buttons("actual").Enabled = False

If autorefresh = False And controlling = False And capturing = False Then
    Toolbar1.Buttons("control").Enabled = True
End If

Image1.Visible = False
Picture1.Visible = True
Picture2.Visible = True

' Determine if child picture will fill up screen.
' If so, then there is no need to use scroll bars.
Vscroll1.Visible = (Picture1.Height < Picture2.Height)
HScroll1.Visible = (Picture1.Width < Picture2.Width)

'otherwise it seems to muck up the scroll bars
Call Form_Resize
End Sub

Private Sub mnu_stretch_Click()
Toolbar1.Buttons("stretch").Enabled = False
Toolbar1.Buttons("actual").Enabled = True
Toolbar1.Buttons("control").Enabled = False

Image1.Move 0, Toolbar1.Height, ScaleWidth, ScaleHeight - Toolbar1.Height
Image1.Visible = True

Picture1.Visible = False
Picture2.Visible = False
Vscroll1.Visible = False
HScroll1.Visible = False

End Sub


Public Sub mnu_refresh_Click()
refreshed = True
capturemessage = True ''causes server to recognise this as a refresh not a new frm_childcapture

If controlling = True Then
    refreshingduringcontrol = True
    Call PreventControl
End If

Toolbar1.Buttons("refresh").Enabled = False
Toolbar1.Buttons("capturing").Visible = True

'get name from caption
client = Right(Me.caption, (Len(Me.caption) - (InStrRev(Me.caption, ":")) - 1))
frm_server.refreshID.caption = Me.caption
Call frm_server.sendcommand(client, "capture")
End Sub



Private Sub Picture2_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)

Picture3.Move x, y
Label1.caption = Round(Picture3.Left / 15)
Label2.caption = Round(Picture3.Top / 15)
End Sub
Private Sub picture3_Click()
'If rightclick = True Then
'rightclick = False
'Exit Sub
'End If
End Sub

Private Sub picture3_DblClick()  '''Doesnt seem to work properly so I resorted to Shift+Click unfortunately
'Call PreventControl
'client = Right(Me.caption, (Len(Me.caption) - (InStrRev(Me.caption, ":")) - 1))
'Call frm_server.sendcommand(client, "dclick" & " " & Label1.caption & ":" & Label2.caption)
'frm_server.refreshID.caption = Me.caption
End Sub

Private Sub picture3_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
If Button = 1 Then
    firstx = Label1.caption
    firsty = Label2.caption
End If
End Sub

Private Sub Picture3_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
client = Right(Me.caption, (Len(Me.caption) - (InStrRev(Me.caption, ":")) - 1))

If Button = 1 And Shift = 0 Then
    'single left click
    If x = 0 And y = 0 Then
        Call PreventControl
        ControlClient = True
        frm_server.refreshID.caption = Me.caption
        Call frm_server.sendcommand(client, "sclick" & " " & Label1.caption & ":" & Label2.caption)

    'drag XY
    Else:
        Call PreventControl
        ControlClient = True
        frm_server.refreshID.caption = Me.caption
        Label3.caption = CStr(x / 15)
        Label4.caption = CStr(y / 15)
        Call frm_server.sendcommand(client, ("dragXY" & " " & firstx & ":" & firsty & "*" & Label3.caption & ":" & Label4.caption))

    End If
'doubleclick event
ElseIf Button = 1 And Shift = 1 Then
    Call PreventControl
    ControlClient = True
    frm_server.refreshID.caption = Me.caption
    Call frm_server.sendcommand(client, "dclick" & " " & Label1.caption & ":" & Label2.caption)

'Right Click
ElseIf Button = 2 And Shift = 0 Then
    Call PreventControl
    ControlClient = True
    frm_server.refreshID.caption = Me.caption
    rightclick = True
    Call frm_server.sendcommand(client, "rclick" & " " & Label1.caption & ":" & Label2.caption)

'Keyboard command
ElseIf Button = 2 And Shift = 1 Then
    keyboardcommands = ""
    frm_keystrokes.Show (1)
    
    'only proceed if the user sends the command
    If continue = True Then
        continue = False
        Call PreventControl
        ControlClient = True
        frm_server.refreshID.caption = Me.caption
        Call frm_server.sendcommand(client, keyboardcommands)
    End If
    
End If

End Sub
Private Sub Picture1_KeyUp(KeyCode As Integer, Shift As Integer)
client = Right(Me.caption, (Len(Me.caption) - (InStrRev(Me.caption, ":")) - 1))
'only if control is in progress
If Picture3.Visible = True Then
    'if it is a SHIFT then do nothing as it could be a shift for a mouse click
    If KeyCode = 16 Then Exit Sub
    keyboardcommands = ""
    frm_keystrokes.Show (1)
    If continue = True Then
        continue = False
        Call PreventControl
        ControlClient = True
        frm_server.refreshID.caption = Me.caption
        Call frm_server.sendcommand(client, (keyboardcommands))
    End If
    
End If
End Sub
Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
Call Picture1_KeyUp(KeyCode, Shift)
End Sub
Private Sub Picture2_KeyUp(KeyCode As Integer, Shift As Integer)
Call Picture1_KeyUp(KeyCode, Shift)
End Sub
Private Sub Picture3_KeyUp(KeyCode As Integer, Shift As Integer)
Call Picture1_KeyUp(KeyCode, Shift)
End Sub
Private Sub PreventControl()
  'ControlClient = True
  Toolbar1.Buttons("abort").Enabled = False
  Toolbar1.Buttons("refresh").Enabled = False
  Picture3.Visible = False
  Picture3.MousePointer = 11
  Picture2.MousePointer = 11
End Sub
