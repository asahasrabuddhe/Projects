VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2280
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4020
   LinkTopic       =   "Form1"
   ScaleHeight     =   2280
   ScaleWidth      =   4020
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdFirst 
      Caption         =   "First"
      Height          =   495
      Left            =   120
      TabIndex        =   7
      Top             =   1680
      Width           =   855
   End
   Begin VB.CommandButton cmdNext 
      Caption         =   "Next"
      Height          =   495
      Left            =   2040
      TabIndex        =   6
      Top             =   1680
      Width           =   855
   End
   Begin VB.CommandButton cmdPrevious 
      Caption         =   "Previous"
      Height          =   495
      Left            =   1080
      TabIndex        =   5
      Top             =   1680
      Width           =   855
   End
   Begin VB.CommandButton cmdLast 
      Caption         =   "Last"
      Height          =   495
      Left            =   3000
      TabIndex        =   4
      Top             =   1680
      Width           =   855
   End
   Begin VB.TextBox txtName 
      DataField       =   "s_name"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   1200
      TabIndex        =   3
      Top             =   840
      Width           =   2295
   End
   Begin VB.TextBox txtRoll 
      DataField       =   "s_no"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   1200
      TabIndex        =   2
      Top             =   120
      Width           =   2295
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   960
      Top             =   2280
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   661
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
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\ajitem\studentinfo.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\ajitem\studentinfo.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "personal"
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
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Name"
      Height          =   195
      Left            =   600
      TabIndex        =   1
      Top             =   960
      Width           =   420
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Roll No"
      Height          =   195
      Left            =   480
      TabIndex        =   0
      Top             =   240
      Width           =   525
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdFirst_Click()
Adodc1.Recordset.MoveFirst
End Sub

Private Sub cmdLast_Click()
Adodc1.Recordset.MoveLast
End Sub

Private Sub cmdNext_Click()
Adodc1.Recordset.MoveNext
If Adodc1.Recordset.EOF = True Then
    Adodc1.Recordset.MoveLast
End If
End Sub

Private Sub cmdPrevious_Click()
Adodc1.Recordset.MovePrevious
If Adodc1.Recordset.BOF = True Then
    Adodc1.Recordset.MoveFirst
End If
End Sub
