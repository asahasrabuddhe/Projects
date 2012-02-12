VERSION 5.00
Begin VB.Form frm_about 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "About Net Spy"
   ClientHeight    =   5595
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5055
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5595
   ScaleWidth      =   5055
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Contact >>"
      Height          =   375
      Left            =   3600
      TabIndex        =   2
      Top             =   2520
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   3600
      TabIndex        =   1
      Top             =   2040
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Interval        =   20000
      Left            =   6000
      Top             =   2760
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "K.D.K.C.E.     VIII Semester  I.T."
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   360
      TabIndex        =   6
      Top             =   4320
      Width           =   3225
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Neha Tikoo"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   360
      TabIndex        =   5
      Top             =   2760
      Width           =   1140
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Divyashree Bhivgade"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   360
      TabIndex        =   4
      Top             =   2400
      Width           =   2100
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Darshana Hiwase"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   360
      TabIndex        =   3
      Top             =   2040
      Width           =   1695
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Development && Programming by :-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   240
      Left            =   120
      TabIndex        =   0
      Top             =   1680
      Width           =   2970
   End
   Begin VB.Image Image1 
      Height          =   1590
      Left            =   0
      Picture         =   "frm_about.frx":0000
      Top             =   0
      Width           =   5250
   End
End
Attribute VB_Name = "frm_about"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Timer1.Enabled = False
    Unload Me
End Sub

Private Sub Command2_Click()
    MsgBox "Please send any comments/suggestions to abcd@rediffmail.com", vbInformation, "E-mail Address"
End Sub

Private Sub Form_Load()

If Timer1.Enabled = True Then
    Timer1.Enabled = False
End If
Timer1.Enabled = True
End Sub


Private Sub Form_Terminate()
    Timer1.Enabled = False
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
    Timer1.Enabled = False
    Unload Me
End Sub
