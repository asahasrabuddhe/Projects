VERSION 5.00
Begin VB.Form frmPassword 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Sign On"
   ClientHeight    =   3225
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5970
   Icon            =   "frmPassword.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   3225
   ScaleWidth      =   5970
   Begin VB.Frame fraBorder 
      Height          =   3135
      Left            =   2040
      TabIndex        =   0
      Top             =   0
      Width           =   3855
      Begin VB.CommandButton cmdOn 
         Caption         =   "Sign On"
         Default         =   -1  'True
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2400
         TabIndex        =   4
         Top             =   2640
         Width           =   975
      End
      Begin VB.TextBox txtPassword 
         Height          =   315
         IMEMode         =   3  'DISABLE
         Left            =   840
         PasswordChar    =   "*"
         TabIndex        =   3
         Top             =   1920
         Width           =   2535
      End
      Begin VB.ComboBox cboName 
         Height          =   315
         ItemData        =   "frmPassword.frx":030A
         Left            =   840
         List            =   "frmPassword.frx":0314
         Style           =   2  'Dropdown List
         TabIndex        =   2
         Top             =   960
         Width           =   2535
      End
      Begin VB.Image imgKey 
         Height          =   480
         Left            =   2400
         Picture         =   "frmPassword.frx":0329
         Top             =   600
         Width           =   480
      End
      Begin VB.Label lblPassword 
         Caption         =   "Enter Password:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008000&
         Height          =   255
         Left            =   840
         TabIndex        =   6
         Top             =   1680
         Width           =   1935
      End
      Begin VB.Label lblScreenName 
         Caption         =   "ScreenName"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008000&
         Height          =   255
         Left            =   840
         TabIndex        =   5
         Top             =   720
         Width           =   1575
      End
   End
   Begin VB.Label lblVersion 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Version 1.0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   2880
      Width           =   1695
   End
   Begin VB.Image imgPic 
      Height          =   3210
      Left            =   0
      Picture         =   "frmPassword.frx":076B
      Stretch         =   -1  'True
      Top             =   0
      Width           =   1935
   End
End
Attribute VB_Name = "frmPassword"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim mintctr As Integer
Dim mrstLogin As Recordset

Private Sub cboName_LostFocus()
    txtPassword.Text = ""
End Sub

Private Sub cmdOn_Click()
Dim flag As Boolean
Dim xText
flag = False

    If txtPassword.Text = "" Then
        MsgBox "Please Enter Password", vbOKOnly + vbCritical, _
        "Warning:End-User"
        txtPassword.SetFocus
        flag = True
    End If
    
    If cboName.ListIndex = 0 Then
        If cboName = mrstLogin![fldScreen] And txtPassword = mrstLogin![fldPass] Then
            mdiDtcc.tbrChoices.Visible = True
            mdiDtcc.mnuMembers = True
            mdiDtcc.mnuEmp = True
            mdiDtcc.mnuInv = True
            mdiDtcc.mnuChUser.Enabled = True
            Unload Me
            mdiDtcc.mnuOn.Visible = False
            flag = True
            gblnPriv = True
            mdiDtcc.ToolCenter
            frmTools.Show
            frmTools.stb1.Tab = 0
        End If
    Else
        mrstLogin.MoveNext
        If cboName = mrstLogin![fldScreen] And txtPassword = mrstLogin![fldPass] Then
            mdiDtcc.tbrChoices.Visible = True
            mdiDtcc.mnuChUser.Enabled = True
            mdiDtcc.mnuMembers = True
            mdiDtcc.mnuEmp = True
            mdiDtcc.mnuInv = True
            Unload Me
            mdiDtcc.mnuOn.Visible = False
            flag = True
            gblnPriv = False
        End If
        mrstLogin.MoveFirst
    End If
    
    
    If flag = False Then
        mintctr = mintctr + 1
        If mintctr = 4 Then
            End
        Else
            xText = "You have" + Str(4 - mintctr) + " tries left"
            If mintctr = 3 Then
                xText = "This is your last chance!!"
            End If
            MsgBox "Access Denied!!" & vbCrLf & _
            xText, vbOKOnly + vbCritical, "Warning:End-User"
            txtPassword.Text = ""
        End If
    End If
End Sub

Private Sub Form_Load()

    Dim pdbEnter As Database
    
    Set pdbEnter = OpenDatabase(App.Path & "\Gym_Members.mdb")
    Set mrstLogin = pdbEnter.OpenRecordset("tblPass")
    
    mdiDtcc.tbrChoices.Visible = False
    mdiDtcc.mnuScreen.Enabled = False
    mdiDtcc.mnuChUser.Enabled = False
    mdiDtcc.mnuMembers = False
    mdiDtcc.mnuEmp = False
    mdiDtcc.mnuInv = False
    cboName = mrstLogin![fldScreen]
    mintctr = 0
End Sub

Private Sub Form_Unload(Cancel As Integer)
    mdiDtcc.mnuScreen.Enabled = True
End Sub
