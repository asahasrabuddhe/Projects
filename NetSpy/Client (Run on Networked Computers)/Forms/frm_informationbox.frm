VERSION 5.00
Begin VB.Form frm_information 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   ClientHeight    =   735
   ClientLeft      =   120
   ClientTop       =   120
   ClientWidth     =   2400
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   735
   ScaleWidth      =   2400
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Lbl_message 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080C0FF&
      Caption         =   "You are NOT currently being watched / under control"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   765
      Left            =   0
      TabIndex        =   0
      ToolTipText     =   "'Drag' to move or 'Right-Click' to send a message to the Network Administrator"
      Top             =   0
      Width           =   2415
   End
   Begin VB.Menu mnu_popup 
      Caption         =   "popup"
      Visible         =   0   'False
      Begin VB.Menu mnu_popup_message 
         Caption         =   "Send Message"
      End
   End
End
Attribute VB_Name = "frm_information"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim x1, y1 As Long

Private Sub Form_Load()
Me.BorderStyle = 0
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Me.MousePointer = 5
End Sub

Private Sub Lbl_message_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
x1 = X
y1 = Y
End Sub

Private Sub Lbl_message_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Me.MousePointer = 5
End Sub

Private Sub Lbl_message_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
    If X = x1 And Y = y1 Then
        Exit Sub
    End If
    Me.Move Me.Left + X, Me.Top + Y
ElseIf Button = 2 Then
    Me.PopupMenu mnu_popup
End If
End Sub

Public Sub ShowInfoBox(show As Boolean, thecaption As String, colour As Integer)

If show = True Then
    If Me.Visible = False Then
        Lbl_message.Caption = thecaption
        ChangeColour (colour)
        Me.Move 0, 0
        DoEvents
        Me.show
        
    ElseIf Me.Visible = True Then
            Lbl_message.Caption = thecaption
            ChangeColour (colour)
    End If
    
ElseIf show = False Then
    Unload Me
End If
End Sub

Private Function ChangeColour(thecolour As Integer)
        Select Case thecolour
            Case 1
                Lbl_message.BackColor = &H80C0FF      '''Orange
                Me.BackColor = &HC0C0FF
            Case 2
                Lbl_message.BackColor = &H8000000F   '''Button Grey
                Me.BackColor = &H8000000F
            Case 3
                Lbl_message.BackColor = &H80000013    '''Light Blue
                Me.BackColor = &H80000013
        End Select
End Function

Private Sub mnu_popup_message_Click()
frm_inputmessage.show
SetFormTopmost frm_inputmessage
End Sub
Public Sub SetFormTopmost(TheForm As Form)

SetWindowPos TheForm.hWnd, HWND_TOPMOST, 0, 0, 0, 0, _
SWP_NOZORDER + SWP_NOMOVE + SWP_NOSIZE

End Sub
