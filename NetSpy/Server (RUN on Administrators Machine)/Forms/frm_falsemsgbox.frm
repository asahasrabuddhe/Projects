VERSION 5.00
Begin VB.Form frm_falsemsgbox 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   1290
   ClientLeft      =   16095
   ClientTop       =   13950
   ClientWidth     =   3060
   Icon            =   "frm_falsemsgbox.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1290
   ScaleWidth      =   3060
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   350
      Left            =   960
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   840
      Width           =   1115
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   120
      Picture         =   "frm_falsemsgbox.frx":000C
      Top             =   120
      Width           =   480
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "I am here to serve master"
      Height          =   195
      Left            =   840
      TabIndex        =   0
      Top             =   240
      Width           =   1785
   End
End
Attribute VB_Name = "frm_falsemsgbox"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

Label1.caption = "I am here to serve master"
Me.caption = ""
Me.Width = 2940
Command1.Left = 840
Unload Me
End Sub

Public Sub FakeMsgBox(Message As String, formwidth As Integer, formheight As Integer, formcaption As String, buttonleft As Integer, buttontop As Integer)
Label1.caption = Message
Me.caption = "Sorry..."
Me.Width = formwidth
Me.Height = formheight
Me.caption = formcaption
Command1.Left = buttonleft
Command1.Top = buttontop
Beep
Me.Show
Call SetFormTopmost(frm_falsemsgbox)
End Sub

Private Sub Form_Load()
Call SetFormTopmost(frm_falsemsgbox)
End Sub
