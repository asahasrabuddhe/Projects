VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Begin VB.Form frmAllMem 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "All Members"
   ClientHeight    =   6150
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7245
   Icon            =   "frmAllMem.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   6150
   ScaleWidth      =   7245
   Begin VB.Data datMem 
      Caption         =   "Data1"
      Connect         =   "Access 2000;"
      DatabaseName    =   ""
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   300
      Left            =   -120
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   ""
      Top             =   0
      Visible         =   0   'False
      Width           =   1215
   End
   Begin MSDBGrid.DBGrid dbgMem 
      Bindings        =   "frmAllMem.frx":030A
      Height          =   6135
      Left            =   0
      OleObjectBlob   =   "frmAllMem.frx":031F
      TabIndex        =   0
      Top             =   0
      Width           =   7215
   End
End
Attribute VB_Name = "frmAllMem"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    datMem.DatabaseName = App.Path & "/" & "Gym_Members.mdb"
    gstrAllMem = "SELECT * FROM tblMembers ORDER BY fldMemberID"
    datMem.RecordSource = gstrAllMem
End Sub
