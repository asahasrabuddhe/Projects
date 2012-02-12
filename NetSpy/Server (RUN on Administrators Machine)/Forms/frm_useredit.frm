VERSION 5.00
Begin VB.Form frm_useredit 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Edit User - "
   ClientHeight    =   2145
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   4080
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2145
   ScaleWidth      =   4080
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.TextBox txt_oldpass 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2640
      MaxLength       =   10
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   480
      Width           =   1335
   End
   Begin VB.CommandButton cmd_cancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   1200
      TabIndex        =   5
      Top             =   1680
      Width           =   1335
   End
   Begin VB.CommandButton cmd_change 
      Caption         =   "&Change Data"
      Default         =   -1  'True
      Height          =   375
      Left            =   2640
      TabIndex        =   4
      Top             =   1680
      Width           =   1335
   End
   Begin VB.TextBox txt_pass2 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2640
      MaxLength       =   10
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   1200
      Width           =   1335
   End
   Begin VB.TextBox txt_pass 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2640
      MaxLength       =   10
      PasswordChar    =   "*"
      TabIndex        =   2
      Top             =   840
      Width           =   1335
   End
   Begin VB.TextBox txt_username 
      Height          =   285
      Left            =   2640
      MaxLength       =   10
      TabIndex        =   0
      Top             =   120
      Width           =   1335
   End
   Begin VB.Image Image1 
      Height          =   510
      Left            =   120
      Picture         =   "frm_useredit.frx":0000
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      Caption         =   "Current Password:"
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
      Left            =   240
      TabIndex        =   9
      Top             =   480
      Width           =   2295
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      Caption         =   "Re-type New password:"
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
      Left            =   -120
      TabIndex        =   8
      Top             =   1200
      Width           =   2655
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Caption         =   "New Password:"
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
      Left            =   720
      TabIndex        =   7
      Top             =   840
      Width           =   1815
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "New Username:"
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
      Left            =   600
      TabIndex        =   6
      Top             =   120
      Width           =   1935
   End
End
Attribute VB_Name = "frm_useredit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_change_Click()
Dim SelectedUserPassword As String
Dim UserPosition As Integer

'check that 2 new passwords are the same
If Trim(LCase(txt_pass.Text)) <> Trim(LCase(txt_pass.Text)) Then
    MsgBox "The passwords you entered do not match, please re-type", vbCritical, "Password matching error"
    txt_oldpass.Text = ""
    txt_pass.Text = ""
    txt_pass2.Text = ""
    txt_pass.SetFocus
    Exit Sub
End If
    
'check for blank fields
If Trim(txt_username.Text) = "" Or Trim(txt_pass.Text) = "" Then
    MsgBox "Each field must contain data", vbCritical, "Error..."
    txt_username.SetFocus
    Exit Sub
End If

'check for fields with spaces
If Left(txt_username.Text, 1) = " " Or Left(txt_pass.Text, 1) = " " Then
    result = MsgBox("The Username or Password cannot ONLY contain Spaces, or BEGIN with a space", vbCritical, "Error...")
    txt_oldpass.Text = ""
    txt_pass.Text = ""
    txt_pass2.Text = ""
    txt_username.Text = ""
    txt_username.SetFocus
    Exit Sub
End If

HoldRecordCount = RecordCount

Open Filename For Random As #1 Len = UserDataLength

For a = 1 To HoldRecordCount
    Get #1, a, HOLDUSERDATA
    Decrypt HOLDUSERDATA.UserName
    'if the username selected (usernamebuffer) equals the username at the position on the file
    If Trim(LCase(HOLDUSERDATA.UserName)) = LCase(UserNameBuffer) Then
        UserPosition = a
        Decrypt HOLDUSERDATA.Password
        SelectedUserPassword = LCase(Trim(HOLDUSERDATA.Password))
        Exit For
    End If
Next
Close #1

'check that the existing password is the same as the inputted one
If SelectedUserPassword <> Trim(LCase(txt_oldpass.Text)) Then
    MsgBox "The existing password that you entered is invalid, please re-type", vbCritical, "Password matching error"
    txt_oldpass.Text = ""
    txt_pass.Text = ""
    txt_pass2.Text = ""
    txt_oldpass.SetFocus
    Exit Sub
End If
    
If MsgBox("Are you sure that you want to edit this username?", vbYesNo, "Are you sure?") = vbNo Then
    txt_username.Text = ""
    txt_oldpass.Text = ""
    txt_pass.Text = ""
    txt_pass2.Text = ""
    txt_username.SetFocus
    Exit Sub
End If
'''''''''Checks Completed

'''change the userdata in the file

'Put the new data inside the variable, nb. If you do NOT change one of the variables that is part of the
'variable holduserdata then they will remain as the were. This is important as if you use any of the extrainfo
'parts of the holduserdata to store other user information then it will remain unchanged.

HOLDUSERDATA.UserName = Trim(LCase(txt_username.Text))
HOLDUSERDATA.Password = Trim(LCase(txt_pass.Text))
Decrypt HOLDUSERDATA.OtherInfo

ChangeRecord HOLDUSERDATA, UserPosition

Call frm_users.Refreshlist
Unload Me

End Sub
Private Sub cmd_cancel_Click()
Unload Me
End Sub
