VERSION 5.00
Begin VB.Form frm_passcheck 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Security Check"
   ClientHeight    =   1575
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4680
   ControlBox      =   0   'False
   Icon            =   "frm_passcheck.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1575
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.TextBox txt_pass 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   120
      MaxLength       =   10
      PasswordChar    =   "*"
      TabIndex        =   0
      Top             =   1200
      Width           =   4455
   End
   Begin VB.CommandButton cmd_cancel 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   3480
      TabIndex        =   2
      Top             =   600
      Width           =   1095
   End
   Begin VB.CommandButton cmd_continue 
      Caption         =   "Continue"
      Default         =   -1  'True
      Enabled         =   0   'False
      Height          =   375
      Left            =   3480
      TabIndex        =   1
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label lbl_user 
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   1320
      TabIndex        =   4
      Top             =   315
      Width           =   1335
   End
   Begin VB.Label label1 
      Caption         =   "Please enter the password for the currently logged in User:"
      Height          =   615
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   3135
   End
End
Attribute VB_Name = "frm_passcheck"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_cancel_Click()
PasswordCheckCompleted = False
Unload Me
End Sub

Private Sub cmd_continue_Click()
Dim PasswordCheck As String

If txt_pass.Text = "" Then
    MsgBox "You must enter a password", vbCritical, "Error..."
    
Else:
    PasswordCheck = Trim(LCase(txt_pass.Text))
    HoldRecordCount = RecordCount

    Open Filename For Random As #1 Len = UserDataLength
    
    For a = 1 To HoldRecordCount
        Get #1, a, HOLDUSERDATA
        Decrypt HOLDUSERDATA.UserName
        If Trim(LCase(HOLDUSERDATA.UserName)) = Trim(LCase(LoggedIn)) Then
            Decrypt HOLDUSERDATA.Password
            If Trim(LCase(PasswordCheck)) = Trim(LCase(HOLDUSERDATA.Password)) Then
                PasswordCheckCompleted = True
                Unload Me
            Else:
                MsgBox "The password that you entered was Wrong, please re-enter it.", vbExclamation, "Incorrect Password"
                txt_pass.Text = ""
            End If
            Exit For
        End If
    Next
    
    Close #1
End If
    
End Sub

Private Sub Form_Load()
lbl_user.caption = Trim(UCase(LoggedIn))
End Sub

Private Sub txt_pass_Change()
If txt_pass.Text = "" Then
    cmd_continue.Enabled = False
Else:
    cmd_continue.Enabled = True
End If
End Sub
