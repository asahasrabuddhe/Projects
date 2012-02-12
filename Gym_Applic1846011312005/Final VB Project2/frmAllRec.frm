VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Begin VB.Form frmAllRec 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "All Receipts"
   ClientHeight    =   6705
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8430
   Icon            =   "frmAllRec.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   6705
   ScaleWidth      =   8430
   Begin VB.Data datRec 
      Caption         =   "Data1"
      Connect         =   "Access 2000;"
      DatabaseName    =   ""
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   300
      Left            =   3240
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   ""
      Top             =   2760
      Visible         =   0   'False
      Width           =   1140
   End
   Begin MSDBGrid.DBGrid dbgRec 
      Bindings        =   "frmAllRec.frx":030A
      Height          =   6615
      Left            =   0
      OleObjectBlob   =   "frmAllRec.frx":031F
      TabIndex        =   0
      Top             =   0
      Width           =   8415
   End
End
Attribute VB_Name = "frmAllRec"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    datRec.DatabaseName = App.Path & "/" & "Gym_Members.mdb"
    gstrAllRec = "SELECT * FROM tblReceipt ORDER BY fldMemberID_Rec"
    datRec.RecordSource = gstrAllRec
End Sub
