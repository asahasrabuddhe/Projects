VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm frm_mdicaptures 
   BackColor       =   &H8000000C&
   Caption         =   "Screenshots"
   ClientHeight    =   4050
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   5595
   Icon            =   "frm_mdicaptures.frx":0000
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.StatusBar SB 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   0
      Top             =   3750
      Width           =   5595
      _ExtentX        =   9869
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   3
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   2
            Object.Width           =   6165
            MinWidth        =   6174
            Object.ToolTipText     =   "The number of captures visible"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   2
            Object.Width           =   6165
            MinWidth        =   6174
            Object.ToolTipText     =   "The current activity being performed on the said capture"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   2
            Bevel           =   0
            Object.ToolTipText     =   "The current interaction between the server and client"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Menu mnu_settings 
      Caption         =   "&Settings"
      Begin VB.Menu mnu_settings_auto 
         Caption         =   "&Auto Refresh Interval"
         Begin VB.Menu mnu_settings_auto_min 
            Caption         =   "Minimum Refresh Rate ~ 1sec"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_settings_auto_10 
            Caption         =   "10 seconds"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_settings_auto_20 
            Caption         =   "20 seconds"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_settings_auto_30 
            Caption         =   "30 seconds"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_settings_auto_60 
            Caption         =   "1 minute"
            Checked         =   -1  'True
         End
      End
   End
   Begin VB.Menu mnu_windows 
      Caption         =   "&Windows"
      Begin VB.Menu mnu_window 
         Caption         =   "Tile &Horizontally"
         Index           =   0
      End
      Begin VB.Menu mnu_window 
         Caption         =   "Tile &Vertically"
         Index           =   1
      End
      Begin VB.Menu mnu_window 
         Caption         =   "&Cascade"
         Index           =   2
      End
   End
End
Attribute VB_Name = "frm_mdicaptures"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim foundform As Integer
Dim a1, a2, a3, a4 As Integer
Dim upperlimit, lengthofemptyforms, LengthOfGLEF As Integer
Dim GLEFBuff As String
Dim Miss, NoGLEF As Boolean
Dim a As Integer

Public Function NewCapture(Filename As String, caption As String)
On Error GoTo newcaperror

Dim space As Integer
Dim a As Integer
Dim holdcaption As String
        
For a = 1 To 100
    If unavailable(a) = False Then
    space = a
    unavailable(a) = True
    usedforms(a) = True
    holdcaption = ((CStr(a) & ": " & caption))
    Exit For
    End If
Next
        
Set screenshot(space) = New frm_childcapture

With screenshot(space)
    .Image1.Picture = LoadPicture(Filename)
    .Picture2.Picture = LoadPicture(Filename)
    .caption = holdcaption
    '.Move 0, 0, Me.Width - 2000, Me.Height - 2000
    .Show
End With

screenshot(space).WindowState = 2

'if resolution of client machine lower than that of the servers then resize
If screenshot(space).Picture2.Width < frm_mdicaptures.Width Then
    screenshot(space).WindowState = 0
    screenshot(space).Width = screenshot(space).Picture2.Width + screenshot(space).Vscroll1.Width + 200
    screenshot(space).Height = screenshot(space).Picture2.Height + screenshot(space).HScroll1.Height + _
    screenshot(space).Toolbar1.Height + 600
End If

NumberOfCaptures = NumberOfCaptures + 1

SB.Panels(1).Text = CStr(NumberOfCaptures) & " captures active"
Exit Function

newcaperror:
    MsgBox Err.Description
    
End Function

Public Function SearchForLoadedCapture(captureid As String) As Boolean
SearchForLoadedCapture = False

GLEFBuff = GetLoadedEmptyForms

For a = 1 To upperlimit

    'if this place in the loop is a loaded/empty form then goto the next one
    If MissOrNot(a) = True Then GoTo nextone4
    
    'if this form is the one the program is searching for by calling this sub
    If LCase(captureid) = LCase(Right(screenshot(a).caption, (Len(screenshot(a).caption)) - (InStr(screenshot(a).caption, ":") + 1))) Then
        SearchForLoadedCapture = True
    End If
    
nextone4:
Next
    
End Function

Public Function GetLoadedEmptyForms() As String
GetLoadedEmptyForms = ""
GLEFBuff = ""
upperlimit = 0
LengthOfGLEF = 0

For a = 1 To 100
    'if it is used and is empty
    If usedforms(a) = True And unavailable(a) = False Then
        GetLoadedEmptyForms = GetLoadedEmptyForms & CStr(a)
    End If
    
    If usedforms(a) = False Then
        upperlimit = a
        Exit For
    End If
Next
upperlimit = upperlimit - 1
LengthOfGLEF = Len(GetLoadedEmptyForms)

End Function

Public Function MissOrNot(placeinloop As Integer) As Boolean
MissOrNot = False
NoGLEF = False

If LengthOfGLEF = 0 Then NoGLEF = True
If GLEFBuff = "" Then NoGLEF = True

'if there ARE forms in the GLEF then compare them to the place in the loop, else, leave
If NoGLEF = False Then
    'if the place in the loop is one of the forms to miss out then miss it(ie miss=true)
    If placeinloop = CInt(Left(GLEFBuff, Len(GLEFBuff) - (Len(GLEFBuff) - 1))) Then
        GLEFBuff = Right(GLEFBuff, (Len(GLEFBuff) - 1))
        MissOrNot = True
    End If
End If

End Function

'''This function is used in Normal Single refreshing operations
Public Function RefreshForm(formID As String, Filename As String)
On Error GoTo errorline

GLEFBuff = GetLoadedEmptyForms

For a = 1 To upperlimit

    'if this place in the loop is a loaded/empty form then goto the next one
    If MissOrNot(a) = True Then GoTo nextone0
        
    '''''This is a form you wish to act upon:
    If Not screenshot(a).caption = formID Then
        GoTo nextone0
    ElseIf screenshot(a).caption = formID Then
        foundform = a
        'Exit For
    End If

    If autorefresh = True Then
        With screenshot(foundform)
            .Image1.Picture = LoadPicture(Filename)
            .Picture2.Picture = LoadPicture(Filename)
        End With
        Exit Function

    ElseIf autorefresh = False Then
    
        If controlrefresh = True Then
            controlrefresh = False
            With screenshot(foundform)
                .Picture2.Picture = LoadPicture(Filename)
                .Image1.Picture = LoadPicture(Filename)
                .Toolbar1.Buttons("abort").Enabled = True
                .Toolbar1.Buttons("refresh").Enabled = True
                .Toolbar1.Buttons("capturing").Visible = False
                .Picture3.Visible = True
                .Picture3.MousePointer = 99
                .Picture2.MousePointer = 99
            End With
            
            capturing = False
            iscapturing = False
            
        ElseIf controlrefresh = False Then
            With screenshot(foundform)
                .Picture2.Picture = LoadPicture(Filename)
                .Image1.Picture = LoadPicture(Filename)
                '.Toolbar1.Buttons("refresh").Enabled = True
                '.Toolbar1.Buttons("auto").Enabled = True
                '.Toolbar1.Buttons("capturing").Visible = False
            End With
        
    
        End If
    
    End If

nextone0:
Next

errorline:

End Function

'''This sub is used in AutoRefreshing
Public Sub Refresh(user As String)

GLEFBuff = GetLoadedEmptyForms

For a = 1 To upperlimit

    'if this place in the loop is a loaded/empty form then goto the next one
    If MissOrNot(a) = True Then GoTo nextone1
    
    If screenshot(a).caption = user Then
        foundform = a
        Exit For
    End If
    
nextone1:
Next

Call screenshot(foundform).mnu_refresh_Click

End Sub

Public Sub CloseCapture(id As String, closeall As Boolean)
Dim dontcloseall As Boolean
Dim totallimit As Integer
Dim dontcloseme As Boolean
dontcloseme = False

GLEFBuff = GetLoadedEmptyForms

For a = 1 To upperlimit

        'if this place in the loop is a loaded/empty form then goto the next one
        If MissOrNot(a) = True Then GoTo nextone4
        
        'if the ID equals the screenshot(a) then unload that screenshot
        If LCase(Right(screenshot(a).caption, Len(screenshot(a).caption) - ((InStr(screenshot(a).caption, ":")) + 1))) = LCase(id) Then
            Call screenshot(a).Unloadme
        End If
        
nextone4:
Next
If NumberOfCaptures = 0 Then
    Unload Me
End If

End Sub

Public Sub DisableOtherCaptures(trueorfalse As Boolean, exceptme As String, disabletype As String)


On Error GoTo errorDisabling

GLEFBuff = GetLoadedEmptyForms

'if trueorfalse = true then you want to Disable other captures
If trueorfalse = True Then
    
    For a = 1 To upperlimit

        'if this place in the loop is a loaded/empty form then goto the next one
        If MissOrNot(a) = True Then GoTo nextone2
        
        'if it is the form we are using then do the following and go to the NEXT FORM
        If exceptme = screenshot(a).caption Then

                screenshot(a).BorderStyle = 1
        
                If disabletype = "auto" Then
                    screenshot(a).Toolbar1.Buttons("auto").Key = "stop"
                    screenshot(a).Toolbar1.Buttons("stop").Image = 8
                    screenshot(a).Toolbar1.Buttons("control").Enabled = False
                    screenshot(a).Toolbar1.Buttons("capturing").Visible = True
                    screenshot(a).Toolbar1.Buttons("refresh").Enabled = False
                    frm_mdicaptures.BackColor = &H8000000D
                    SB.Panels(2).Text = "Auto-Refreshing " & Right(screenshot(a).caption, Len(screenshot(a).caption) - (InStr(screenshot(a).caption, ":")))
                                        
                ElseIf disabletype = "refresh" Then
                    screenshot(a).Toolbar1.Buttons("auto").Enabled = False
                    If controlling = False Then
                        screenshot(a).Toolbar1.Buttons("control").Enabled = False
                    End If
                    screenshot(a).Toolbar1.Buttons("capturing").Visible = True
                    screenshot(a).Toolbar1.Buttons("refresh").Enabled = False
                    SB.Panels(2).Text = "Refreshing " & Right(screenshot(a).caption, Len(screenshot(a).caption) - (InStr(screenshot(a).caption, ":")))

                    
                ElseIf disabletype = "control" Then
                    screenshot(a).Toolbar1.Buttons("control").Key = "abort"
                    screenshot(a).Toolbar1.Buttons("abort").Image = 9
                    'screenshot(a).Toolbar1.Buttons("refresh").Enabled = False
                    screenshot(a).Toolbar1.Buttons("auto").Enabled = False
                    screenshot(a).Toolbar1.Buttons("stretch").Enabled = False
                    frm_mdicaptures.BackColor = &H8000000D
                    SB.Panels(2).Text = "Controlling " & Right(screenshot(a).caption, Len(screenshot(a).caption) - (InStr(screenshot(a).caption, ":")))

                End If
                
            GoTo nextone2

        End If
        
        '''if this is a form you want to disable then do the following
        screenshot(a).Toolbar1.Buttons("refresh").Enabled = False
        screenshot(a).Toolbar1.Buttons("auto").Enabled = False
        screenshot(a).Toolbar1.Buttons("control").Enabled = False

nextone2:
    Next
    
ElseIf trueorfalse = False Then
    For a = 1 To upperlimit

        'if this place in the loop is a loaded/empty form then goto the next one
        If MissOrNot(a) = True Then GoTo nextone3
        
        'If screenshot(a).caption = "" Then
        '    screenshot(a).Hide
        '    GoTo nextone3
        'End If
        
        'If this is the form you are working on then:
        If exceptme = screenshot(a).caption Then
            
            screenshot(a).BorderStyle = 2
                
            If disabletype = "auto" Then
                screenshot(a).Toolbar1.Buttons("stop").Key = "auto"
                screenshot(a).Toolbar1.Buttons("auto").Image = 6
                screenshot(a).Toolbar1.Buttons("auto").Enabled = True
                screenshot(a).Toolbar1.Buttons("refresh").Enabled = True
                screenshot(a).Toolbar1.Buttons("capturing").Visible = False
                screenshot(a).Toolbar1.Buttons("control").Enabled = True
                frm_mdicaptures.BackColor = &H8000000C
                SB.Panels(2).Text = ""
                SB.Panels(3).Text = ""
                
            ElseIf disabletype = "refresh" Then
                '''The following is needed if you close the capture(unload) and it is being controlled/refreshed (ie. middleofrefresh = true)
                If middleofrefresh = True Then
                    middleofrefresh = False
                    screenshot(a).Toolbar1.Buttons("abort").Enabled = True
                    screenshot(a).Toolbar1.Buttons("refresh").Enabled = True
                    screenshot(a).Toolbar1.Buttons("auto").Enabled = True
                    screenshot(a).Toolbar1.Buttons("stretch").Enabled = True
                    screenshot(a).Toolbar1.Buttons("capturing").Visible = False
                    screenshot(a).Picture3.Visible = True
                    screenshot(a).Picture3.MousePointer = 99
                    screenshot(a).Picture2.MousePointer = 99
                    screenshot(a).Toolbar1.Buttons("abort").Image = 5
                    screenshot(a).Toolbar1.Buttons("abort").Key = "control"
                    frm_mdicaptures.BackColor = &H8000000C
                    
                Else:
                    screenshot(a).Toolbar1.Buttons("control").Enabled = True
                    screenshot(a).Toolbar1.Buttons("refresh").Enabled = True
                    screenshot(a).Toolbar1.Buttons("auto").Enabled = True
                    screenshot(a).Toolbar1.Buttons("capturing").Visible = False
                End If
                
                capturing = False
                iscapturing = False
                SB.Panels(2).Text = ""
                SB.Panels(3).Text = ""
                
            ElseIf disabletype = "control" Then
                screenshot(a).Toolbar1.Buttons("refresh").Enabled = True
                screenshot(a).Toolbar1.Buttons("auto").Enabled = True
                screenshot(a).Toolbar1.Buttons("stretch").Enabled = True
                screenshot(a).Toolbar1.Buttons("abort").Image = 5
                screenshot(a).Toolbar1.Buttons("abort").Key = "control"
                frm_mdicaptures.BackColor = &H8000000C
                SB.Panels(2).Text = ""
                SB.Panels(3).Text = ""
            End If
                    
            'the following means that if the form you are working on is in the ACTUAL size format, then
            'the control button is enabled
            If screenshot(a).Toolbar1.Buttons("stretch").Enabled = True Then
                screenshot(a).Toolbar1.Buttons("control").Enabled = True
            ElseIf screenshot(a).Toolbar1.Buttons("stretch").Enabled = False Then
                If controlling = False Then
                    screenshot(a).Toolbar1.Buttons("control").Enabled = False
                End If
            End If
                     
            GoTo nextone3
        End If
        
        'if this is a form you want to enable then:
        screenshot(a).Toolbar1.Buttons("refresh").Enabled = True
        screenshot(a).Toolbar1.Buttons("auto").Enabled = True
        screenshot(a).Toolbar1.Buttons("control").Enabled = True
        
        If screenshot(a).Toolbar1.Buttons("stretch").Enabled = True Then
            screenshot(a).Toolbar1.Buttons("control").Enabled = True
        ElseIf screenshot(a).Toolbar1.Buttons("stretch").Enabled = False Then
            screenshot(a).Toolbar1.Buttons("control").Enabled = False
        End If
        
nextone3:
    Next
End If
Exit Sub

errorDisabling:
    MsgBox Err.Description
End Sub

Private Sub MDIForm_Load()
On Error GoTo loaderror

NumberOfCaptures = 0
ResizeStatusBar
Me.Move 1000, 1000, Screen.Width - 2000, Screen.Height - 2000
dontuse = ""
dontuse2 = ""
dontuse3 = ""
Call mnu_settings_auto_min_Click
Exit Sub

loaderror:
    MsgBox (Err.Description)
End Sub

Private Sub ResizeStatusBar()

SB.Panels(1).Width = (SB.Width / 3) - 100
SB.Panels(2).Width = (SB.Width / 3) - 100
SB.Panels(3).Width = (SB.Width / 3) - 100
End Sub

Private Sub MDIForm_Resize()
If Me.WindowState = 1 Then
    Exit Sub
Else:
    ResizeStatusBar
End If
End Sub

Private Sub mnu_settings_auto_min_Click()
mnu_settings_auto_min.Checked = True
mnu_settings_auto_10.Checked = False
mnu_settings_auto_20.Checked = False
mnu_settings_auto_30.Checked = False
mnu_settings_auto_60.Checked = False
AutoDoEvents = True
End Sub

Private Sub mnu_settings_auto_10_Click()
mnu_settings_auto_min.Checked = False
mnu_settings_auto_10.Checked = True
mnu_settings_auto_20.Checked = False
mnu_settings_auto_30.Checked = False
mnu_settings_auto_60.Checked = False
frm_server.tmr_autorefresh.Interval = 8000
AutoDoEvents = False
End Sub

Private Sub mnu_settings_auto_20_Click()
mnu_settings_auto_min.Checked = False
mnu_settings_auto_10.Checked = False
mnu_settings_auto_20.Checked = True
mnu_settings_auto_30.Checked = False
mnu_settings_auto_60.Checked = False
frm_server.tmr_autorefresh.Interval = 18000
AutoDoEvents = False
End Sub

Private Sub mnu_settings_auto_30_Click()
mnu_settings_auto_min.Checked = False
mnu_settings_auto_10.Checked = False
mnu_settings_auto_20.Checked = False
mnu_settings_auto_30.Checked = True
mnu_settings_auto_60.Checked = False
frm_server.tmr_autorefresh.Interval = 28000
AutoDoEvents = False
End Sub

Private Sub mnu_settings_auto_60_Click()
mnu_settings_auto_min.Checked = False
mnu_settings_auto_10.Checked = False
mnu_settings_auto_20.Checked = False
mnu_settings_auto_30.Checked = False
mnu_settings_auto_60.Checked = True
frm_server.tmr_autorefresh.Interval = 58000
AutoDoEvents = False
End Sub

Private Sub mnu_window_Click(Index As Integer)
Select Case Index
   Case 0
      Me.Arrange vbTileHorizontal
   Case 1
      Me.Arrange vbTileVertical
   Case 2
      Me.Arrange vbCascade
End Select
End Sub




