VERSION 5.00
Begin VB.Form frm_passwordscreen 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Login"
   ClientHeight    =   3300
   ClientLeft      =   1140
   ClientTop       =   3660
   ClientWidth     =   5250
   ControlBox      =   0   'False
   Icon            =   "frm_passwordscreen.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3300
   ScaleWidth      =   5250
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   480
      Top             =   2880
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   35
      Left            =   0
      Top             =   2880
   End
   Begin VB.CommandButton cmd_cancel 
      Appearance      =   0  'Flat
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   4080
      TabIndex        =   3
      Top             =   2880
      Width           =   1095
   End
   Begin VB.CommandButton cmd_ok 
      Appearance      =   0  'Flat
      Caption         =   "&OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   2880
      TabIndex        =   2
      Top             =   2880
      Width           =   1095
   End
   Begin VB.TextBox txt_user 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   3000
      MaxLength       =   10
      TabIndex        =   0
      Top             =   1920
      Width           =   1695
   End
   Begin VB.TextBox txt_password 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      IMEMode         =   3  'DISABLE
      Left            =   3000
      MaxLength       =   10
      PasswordChar    =   "l"
      TabIndex        =   1
      Top             =   2400
      Width           =   1695
   End
   Begin VB.Label lbl_version 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "*Program Version*"
      ForeColor       =   &H8000000E&
      Height          =   195
      Left            =   120
      TabIndex        =   7
      Top             =   1200
      Width           =   1275
   End
   Begin VB.Image img_moving 
      Height          =   120
      Left            =   0
      Picture         =   "frm_passwordscreen.frx":0442
      Top             =   1455
      Width           =   3075
   End
   Begin VB.Image ing_back 
      Height          =   1590
      Left            =   0
      Picture         =   "frm_passwordscreen.frx":17C4
      Top             =   0
      Width           =   5250
   End
   Begin VB.Label lbl1 
      BackStyle       =   0  'Transparent
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   0
      TabIndex        =   6
      Top             =   3000
      Width           =   2775
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   " Please enter your Username:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   0
      TabIndex        =   5
      Top             =   1920
      Width           =   2895
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Please enter your Password: "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   2400
      Width           =   2775
   End
End
Attribute VB_Name = "frm_passwordscreen"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_ok_Click()

HoldRecordCount = RecordCount

'If there is no data in the Users.dat file
If HoldRecordCount = 0 Then
    If MsgBox("No Usernames are detected, would you like to input one?", vbYesNo, "Input New User?") = vbNo Then
        txt_password = ""
        txt_user.Text = ""
        txt_user.SetFocus
        Exit Sub
    Else:
        NewPasswordList = True
        frm_newpassword.Show 1
        Exit Sub
    End If
End If

'check for blank fields
If txt_user = "" Or txt_password.Text = "" Then
    MsgBox "Each field must contain data", vbCritical, "Error..."
    txt_user.SetFocus
    Exit Sub
End If
'''''''''Checks Completed

'Add data to Variable
With HOLDUSERDATA
    .UserName = LCase(Trim(txt_user.Text))
    .Password = LCase(Trim(txt_password.Text))
    '''.OtherInfo = ...
    '''etc...
End With

'''Call the function to check the record against the user data file
ReturnedValue = CheckRecord(HOLDUSERDATA)

If ReturnedValue = 0 Then   'Username & Password correct
    txt_user.Text = ""
    txt_password.Text = ""
    LoggedIn = HOLDUSERDATA.UserName
    Unload Me
    frm_server.Show
    frm_server.UpdateUser

ElseIf ReturnedValue = 1 Then
    MsgBox "The Password for the username " & Trim(UCase(HOLDUSERDATA.UserName)) & " is incorrect, please re-type.", _
    vbCritical, "Invalid Password for user: " & Trim(UCase(HOLDUSERDATA.UserName))
    txt_password.Text = ""
    txt_password.SetFocus
ElseIf ReturnedValue = 2 Then
    MsgBox "The username is invalid", vbCritical, "Invalid Username"
    txt_user.Text = ""
    txt_password.Text = ""
    txt_user.SetFocus
End If
    
End Sub

Private Sub cmd_cancel_Click()
Unload frm_server
Unload Me
End
End Sub

Private Sub Form_Load()
Filename = App.Path & "\Login.dat"
documentCount = 0

'''input program information onto the forms labels
lbl_version.caption = "v" & App.Major & "." & App.Minor & "." & App.Revision
'lbl_company.caption = App.CompanyName
'lbl_copyright.Move lbl_company.Left + lbl_company.Width, lbl_company.Top
'lbl_program.caption = App.ProductName
'img_logo.Picture = frm_passwordscreen.Icon

'''move the moving image to the start position and START it moving
img_moving.Left = -3075
Timer1.Enabled = True
End Sub


Private Sub Image1_Click()

End Sub

Private Sub Timer1_Timer()
img_moving.Left = img_moving.Left + 200
If img_moving.Left = 5125 Then
    img_moving.Left = -3075
    Timer1.Enabled = False
    Timer2.Enabled = True
End If
End Sub

Private Sub Timer2_Timer()
Timer1.Enabled = True
Timer2.Enabled = False
End Sub

Private Sub txt_Password_Change()
If Len(txt_password.Text) = 10 Then
    lbl1.caption = "Password must 10 characters or less"
ElseIf Len(txt_password.Text) < 10 Then
    lbl1.caption = ""
End If
End Sub

Private Sub txt_user_Change()
If Len(txt_user.Text) = 10 Then
    lbl1.caption = "Name must be 10 characters or less"
ElseIf Len(txt_user.Text) < 10 Then
    lbl1.caption = ""
End If
End Sub
