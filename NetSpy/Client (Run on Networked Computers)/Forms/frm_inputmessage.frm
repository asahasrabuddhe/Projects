VERSION 5.00
Begin VB.Form frm_inputmessage 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Input Message to send..."
   ClientHeight    =   1425
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4080
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1425
   ScaleWidth      =   4080
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   1080
      TabIndex        =   3
      Top             =   960
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Send"
      Default         =   -1  'True
      Height          =   375
      Left            =   2520
      TabIndex        =   2
      Top             =   960
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   480
      Width           =   3855
   End
   Begin VB.Label Label1 
      Caption         =   "Enter message below:"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   5055
   End
End
Attribute VB_Name = "frm_inputmessage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim messagehold As String
messagehold = Text1.Text
Text1.Text = ""
Call frm_client.SendMessage("message:" & messagehold)
Unload Me
End Sub

Private Sub Command2_Click()
messagehold = ""
Unload Me
End Sub

Private Sub Text1_KeyUp(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then
    Call Command1_Click
End If

End Sub
