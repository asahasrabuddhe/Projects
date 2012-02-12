VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   1740
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4155
   LinkTopic       =   "Form1"
   ScaleHeight     =   1740
   ScaleWidth      =   4155
   StartUpPosition =   3  'Windows Default
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   600
      Top             =   2520
      Width           =   1575
      _ExtentX        =   2778
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
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\student.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\student.mdb;Persist Security Info=False"
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
   Begin VB.CommandButton cmdAdd 
      Caption         =   "Add"
      Height          =   495
      Left            =   2640
      TabIndex        =   6
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton cmdShow 
      Caption         =   "Show"
      Height          =   495
      Left            =   2640
      TabIndex        =   5
      Top             =   120
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   2400
      TabIndex        =   4
      Text            =   "Text3"
      Top             =   2520
      Width           =   495
   End
   Begin VB.TextBox txtsname 
      Height          =   495
      Left            =   1080
      TabIndex        =   3
      Top             =   840
      Width           =   1215
   End
   Begin VB.TextBox txtsroll 
      Height          =   495
      Left            =   1080
      TabIndex        =   2
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Name"
      Height          =   195
      Left            =   240
      TabIndex        =   1
      Top             =   960
      Width           =   420
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Roll No"
      Height          =   195
      Left            =   240
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
Private Sub cmdAdd_Click()
If cmdAdd.Caption = "Add" Then
    txtsroll.Text = ""
    txtsname.Text = ""
    
    cmdAdd.Caption = "Save"
ElseIf cmdAdd.Caption = "Save" Then
    Adodc1.Recordset.AddNew
    
    Adodc1.Recordset.Fields(0) = txtsroll.Text
    Adodc1.Recordset.Fields(1) = txtsname.Text
    Adodc1.Recordset.Update

    cmdAdd.Caption = "Add"
End If
End Sub

Private Sub cmdShow_Click()
txtsroll.Text = Adodc1.Recordset.Fields(0)
txtsname.Text = Adodc1.Recordset.Fields(1)
End Sub


Private Sub txtsroll_LostFocus()
Adodc1.Recordset.MoveFirst

Do While Adodc1.Recordset.EOF = False
    If txtsroll.Text = Adodc1.Recordset.Fields(0) Then
        MsgBox "Duplicate Field Name, Enter Valid Data", vbExclamation + vbOKOnly
        txtsroll.Text = ""
        txtsroll.SetFocus
    End If
    Adodc1.Recordset.MoveNext
Loop
End Sub
