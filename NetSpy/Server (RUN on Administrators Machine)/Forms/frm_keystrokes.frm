VERSION 5.00
Begin VB.Form frm_keystrokes 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Type keystrokes to send below"
   ClientHeight    =   2145
   ClientLeft      =   7200
   ClientTop       =   6540
   ClientWidth     =   4680
   Icon            =   "frm_keystrokes.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2145
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command3 
      Caption         =   "Send"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3360
      TabIndex        =   4
      TabStop         =   0   'False
      Top             =   1560
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Clear All"
      Height          =   375
      Left            =   1440
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   1560
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Delete last"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   1560
      Width           =   1215
   End
   Begin VB.TextBox text2 
      Appearance      =   0  'Flat
      Height          =   975
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   480
      Width           =   4455
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   120
      Width           =   4455
   End
End
Attribute VB_Name = "frm_keystrokes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim totalstring As String

Private Sub Command1_Click()
Dim lastbit As String

If Len(text2.Text) = 0 Then
    totalstring = ""
    GoTo continue
ElseIf Right(text2.Text, 1) = "}" Then
    text2.Text = Left(text2.Text, Len(text2.Text) - 6)
    totalstring = Left(totalstring, Len(totalstring) - (Len(totalstring) - (InStrRev(totalstring, ":")) + 1))
Else:
    text2.Text = Left(text2.Text, Len(text2.Text) - 1)
    totalstring = Left(totalstring, Len(totalstring) - (Len(totalstring) - (InStrRev(totalstring, ":")) + 1))
End If
continue:
DoEvents
Text1.SetFocus

End Sub

Private Sub Command2_Click()
text2.Text = ""
keyboardcommands = ""
DoEvents
Text1.SetFocus
End Sub

Private Sub Command3_Click()
continue = True
keyboardcommands = "keystr" & totalstring & ":"
Unload Me
End Sub

Private Sub Form_Load()
totalstring = ""
keyboardcommands = ""
End Sub

Private Sub Text1_Keydown(KeyCode As Integer, Shift As Integer)

Select Case KeyCode
    Case 8
        Text1.Text = Text1.Text & "{Back}"
    Case 13
        Text1.Text = Text1.Text & "{Retn}"
    Case 9
        Text1.Text = Text1.Text & "{Tab }"
        Call Text1_KeyUp(9, 0)
    'Case 16
    '    Text1.Text = Text1.Text & "{Shft}" '''Shift Key is used making other keys uppercase Etc.
    Case 20
      Text1.Text = Text1.Text & "{Caps}"
    Case 17
        Text1.Text = Text1.Text & "{Ctrl}"
    Case 18
        Text1.Text = Text1.Text & "{Alt }"
    Case 91
        Text1.Text = Text1.Text & "{LWin}"
    Case 92
        Text1.Text = Text1.Text & "{RWin}"
    Case 93
        Text1.Text = Text1.Text & "{RClk}"
    Case 145
        Text1.Text = Text1.Text & "{Scrl}"
    Case 93
        Text1.Text = Text1.Text & "{RClk}"
    Case 19
        Text1.Text = Text1.Text & "{Paus}"
    Case 45
        Text1.Text = Text1.Text & "{Inst}"
    Case 36
        Text1.Text = Text1.Text & "{Home}"
    Case 33
        Text1.Text = Text1.Text & "{PgUp}"
    Case 34
        Text1.Text = Text1.Text & "{PgDn}"
    Case 35
        Text1.Text = Text1.Text & "{End }"
    Case 46
        'Need 2 brackets here because 1 is deleted by pressing the del key!
        Text1.Text = Text1.Text & "{{Del }"
    Case 38
        Text1.Text = Text1.Text & "{ Up }"
    Case 40
        Text1.Text = Text1.Text & "{Down}"
    Case 37
        Text1.Text = Text1.Text & "{Left}"
    Case 39
        Text1.Text = Text1.Text & "{Rght}"
    Case 19
        Text1.Text = Text1.Text & "{NumL}"
    Case 112
        Text1.Text = Text1.Text & "{ F1 }"
    Case 113
        Text1.Text = Text1.Text & "{ F2 }"
    Case 114
        Text1.Text = Text1.Text & "{ F3 }"
    Case 115
        Text1.Text = Text1.Text & "{ F4 }"
    Case 116
        Text1.Text = Text1.Text & "{ F5 }"
    Case 117
        Text1.Text = Text1.Text & "{ F6 }"
    Case 118
        Text1.Text = Text1.Text & "{ F7 }"
    Case 119
        Text1.Text = Text1.Text & "{ F8 }"
    Case 120
        Text1.Text = Text1.Text & "{ F9 }"
    Case 121
        Text1.Text = Text1.Text & "{ F10 }"
    Case 122
        Text1.Text = Text1.Text & "{ F11 }"
    Case 123
        Text1.Text = Text1.Text & "{ F12 }"
End Select


End Sub

Private Sub Text1_KeyUp(KeyCode As Integer, Shift As Integer)
'dont want to add keycode(16) to the variable for the SHIFT key, need it to be invisible
If KeyCode = 16 Then GoTo carryon

If Shift = 1 Then
    totalstring = totalstring & ":" & "~" & (CStr(CByte(KeyCode)))
Else:
    totalstring = totalstring & ":" & (CStr(CByte(KeyCode)))
End If

'keyboardcommands = "keystr" & totalstring
carryon:
If KeyCode = 13 Then
text2.Text = text2.Text & "{Retn}"
Else:
text2.Text = text2.Text & Text1.Text
End If
DoEvents ' Needed for when TAB key is used
Text1.Text = ""
End Sub

Private Sub text2_Click()
DoEvents
Text1.SetFocus
End Sub



