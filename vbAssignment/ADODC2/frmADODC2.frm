VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5445
   ClientLeft      =   2340
   ClientTop       =   2655
   ClientWidth     =   5415
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5445
   ScaleWidth      =   5415
   Begin VB.Frame frameInsert 
      Caption         =   "Enter Student Information"
      Height          =   4695
      Left            =   240
      TabIndex        =   1
      Top             =   480
      Visible         =   0   'False
      Width           =   4935
      Begin VB.CommandButton cmdInsert 
         Caption         =   "Insert"
         Height          =   495
         Left            =   3600
         TabIndex        =   28
         Top             =   4080
         Width           =   1215
      End
      Begin VB.TextBox txtSRollIns 
         Height          =   495
         Left            =   1560
         Locked          =   -1  'True
         TabIndex        =   27
         Top             =   480
         Width           =   1455
      End
      Begin VB.TextBox txtSNameIns 
         Height          =   495
         Left            =   1560
         TabIndex        =   18
         Top             =   1200
         Width           =   1455
      End
      Begin VB.TextBox txtSM1Ins 
         Height          =   495
         Left            =   1560
         TabIndex        =   19
         Top             =   1920
         Width           =   1455
      End
      Begin VB.TextBox txtSM2Ins 
         Height          =   495
         Left            =   1560
         TabIndex        =   20
         Top             =   2640
         Width           =   1455
      End
      Begin VB.TextBox txtSM3Ins 
         Height          =   495
         Left            =   1560
         TabIndex        =   21
         Top             =   3360
         Width           =   1455
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "Roll Number"
         Height          =   195
         Left            =   240
         TabIndex        =   26
         Top             =   600
         Width           =   870
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "Name"
         Height          =   195
         Left            =   360
         TabIndex        =   25
         Top             =   1320
         Width           =   420
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Subject 1 Marks"
         Height          =   195
         Left            =   240
         TabIndex        =   24
         Top             =   2040
         Width           =   1155
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Subject 3 Marks"
         Height          =   195
         Left            =   240
         TabIndex        =   23
         Top             =   3480
         Width           =   1155
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Subject 2 Marks"
         Height          =   195
         Left            =   240
         TabIndex        =   22
         Top             =   2760
         Width           =   1155
      End
   End
   Begin VB.TextBox Text1 
      DataSource      =   "Adodc1"
      Height          =   285
      Left            =   -3720
      TabIndex        =   2
      Text            =   "Text1"
      Top             =   5280
      Visible         =   0   'False
      Width           =   150
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   615
      Left            =   -7320
      Top             =   4920
      Visible         =   0   'False
      Width           =   3495
      _ExtentX        =   6165
      _ExtentY        =   1085
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   2
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "DSN=sairam"
      OLEDBString     =   "DSN=sairam"
      OLEDBFile       =   ""
      DataSourceName  =   "bZkOracle"
      OtherAttributes =   ""
      UserName        =   "scott"
      Password        =   "tiger"
      RecordSource    =   "STUDENT_INFO"
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.Frame frameView 
      Caption         =   "Student Information"
      Height          =   4695
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   4935
      Begin VB.CommandButton cmdDelete 
         Caption         =   "Delete"
         Height          =   375
         Left            =   4080
         TabIndex        =   31
         Top             =   720
         Width           =   735
      End
      Begin VB.ComboBox cboSRoll 
         Height          =   315
         Left            =   1680
         TabIndex        =   8
         Top             =   600
         Width           =   1455
      End
      Begin VB.CommandButton cmdEdit 
         Caption         =   "Edit"
         Height          =   375
         Left            =   4080
         TabIndex        =   29
         Top             =   240
         Width           =   735
      End
      Begin VB.CommandButton cmdLast 
         Height          =   495
         Left            =   3240
         Picture         =   "frmADODC2.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   4080
         Width           =   615
      End
      Begin VB.CommandButton cmdFirst 
         Height          =   495
         Left            =   960
         Picture         =   "frmADODC2.frx":03A3
         Style           =   1  'Graphical
         TabIndex        =   16
         Top             =   4080
         Width           =   615
      End
      Begin VB.CommandButton cmdPrevious 
         Height          =   495
         Left            =   1680
         Picture         =   "frmADODC2.frx":076F
         Style           =   1  'Graphical
         TabIndex        =   15
         Top             =   4080
         Width           =   615
      End
      Begin VB.CommandButton cmdNext 
         Height          =   495
         Left            =   2520
         Picture         =   "frmADODC2.frx":0B1B
         Style           =   1  'Graphical
         TabIndex        =   14
         Top             =   4080
         Width           =   615
      End
      Begin VB.TextBox txtSM3 
         Height          =   495
         Left            =   1680
         TabIndex        =   12
         Top             =   3360
         Width           =   1455
      End
      Begin VB.TextBox txtSM2 
         Height          =   495
         Left            =   1680
         TabIndex        =   11
         Top             =   2640
         Width           =   1455
      End
      Begin VB.TextBox txtSM1 
         Height          =   495
         Left            =   1680
         TabIndex        =   10
         Top             =   1920
         Width           =   1455
      End
      Begin VB.TextBox txtSName 
         Height          =   495
         Left            =   1680
         TabIndex        =   9
         Top             =   1200
         Width           =   1455
      End
      Begin VB.TextBox txtSRoll 
         Height          =   495
         Left            =   1680
         TabIndex        =   30
         Top             =   480
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Subject 2 Marks"
         Height          =   195
         Left            =   240
         TabIndex        =   7
         Top             =   2760
         Width           =   1155
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Subject 3 Marks"
         Height          =   195
         Left            =   240
         TabIndex        =   6
         Top             =   3480
         Width           =   1155
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Subject 1 Marks"
         Height          =   195
         Left            =   240
         TabIndex        =   5
         Top             =   2040
         Width           =   1155
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Name"
         Height          =   195
         Left            =   240
         TabIndex        =   4
         Top             =   1320
         Width           =   420
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Roll Number"
         Height          =   195
         Left            =   240
         TabIndex        =   3
         Top             =   600
         Width           =   870
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5175
      Left            =   120
      TabIndex        =   13
      Top             =   120
      Width           =   5205
      _ExtentX        =   9181
      _ExtentY        =   9128
      _Version        =   393216
      Tabs            =   2
      TabHeight       =   520
      TabCaption(0)   =   "View Records"
      TabPicture(0)   =   "frmADODC2.frx":0EC8
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
      TabCaption(1)   =   "Insert Records"
      TabPicture(1)   =   "frmADODC2.frx":0EE4
      Tab(1).ControlEnabled=   0   'False
      Tab(1).ControlCount=   0
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim found As Boolean
Dim ans As Integer
Private Sub cboSRoll_Click()
found = False
Adodc1.Recordset.MoveFirst
Do While Adodc1.Recordset.EOF = False
    If cboSRoll.Text = Adodc1.Recordset.Fields("s_roll") Then
        Data_Show
        found = True
    End If
    If found = True Then
        Exit Do
    Else
        Adodc1.Recordset.MoveNext
    End If
Loop
End Sub

Private Sub cboSRoll_GotFocus()
    cbo_update
End Sub

Private Sub cmdDelete_Click()
Adodc1.Recordset.Delete adAffectCurrent
Adodc1.Recordset.Update
End Sub

Private Sub cmdEdit_Click()
If cmdEdit.Caption = "Edit" Then
    txtSRoll.Text = cboSRoll.Text
    cboSRoll.Visible = False
    txtSRoll.Visible = True
    
    cmdEdit.Caption = "Update"
    frameView.Caption = "Update Student Information"
ElseIf cmdEdit.Caption = "Update" Then
    
    Adodc1.Recordset.Fields("s_roll") = txtSRoll.Text
    Adodc1.Recordset.Fields("s_name") = txtSName.Text
    Adodc1.Recordset.Fields("s_m1") = txtSM1.Text
    Adodc1.Recordset.Fields("s_m2") = txtSM2.Text
    Adodc1.Recordset.Fields("s_m3") = txtSM3.Text
    
    Adodc1.Recordset.Update
    
    cbo_update
    txtSRoll.Visible = False
    cboSRoll.Visible = True
    cmdEdit.Caption = "Edit"
    frameView.Caption = "Student Information"
End If
End Sub

Private Sub cmdFirst_Click()
Adodc1.Recordset.MoveFirst
Data_Show
End Sub

Private Sub cmdInsert_Click()
    Adodc1.Recordset.AddNew
    
    Adodc1.Recordset.Fields("s_roll") = txtSRollIns.Text
    Adodc1.Recordset.Fields("s_name") = txtSNameIns.Text
    Adodc1.Recordset.Fields("s_m1") = txtSM1Ins.Text
    Adodc1.Recordset.Fields("s_m2") = txtSM2Ins.Text
    Adodc1.Recordset.Fields("s_m3") = txtSM3Ins.Text
    
    Adodc1.Recordset.Update
    
    txtSRollIns.Text = txtSRollIns.Text + 1
    txtSNameIns.Text = ""
    txtSNameIns.SetFocus
    txtSM1Ins.Text = ""
    txtSM2Ins.Text = ""
    txtSM3Ins.Text = ""
End Sub

Private Sub cmdLast_Click()
Adodc1.Recordset.MoveLast
Data_Show
End Sub

Private Sub cmdNext_Click()
Adodc1.Recordset.MoveNext
If Adodc1.Recordset.EOF = True Then
    Adodc1.Recordset.MoveLast
End If
Data_Show
End Sub

Private Sub cmdPrevious_Click()
Adodc1.Recordset.MovePrevious
If Adodc1.Recordset.BOF = True Then
    Adodc1.Recordset.MoveFirst
End If
Data_Show
End Sub


Private Sub SSTab1_Click(PreviousTab As Integer)
If SSTab1.Caption = "View Records" Then
   frameInsert.Visible = False
   frameView.Visible = True
ElseIf SSTab1.Caption = "Insert Records" Then
    frameView.Visible = False
    frameInsert.Visible = True
    Adodc1.Recordset.MoveLast
    txtSRollIns.Text = Adodc1.Recordset.Fields("s_roll") + 1
End If
End Sub

Public Sub Data_Show()
    cboSRoll.Text = Adodc1.Recordset.Fields("s_roll")
    txtSName.Text = Adodc1.Recordset.Fields("s_name")
    txtSM1.Text = Adodc1.Recordset.Fields("s_m1")
    txtSM2.Text = Adodc1.Recordset.Fields("s_m2")
    txtSM3.Text = Adodc1.Recordset.Fields("s_m3")
End Sub

Public Sub cbo_update()
cboSRoll.Clear
Adodc1.Recordset.MoveFirst
Do While Adodc1.Recordset.EOF = False
    cboSRoll.AddItem Adodc1.Recordset.Fields("s_roll")
    Adodc1.Recordset.MoveNext
Loop
End Sub
