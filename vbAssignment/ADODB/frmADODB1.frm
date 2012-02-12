VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Login"
   ClientHeight    =   2625
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4275
   LinkTopic       =   "Form1"
   ScaleHeight     =   2625
   ScaleWidth      =   4275
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdLogin 
      Caption         =   "Login !"
      Default         =   -1  'True
      Height          =   495
      Left            =   2880
      TabIndex        =   4
      Top             =   1920
      Width           =   1215
   End
   Begin VB.TextBox txtPassword 
      Height          =   495
      IMEMode         =   3  'DISABLE
      Left            =   1200
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   1200
      Width           =   1455
   End
   Begin VB.TextBox txtUsername 
      Height          =   495
      Left            =   1200
      TabIndex        =   2
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Password"
      Height          =   195
      Left            =   240
      TabIndex        =   1
      Top             =   1320
      Width           =   690
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Username"
      Height          =   195
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   720
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim login As Boolean
Dim cnt As Integer

Private Sub cmdLogin_Click()
rs.Open "Select * from user", con, adOpenDynamic, adLockBatchOptimistic
login = False
cnt = 0
Do While rs.EOF = False
    If txtUsername.Text = rs.Fields("username") And txtPassword.Text = rs.Fields("password") Then
        login = True
        Exit Do
    Else
        rs.MoveNext
    End If
Loop

If login = True Then
    MsgBox "Login Successful", vbInformation + vbOKOnly
    txtUsername.Text = ""
    txtPassword.Text = ""
    txtUsername.SetFocus
Else
    MsgBox "Login Unsuccessful, You have " & cnt & " attempt(s) left", vbCritical + vbOKOnly
    txtUsername.Text = ""
    txtPassword.Text = ""
    txtUsername.SetFocus
    cnt = cnt - 1
    If cnt = 0 Then
        End
    End If
End If
rs.Close
End Sub

Private Sub Form_Load()
con.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Documents and Settings\Sai Compusys\My Documents\login.mdb;Persist Security Info=False"
login = False
cnt = 3
End Sub

