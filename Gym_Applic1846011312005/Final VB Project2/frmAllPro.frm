VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Begin VB.Form frmAllPro 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Product Grid"
   ClientHeight    =   4380
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8550
   Icon            =   "frmAllPro.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   4380
   ScaleWidth      =   8550
   Begin VB.Data datPro 
      Caption         =   "Data1"
      Connect         =   "Access 2000;"
      DatabaseName    =   ""
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   345
      Left            =   1560
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   ""
      Top             =   1800
      Visible         =   0   'False
      Width           =   1215
   End
   Begin MSDBGrid.DBGrid dbgProduct 
      Bindings        =   "frmAllPro.frx":030A
      Height          =   4335
      Left            =   0
      OleObjectBlob   =   "frmAllPro.frx":031F
      TabIndex        =   0
      Top             =   0
      Width           =   8535
   End
End
Attribute VB_Name = "frmAllPro"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    datPro.DatabaseName = App.Path & "/" & "Gym_Members.mdb"
    dbgProduct.Caption = gstrProName
    datPro.RecordSource = gstrAllProduct
End Sub
