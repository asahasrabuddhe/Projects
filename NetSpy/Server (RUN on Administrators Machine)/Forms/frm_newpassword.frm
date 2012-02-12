VERSION 5.00
Begin VB.Form frm_newpassword 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Enter new user..."
   ClientHeight    =   1980
   ClientLeft      =   45
   ClientTop       =   210
   ClientWidth     =   4680
   ControlBox      =   0   'False
   Icon            =   "frm_newpassword.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1980
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.TextBox txt_authorisation 
      ForeColor       =   &H000000FF&
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2280
      TabIndex        =   3
      Top             =   1560
      Width           =   1335
   End
   Begin VB.TextBox txt_username 
      Height          =   285
      Left            =   1920
      MaxLength       =   10
      TabIndex        =   0
      Top             =   120
      Width           =   1335
   End
   Begin VB.TextBox txt_newpassword2 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1920
      MaxLength       =   10
      PasswordChar    =   "*"
      TabIndex        =   2
      Top             =   1080
      Width           =   1335
   End
   Begin VB.CommandButton cmd_cancel 
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   3600
      TabIndex        =   5
      Top             =   600
      Width           =   975
   End
   Begin VB.CommandButton cmd_add 
      Caption         =   "&Add User"
      Default         =   -1  'True
      Height          =   375
      Left            =   3600
      TabIndex        =   4
      Top             =   120
      Width           =   975
   End
   Begin VB.TextBox txt_newpassword 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1920
      MaxLength       =   10
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   600
      Width           =   1335
   End
   Begin VB.Image Image1 
      Height          =   510
      Left            =   120
      Picture         =   "frm_newpassword.frx":0442
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label5 
      Alignment       =   1  'Right Justify
      Caption         =   "Authorisation Password:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   -360
      TabIndex        =   9
      Top             =   1560
      Width           =   2535
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      Caption         =   "Username:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   600
      TabIndex        =   8
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      Caption         =   "Re-enter password:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   0
      TabIndex        =   7
      Top             =   1080
      Width           =   1815
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Caption         =   "Password:"
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
      TabIndex        =   6
      Top             =   600
      Width           =   1095
   End
End
Attribute VB_Name = "frm_newpassword"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_cancel_Click()
Unload Me

If SwitchToMainForm = True Then
    frm_passwordscreen.txt_user.SetFocus
End If

End Sub

Private Sub cmd_add_Click()

'The point of authorisation is so that if a user tries to get into the program by simply deleting the Users.dat file, then
'They will need the authorisation password to create a new user. Preventing them from accessing the program.
'The authorisation password is a constant declared in the module


''''****OBVIOUSLY there wouldnt be the label saying the default authorisation password in the real program,
''''****that is just to allow people access before they know what it is for***

'check if authorisation is needed (new user.dat file)
If AuthorisationNeeded = True Then
    If LCase(txt_authorisation.Text) <> AuthorisationPass Then
        result = MsgBox("The authorisation password is invalid, please re-type", vbCritical, "Authorisation Error")
        Exit Sub
    ElseIf LCase(txt_authorisation.Text) = AuthorisationPass Then
    End If
    
ElseIf AuthorisationNeeded = False Then
End If

'check passwords are the same
If LCase(txt_newpassword.Text) <> LCase(txt_newpassword2.Text) Then
    MsgBox "The passwords you entered do not match, please re-type", vbCritical, "Password matching error"
    txt_newpassword.Text = ""
    txt_newpassword2.Text = ""
    txt_newpassword.SetFocus
    Exit Sub
End If

'check for blank fields
If txt_username.Text = "" Or txt_newpassword.Text = "" Then
    MsgBox "Each field must contain data", vbCritical, "Error..."
    txt_username.SetFocus
    Exit Sub
End If

'check for fields with spaces
If Left(txt_username.Text, 1) = " " Or Left(txt_newpassword.Text, 1) = " " Then
    MsgBox "The username or password cannot ONLY contain spaces, or BEGIN with a space", vbCritical, "Error..."
    txt_newpassword.Text = ""
    txt_newpassword2.Text = ""
    txt_username.Text = ""
    txt_username.SetFocus
    Exit Sub
End If
'''''''''Checks Completed

'Add data to Variable (and overwrite any existing data inside it)
With HOLDUSERDATA
    .UserName = LCase(Trim(txt_username.Text))
    .Password = LCase(Trim(txt_newpassword.Text))
    .OtherInfo = BlankHOLDUSERDATA.OtherInfo
    .OtherInfo2 = BlankHOLDUSERDATA.OtherInfo2
    .OtherInfo3 = BlankHOLDUSERDATA.OtherInfo3
    .OtherInfo4 = BlankHOLDUSERDATA.OtherInfo4
End With

'''Call the function to add the record to the user data file
ReturnedValue = AddRecord(HOLDUSERDATA)

If ReturnedValue = 0 Then    'Username Already Present
    txt_newpassword.Text = ""
    txt_newpassword2.Text = ""
    txt_username.Text = ""
    txt_username.SetFocus
    
ElseIf ReturnedValue = 1 Then     'Username added
    MsgBox "The New Username and Password have been added", vbExclamation, "New User Added"
End If

If SwitchToMainForm = True Then
    SwitchToMainForm = False
    Decrypt HOLDUSERDATA.UserName
    LoggedIn = HOLDUSERDATA.UserName
    Unload Me
    Unload frm_passwordscreen
    frm_server.Show
    frm_server.SetFocus
    frm_server.UpdateUser
    
ElseIf SwitchToMainForm = False Then
    Unload Me
    frm_users.Refreshlist
    frm_users.Show
    frm_users.SetFocus
End If

End Sub

Private Sub Form_Load()

txt_username.Text = ""
txt_authorisation.Text = ""
txt_newpassword.Text = ""
txt_newpassword2.Text = ""
AuthorisationNeeded = False
SwitchToMainForm = False

'''If no user.dat file exists
If NewPasswordList = True Then
    NewPasswordList = False
    AuthorisationNeeded = True
    SwitchToMainForm = True
    txt_authorisation.Visible = True
    Label5.Visible = True
    Me.Height = 2340
    
'''If there is a user.dat file that contains data already
ElseIf NewPasswordList = False Then
    txt_authorisation.Visible = False
    Label5.Visible = False
    Me.Height = 1830
End If

End Sub
