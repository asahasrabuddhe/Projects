VERSION 5.00
Begin VB.Form frmInventory 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Inventory"
   ClientHeight    =   3285
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4080
   Icon            =   "frmInvetory.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   3285
   ScaleWidth      =   4080
   Begin VB.Frame fraBorder 
      Height          =   3195
      Left            =   120
      TabIndex        =   8
      Top             =   0
      Width           =   3855
      Begin VB.CommandButton cmdCancel 
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
         Left            =   3060
         Picture         =   "frmInvetory.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Cancel"
         Top             =   2520
         Width           =   495
      End
      Begin VB.CommandButton cmdUpdate 
         Enabled         =   0   'False
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
         Left            =   300
         Picture         =   "frmInvetory.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Update record"
         Top             =   2520
         Width           =   495
      End
      Begin VB.CommandButton cmdPrevious 
         Enabled         =   0   'False
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
         Left            =   1500
         Picture         =   "frmInvetory.frx":0B8E
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Previous record"
         Top             =   2520
         Width           =   375
      End
      Begin VB.CommandButton cmdNext 
         Enabled         =   0   'False
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
         Left            =   1980
         Picture         =   "frmInvetory.frx":0FD0
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next record"
         Top             =   2520
         Width           =   375
      End
      Begin VB.CommandButton cmdLast 
         Enabled         =   0   'False
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
         Left            =   2460
         MaskColor       =   &H00FFFFFF&
         Picture         =   "frmInvetory.frx":1412
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Last record"
         Top             =   2520
         Width           =   495
      End
      Begin VB.CommandButton cmdFirst 
         Enabled         =   0   'False
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
         Left            =   900
         Picture         =   "frmInvetory.frx":1854
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "First record"
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox txtQuantity 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   1740
         TabIndex        =   1
         Top             =   1680
         Width           =   1935
      End
      Begin VB.TextBox txtDate 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   1740
         Locked          =   -1  'True
         TabIndex        =   12
         TabStop         =   0   'False
         Top             =   2040
         Width           =   1935
      End
      Begin VB.TextBox txtBrand 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   1740
         Locked          =   -1  'True
         TabIndex        =   11
         TabStop         =   0   'False
         Top             =   1320
         Width           =   1935
      End
      Begin VB.TextBox txtPid 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   1740
         Locked          =   -1  'True
         TabIndex        =   10
         TabStop         =   0   'False
         Top             =   600
         Width           =   1935
      End
      Begin VB.TextBox txtxDesr 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   1740
         Locked          =   -1  'True
         TabIndex        =   9
         TabStop         =   0   'False
         Top             =   960
         Width           =   1935
      End
      Begin VB.ComboBox cboCat 
         Height          =   315
         ItemData        =   "frmInvetory.frx":1C96
         Left            =   1725
         List            =   "frmInvetory.frx":1CA3
         Style           =   2  'Dropdown List
         TabIndex        =   0
         Top             =   240
         Width           =   1935
      End
      Begin VB.Label lblQuantity 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Quantity:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   120
         TabIndex        =   18
         Top             =   1680
         Width           =   1575
      End
      Begin VB.Label lblDate 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Inventory Date:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   120
         TabIndex        =   17
         Top             =   2040
         Width           =   1575
      End
      Begin VB.Label lblBrand 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Brand:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   120
         TabIndex        =   16
         Top             =   1320
         Width           =   1575
      End
      Begin VB.Label lblId 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Product ID:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   120
         TabIndex        =   15
         Top             =   600
         Width           =   1575
      End
      Begin VB.Label lblDesc 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Desciption:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   120
         TabIndex        =   14
         Top             =   960
         Width           =   1575
      End
      Begin VB.Label lblCat 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Category:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   120
         TabIndex        =   13
         Top             =   240
         Width           =   1575
      End
   End
End
Attribute VB_Name = "frmInventory"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim mdbInv As Database
Dim mrstInv As Recordset
Dim mstrCat As String

Private Sub cboCat_Click()
    mstrCat = cboCat.Text
    Set mdbInv = OpenDatabase(App.Path & "\Gym_Members.mdb")
    Set mrstInv = mdbInv.OpenRecordset("SELECT * FROM tblAllProducts WHERE fldCategory = '" & mstrCat & "' ORDER BY fldProduct_ID")
    mrstInv.MoveFirst
    ShowRecord
    txtQuantity.SetFocus
    cmdUpdate.Enabled = True
    cmdFirst.Enabled = True
    cmdPrevious.Enabled = True
    cmdNext.Enabled = True
    cmdLast.Enabled = True
End Sub

Public Sub ShowRecord()
    With mrstInv
        txtPid = !fldProduct_ID
        txtxDesr = !fldDescription
        txtBrand = !fldBrand
    End With
End Sub

Private Sub cboCat_LostFocus()
    If cboCat.ListIndex = -1 Then cboCat.SetFocus
End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdFirst_Click()
    mrstInv.MoveFirst
    ShowRecord
    txtQuantity.SetFocus
End Sub

Private Sub cmdLast_Click()
    mrstInv.MoveLast
    ShowRecord
    txtQuantity.SetFocus
End Sub

Private Sub cmdNext_Click()
    mrstInv.MoveNext
    If mrstInv.EOF Then mrstInv.MoveLast
    ShowRecord
    txtQuantity.SetFocus
End Sub

Private Sub cmdPrevious_Click()
    mrstInv.MovePrevious
    If mrstInv.BOF Then mrstInv.MoveFirst
    ShowRecord
    txtQuantity.SetFocus
End Sub

Private Sub cmdUpdate_Click()
    If txtQuantity <> "" Then
        With mrstInv
            .Edit
            !fldQuantity = txtQuantity
            !fldLast_Inventory = txtDate
            .Update
            MsgBox "Inventory Updated", vbOKOnly + vbInformation
            Unload Me
        End With
    Else
        MsgBox "Quantity Required!!!", vbOKOnly + vbInformation
        txtQuantity.SetFocus
    End If
End Sub

Private Sub Form_Load()
    txtDate = Date
End Sub

Private Sub txtQuantity_KeyPress(KeyAscii As Integer)
    If KeyAscii < Asc("0") Or KeyAscii > Asc("9") Then
        If KeyAscii = 13 Then
            KeyAscii = 0
            SendKeys vbTab
        ElseIf KeyAscii = Asc(vbBack) Then
              'fine...
        Else
            KeyAscii = 0
        End If
    End If
End Sub
