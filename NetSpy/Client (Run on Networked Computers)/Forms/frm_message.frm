VERSION 5.00
Begin VB.Form frm_message 
   BackColor       =   &H80000007&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Message from Administrator:"
   ClientHeight    =   2940
   ClientLeft      =   0
   ClientTop       =   -120
   ClientWidth     =   6450
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   2940
   ScaleWidth      =   6450
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox message 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   2175
      Left            =   240
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   0
      TabStop         =   0   'False
      ToolTipText     =   "Right Click to send a reply message to the administrator."
      Top             =   240
      Width           =   6015
   End
   Begin VB.Timer Timer1 
      Interval        =   10000
      Left            =   2640
      Top             =   1080
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "(Right Click to send a reply to the Network Administrator)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   2640
      Width           =   6015
   End
   Begin VB.Menu mnu_popup 
      Caption         =   "Popup"
      Visible         =   0   'False
      Begin VB.Menu mnu_popup_message 
         Caption         =   "Send Message to Administrator"
      End
   End
End
Attribute VB_Name = "frm_message"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 2 Then
    Me.PopupMenu mnu_popup
End If
End Sub


Private Sub mnu_popup_message_Click()
frm_inputmessage.show
SetFormTopmost frm_inputmessage
End Sub
Public Sub SetFormTopmost(TheForm As Form)

SetWindowPos TheForm.hwnd, HWND_TOPMOST, 0, 0, 0, 0, _
SWP_NOZORDER + SWP_NOMOVE + SWP_NOSIZE

End Sub


Private Sub message_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 2 Then
    Me.PopupMenu mnu_popup
End If

End Sub

Private Sub Timer1_Timer()
Timer1.Enabled = False
frm_message.Hide
End Sub

