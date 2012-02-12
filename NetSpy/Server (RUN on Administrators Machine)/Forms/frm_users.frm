VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frm_users 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "User Control"
   ClientHeight    =   3480
   ClientLeft      =   150
   ClientTop       =   540
   ClientWidth     =   2400
   Icon            =   "frm_users.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3480
   ScaleWidth      =   2400
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ImageList ILUsers 
      Left            =   1080
      Top             =   2760
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   20
      ImageHeight     =   25
      MaskColor       =   16777215
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   7
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_users.frx":000C
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_users.frx":0652
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_users.frx":0810
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_users.frx":09CE
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_users.frx":1014
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_users.frx":11D2
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_users.frx":1390
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ILMenu 
      Left            =   1680
      Top             =   2760
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   15
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   4
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_users.frx":154E
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_users.frx":1A90
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_users.frx":1FD2
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_users.frx":2514
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   525
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   2400
      _ExtentX        =   4233
      _ExtentY        =   926
      ButtonWidth     =   1005
      ButtonHeight    =   926
      Style           =   1
      ImageList       =   "ILMenu"
      DisabledImageList=   "ILMenu"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   6
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "New"
            Key             =   "add"
            Object.ToolTipText     =   "New User"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Delete"
            Key             =   "delete"
            Object.ToolTipText     =   "Delete Selected User"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Edit"
            Key             =   "edit"
            Object.ToolTipText     =   "Edit Selected User"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Reset"
            Key             =   "reset"
            Object.ToolTipText     =   "Reset All Users"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.Visible         =   0   'False
            Caption         =   "popup"
            Key             =   "popup"
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   2295
      Left            =   120
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   1080
      Width           =   2160
      _ExtentX        =   3810
      _ExtentY        =   4048
      View            =   2
      Arrange         =   2
      LabelEdit       =   1
      Sorted          =   -1  'True
      LabelWrap       =   0   'False
      HideSelection   =   0   'False
      OLEDragMode     =   1
      GridLines       =   -1  'True
      PictureAlignment=   4
      _Version        =   393217
      Icons           =   "ILUsers"
      SmallIcons      =   "ILUsers"
      ForeColor       =   -2147483640
      BackColor       =   16777215
      BorderStyle     =   1
      Appearance      =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      OLEDragMode     =   1
      NumItems        =   0
   End
   Begin VB.Shape Shape1 
      Height          =   2390
      Left            =   80
      Top             =   1030
      Width           =   2250
   End
   Begin VB.Label lbl_usercount 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "100 Users"
      Height          =   195
      Left            =   1365
      TabIndex        =   3
      Top             =   690
      Width           =   720
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Currently"
      Height          =   255
      Left            =   720
      TabIndex        =   2
      Top             =   690
      Width           =   735
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   230
      Picture         =   "frm_users.frx":2A56
      Top             =   555
      Width           =   480
   End
   Begin VB.Menu mnu_popup 
      Caption         =   "Popup"
      Visible         =   0   'False
      Begin VB.Menu mnu_popup_edit 
         Caption         =   "Edit User"
      End
      Begin VB.Menu mnu_popup_delete 
         Caption         =   "Delete User"
      End
      Begin VB.Menu mnu_popup_bar 
         Caption         =   "-"
      End
      Begin VB.Menu mnu_popup_icon 
         Caption         =   "Change Icon"
         Begin VB.Menu mnu_popup_icon_adult 
            Caption         =   "Adult (default)"
         End
         Begin VB.Menu mnu_popup_icon_child 
            Caption         =   "Child"
         End
         Begin VB.Menu mnu_popup_icon_bar 
            Caption         =   "-"
         End
         Begin VB.Menu mnu_popup_icon_male 
            Caption         =   "Male"
         End
         Begin VB.Menu mnu_popup_icon_female 
            Caption         =   "Female"
         End
         Begin VB.Menu mnu_popup_icon_bar2 
            Caption         =   "-"
         End
         Begin VB.Menu mnu_popup_icon_random 
            Caption         =   "Misc."
         End
      End
   End
End
Attribute VB_Name = "frm_users"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim holduser As String

Private Sub Listview1_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
If Button = 2 And ListView1.ListItems.Count <> 0 Then
    Me.PopupMenu mnu_popup
End If
End Sub

Private Sub Command5_Click()
Unload Me
End Sub

Private Sub Form_Load()
Refreshlist

'position the users form to the left of the Main form
Me.Left = frm_server.Left - Me.Width
Me.Top = frm_server.Top
End Sub


Public Sub Refreshlist()
Dim HoldUserName As String
Dim HoldIconString As String
Dim HoldIcon As Integer
Dim StoreIndex As Integer

ListView1.ListItems.Clear

HoldRecordCount = RecordCount

Open Filename For Random As #1 Len = UserDataLength

For i = 1 To HoldRecordCount
    HoldIcon = 1
    
    Get #1, i, HOLDUSERDATA
    Decrypt HOLDUSERDATA.UserName
    Decrypt HOLDUSERDATA.OtherInfo
    HoldUserName = Trim(HOLDUSERDATA.UserName)
    HoldIconString = Trim(HOLDUSERDATA.OtherInfo)
    If HoldIconString = BlankHOLDUSERDATA.OtherInfo Then
        HoldIcon = 1
    Else:
        HoldIcon = CInt(HoldIconString)
    End If
    ListView1.ListItems.Add i, LCase(HoldUserName), StrConv(HoldUserName, vbProperCase), _
    HoldIcon, HoldIcon
Next

Close #1

'Select the user that is currently logged in
For a = 1 To ListView1.ListItems.Count
    If ListView1.ListItems(a).Key = Trim(LCase(LoggedIn)) Then
        StoreIndex = a
        ListView1.ListItems(StoreIndex).Selected = True
        Exit For
    End If
Next

'set the number of users label
If HoldRecordCount = 1 Then
    lbl_usercount.caption = CStr(HoldRecordCount) & " User"
Else:
    lbl_usercount.caption = CStr(HoldRecordCount) & " Users"
End If
End Sub

Private Sub Form_Terminate()
Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
Unload Me
End Sub

Private Sub mnu_popup_delete_Click()
Call Toolbar1_ButtonClick(Toolbar1.Buttons("delete"))
End Sub

Private Sub mnu_popup_edit_Click()
Call Toolbar1_ButtonClick(Toolbar1.Buttons("edit"))
End Sub
Private Sub mnu_popup_icon_adult_Click()
ChangeIcon ("adult")
End Sub
Private Sub mnu_popup_icon_child_Click()
ChangeIcon ("child")
End Sub
Private Sub mnu_popup_icon_male_Click()
ChangeIcon ("male")
End Sub
Private Sub mnu_popup_icon_female_Click()
ChangeIcon ("female")
End Sub
Private Sub mnu_popup_icon_random_Click()
ChangeIcon ("random")
End Sub
Private Sub ChangeIcon(TypeofIcon As String)
'''This code is an example of how you can store data about the users settings into the users record
'''using the changerecord function in the login module. In this case I have used the "OtherInfo" slotDim RandomIcon As Integer
Dim TheUserName As String
Dim UserPlace As Integer
Dim IconChosen As Integer


Select Case TypeofIcon
    Case "adult"
        ListView1.SelectedItem.SmallIcon = 1
        IconChosen = 1
        
    Case "child"
        ListView1.SelectedItem.SmallIcon = 2
        IconChosen = 2
    
    Case "male"
        ListView1.SelectedItem.SmallIcon = 3
        IconChosen = 3
        
    Case "female"
        ListView1.SelectedItem.SmallIcon = 4
        IconChosen = 4
    
    Case "random"
        Randomize
        IconChosen = Int((Rnd * 3) + 5) 'one of the last 3 icons in the imagelist (fat, or redhat or greyhat)
        ListView1.SelectedItem.SmallIcon = IconChosen
        
End Select
TheUserName = ListView1.SelectedItem.Key

HoldRecordCount = RecordCount

Open Filename For Random As #1 Len = UserDataLength

UserPlace = 0
For a = 1 To HoldRecordCount
    Get #1, a, HOLDUSERDATA
    Decrypt HOLDUSERDATA.UserName
    If Trim(LCase(HOLDUSERDATA.UserName)) = LCase(TheUserName) Then
        UserPlace = a
        Exit For
    End If
Next
Close #1

'''Decrypt the rest of the variable so that when it is encrypted (in the changerecord function) it is not garbage
'''(The encrypted data being encrypted again = error! or useless information)
Decrypt HOLDUSERDATA.Password
HOLDUSERDATA.OtherInfo = CStr(IconChosen)

ChangeRecord HOLDUSERDATA, UserPlace

End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
Select Case Button.Key
    
    Case "add"
        'Check that the person using the program is the one who logged into it
        PasswordCheckCompleted = False
        
        frm_passcheck.Show 1
        If PasswordCheckCompleted = False Then
            Exit Sub
        Else:
            PasswordCheckCompleted = False
            frm_newpassword.Show 1
        End If
        
        Refreshlist
        
    Case "delete"
            'Check that the person using the program is the one who logged into it
            PasswordCheckCompleted = False
        
            frm_passcheck.Show 1
            If PasswordCheckCompleted = False Then
                Exit Sub
            Else:
                PasswordCheckCompleted = False
            End If
            
            Dim UserSelected As String
            
            If ListView1.SelectedItem.Index = "-1" Then
                result = MsgBox("You must select a user first", vbExclamation, "Select user to delete")
                Exit Sub
            End If
            
            UserSelected = ListView1.SelectedItem.Key
            
            If Trim(LCase(UserSelected)) = Trim(LCase(LoggedIn)) Then
                MsgBox "You cannot delete this user since this user is currently logged into the program", vbCritical, "Error..."
                Exit Sub
            End If
            
            If MsgBox("Are you sure you wish to delete the user " & holduser & "?", vbYesNo, "Are you sure?") = vbNo Then
                Exit Sub
            End If
            '''Checks completed
            
            ReturnedValue = DeleteRecord(UserSelected)
            
            If ReturnedValue = 0 Then   'Username does not exist (ERROR)
                MsgBox "Error, the username does not exist, the data file has been tampered with.", vbCritical, "Error..."
            ElseIf ReturnedValue = 1 Then   'Completed
                ListView1.ListItems.Remove (ListView1.SelectedItem.Index)
                Call Refreshlist
            End If
            
    Case "edit"
            If ListView1.SelectedItem.Index = "-1" Then
                MsgBox "You must select a user first", vbExclamation, "Select user to edit"
            Exit Sub
            End If

            UserNameBuffer = ListView1.SelectedItem.Key
            frm_useredit.caption = "Edit User - " & UserNameBuffer
            frm_useredit.txt_username.Text = UserNameBuffer
            frm_useredit.Show 1
            
    Case "reset"
    
        'Check that the person using the program is the one who logged into it
        PasswordCheckCompleted = False
        
        frm_passcheck.Show 1
        If PasswordCheckCompleted = False Then
            Exit Sub
        Else:
            PasswordCheckCompleted = False
        End If

        Beep
        If MsgBox(("WARNING..." & vbCrLf & vbCrLf & "This will delete all usernames stored by this program." & vbCrLf & _
        vbCrLf & "To be able to create a new user you will need yo know the Authorisation Password supplied with this software" & _
        vbCrLf & "Are you sure you want to continue?"), vbYesNo, "Warning...") = vbYes Then
            
            ResetUserList
            Unload Me
            Unload frm_useredit
            ResetAllUsers = True
            Unload frm_server
            frm_passwordscreen.txt_user.Text = ""
            frm_passwordscreen.txt_password.Text = ""
            frm_passwordscreen.Show 1
        
        Else:
            Exit Sub
        End If

End Select
           
End Sub
