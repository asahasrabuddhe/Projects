VERSION 5.00
Begin VB.Form frmOrders 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Orders"
   ClientHeight    =   3000
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7635
   Icon            =   "frmOrders.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   3000
   ScaleWidth      =   7635
   Begin VB.Frame fraBorder 
      Height          =   2925
      Left            =   60
      TabIndex        =   19
      Top             =   0
      Width           =   7515
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
         Height          =   375
         Left            =   1440
         Picture         =   "frmOrders.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Previous record"
         Top             =   2060
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
         Height          =   375
         Left            =   1920
         Picture         =   "frmOrders.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Next record"
         Top             =   2060
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
         Height          =   375
         Left            =   2400
         MaskColor       =   &H00FFFFFF&
         Picture         =   "frmOrders.frx":0B8E
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Last record"
         Top             =   2060
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
         Height          =   375
         Left            =   840
         Picture         =   "frmOrders.frx":0FD0
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "First record"
         Top             =   2060
         Width           =   495
      End
      Begin VB.CommandButton cmdNew 
         Caption         =   "New Product"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1980
         TabIndex        =   15
         Top             =   2520
         Width           =   1705
      End
      Begin VB.CommandButton cmdExisting 
         Caption         =   "Existing Product"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3840
         TabIndex        =   16
         Top             =   2520
         Width           =   1705
      End
      Begin VB.TextBox txtDesr 
         Enabled         =   0   'False
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
         TabIndex        =   2
         Top             =   960
         Width           =   1935
      End
      Begin VB.TextBox txtPid 
         Enabled         =   0   'False
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
         TabIndex        =   1
         Top             =   600
         Width           =   1935
      End
      Begin VB.TextBox txtBrand 
         Enabled         =   0   'False
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
         TabIndex        =   3
         Top             =   1320
         Width           =   1935
      End
      Begin VB.TextBox txtPrice 
         Enabled         =   0   'False
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
         Left            =   5460
         Locked          =   -1  'True
         TabIndex        =   8
         Top             =   1680
         Width           =   1935
      End
      Begin VB.TextBox txtQuantity 
         Enabled         =   0   'False
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
         Left            =   5460
         Locked          =   -1  'True
         TabIndex        =   18
         TabStop         =   0   'False
         Top             =   960
         Width           =   1935
      End
      Begin VB.TextBox txtSup 
         Enabled         =   0   'False
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
         TabIndex        =   4
         Top             =   1680
         Width           =   1935
      End
      Begin VB.TextBox txtNCase 
         Enabled         =   0   'False
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
         Left            =   5460
         Locked          =   -1  'True
         TabIndex        =   6
         Top             =   600
         Width           =   1935
      End
      Begin VB.TextBox txtCase 
         Enabled         =   0   'False
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
         Left            =   5460
         Locked          =   -1  'True
         TabIndex        =   5
         Top             =   240
         Width           =   1935
      End
      Begin VB.TextBox txtCasePrice 
         Enabled         =   0   'False
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
         Left            =   5460
         Locked          =   -1  'True
         TabIndex        =   7
         Top             =   1320
         Width           =   1935
      End
      Begin VB.CommandButton cmdCancel 
         Caption         =   "Cancel Order"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   5685
         TabIndex        =   17
         Top             =   2520
         Width           =   1705
      End
      Begin VB.CommandButton cmdAdd 
         Caption         =   "Order Product"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   2520
         Width           =   1705
      End
      Begin VB.ComboBox cboCat 
         Enabled         =   0   'False
         Height          =   315
         ItemData        =   "frmOrders.frx":1412
         Left            =   1740
         List            =   "frmOrders.frx":141F
         Locked          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   0
         Top             =   240
         Width           =   1935
      End
      Begin VB.TextBox txtOrder 
         Enabled         =   0   'False
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
         Left            =   5460
         Locked          =   -1  'True
         TabIndex        =   9
         TabStop         =   0   'False
         Top             =   2040
         Width           =   1935
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
         TabIndex        =   30
         Top             =   960
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
         TabIndex        =   29
         Top             =   600
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
         TabIndex        =   28
         Top             =   1320
         Width           =   1575
      End
      Begin VB.Label lblPrice 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Sales Price:"
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
         Left            =   3840
         TabIndex        =   27
         Top             =   1680
         Width           =   1575
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
         Left            =   3840
         TabIndex        =   26
         Top             =   960
         Width           =   1575
      End
      Begin VB.Label lblSup 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Supplier:"
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
         TabIndex        =   25
         Top             =   1680
         Width           =   1575
      End
      Begin VB.Label lblNCase 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "# in Case:"
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
         Left            =   3840
         TabIndex        =   24
         Top             =   600
         Width           =   1575
      End
      Begin VB.Label lblCase 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "# of  Cases:"
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
         Left            =   3840
         TabIndex        =   23
         Top             =   240
         Width           =   1575
      End
      Begin VB.Label lblCasePrice 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Case Price:"
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
         Left            =   3840
         TabIndex        =   22
         Top             =   1320
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
         Left            =   135
         TabIndex        =   21
         Top             =   240
         Width           =   1575
      End
      Begin VB.Label lblDate 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Order Date:"
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
         Left            =   3840
         TabIndex        =   20
         Top             =   2040
         Width           =   1575
      End
   End
End
Attribute VB_Name = "frmOrders"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim mdbOrd As Database
Dim mrstOrd As Recordset
Dim mblnExist As Boolean

Private Sub cboCat_Click()
    If mblnExist = True Then
        txtCase.SetFocus
        cmdFirst.Enabled = True
        cmdPrevious.Enabled = True
        cmdNext.Enabled = True
        cmdLast.Enabled = True
        Set mrstOrd = mdbOrd.OpenRecordset("SELECT * FROM tblAllProducts WHERE fldCategory = '" & cboCat & "' ORDER BY fldProduct_ID")
        mrstOrd.MoveFirst
        ShowRecord
    End If
End Sub

Private Sub cboCat_LostFocus()
    If cboCat.ListIndex = -1 Then cboCat.SetFocus
End Sub

Private Sub cmdAdd_Click()
    CheckAll
    If gblnCK = False Then
        WriteRecord
        mrstOrd.Update
        MsgBox "Order was Completed", vbOKOnly + vbInformation
        Unload Me
    Else
        MsgBox "All Required!!!", vbOKOnly + vbInformation
    End If
End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdExisting_Click()
    mblnExist = True
    EditSet
    cboCat.Enabled = True
    txtPid.Enabled = True
    txtDesr.Enabled = True
    txtBrand.Enabled = True
    txtSup.Enabled = True
    txtCase.Enabled = True
    txtNCase.Enabled = True
    txtQuantity.Enabled = True
    txtCasePrice.Enabled = True
    txtPrice.Enabled = True
    txtOrder.Enabled = True
    cboCat.SetFocus
End Sub

Private Sub cmdNew_Click()
    mblnExist = False
    EditSet
    cboCat.Enabled = True
    txtPid.Enabled = True
    txtDesr.Enabled = True
    txtBrand.Enabled = True
    txtSup.Enabled = True
    txtCase.Enabled = True
    txtNCase.Enabled = True
    txtQuantity.Enabled = True
    txtCasePrice.Enabled = True
    txtPrice.Enabled = True
    txtOrder.Enabled = True
    cboCat.SetFocus
End Sub

Private Sub Form_Load()
    Set mdbOrd = OpenDatabase(App.Path & "\Gym_Members.mdb")
    Set mrstOrd = mdbOrd.OpenRecordset("tblAllProducts")
    txtOrder = Date
End Sub

Private Sub cmdFirst_Click()
    mrstOrd.MoveFirst
    ShowRecord
End Sub

Private Sub cmdLast_Click()
    mrstOrd.MoveLast
    ShowRecord
End Sub

Private Sub cmdNext_Click()
    mrstOrd.MoveNext
    If mrstOrd.EOF Then mrstOrd.MoveLast
    ShowRecord
End Sub

Private Sub cmdPrevious_Click()
    mrstOrd.MovePrevious
    If mrstOrd.BOF Then mrstOrd.MoveFirst
    ShowRecord
End Sub

Public Sub ShowRecord()
    With mrstOrd
        txtPid = !fldProduct_ID
        txtDesr = !fldDescription
        txtBrand = !fldBrand
        txtSup = !fldSupplier
        txtCasePrice = Format(!fldCasePrice, "CURRENCY")
        txtPrice = Format(!fldSalePrice, "CURRENCY")
    End With
End Sub

Public Sub EditSet()
    cmdAdd.Enabled = True
    If mblnExist = True Then
        ClearAll
        cboCat.Locked = False
        txtPid.Locked = True
        txtDesr.Locked = True
        txtBrand.Locked = True
        txtSup.Locked = True
        txtCase.Locked = False
        txtNCase.Locked = False
        txtCasePrice.Locked = False
        txtPrice.Locked = False
    Else
        ClearAll
        cboCat.Locked = False
        txtPid.Locked = False
        txtDesr.Locked = False
        txtBrand.Locked = False
        txtSup.Locked = False
        txtCase.Locked = False
        txtNCase.Locked = False
        txtCasePrice.Locked = False
        txtPrice.Locked = False
    End If
End Sub

Public Sub ClearAll()
    If mblnExist = False Then cboCat.ListIndex = -1
        txtPid = ""
        txtDesr = ""
        txtBrand = ""
        txtSup = ""
        txtCase = ""
        txtNCase = ""
        txtQuantity = ""
        txtCasePrice = ""
        txtPrice = ""
End Sub

Public Sub WriteRecord()
    With mrstOrd
        If mblnExist = True Then
            .Edit
            !fldCategory = cboCat
            !fldProduct_ID = txtPid
            !fldDescription = txtDesr
            !fldBrand = txtBrand
            !fldSupplier = txtSup
            !fldCase = txtCase + !fldCase
            !fldNCase = txtNCase
            !fldQuantity = txtQuantity + !fldQuantity
            !fldCasePrice = txtCasePrice
            !fldSalePrice = txtPrice
            !fldOrder_date = txtOrder
        Else
            .AddNew
            !fldCategory = cboCat
            !fldProduct_ID = txtPid
            !fldDescription = txtDesr
            !fldBrand = txtBrand
            !fldSupplier = txtSup
            !fldCase = txtCase
            !fldNCase = txtNCase
            !fldQuantity = txtQuantity
            !fldCasePrice = txtCasePrice
            !fldSalePrice = txtPrice
            !fldOrder_date = txtOrder
        End If
    End With
End Sub

Private Sub txtCase_Change()
    Dim pintC, pintNc As Integer
    If txtCase <> vbNullString Then pintC = txtCase
    If txtNCase <> vbNullString Then pintNc = txtNCase
    If txtCase <> vbNullString And txtNCase <> vbNullString Then
        txtQuantity = pintC * pintNc
    Else
        txtQuantity = 0
    End If
End Sub

Private Sub txtCase_KeyPress(KeyAscii As Integer)
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

Private Sub txtCasePrice_KeyPress(KeyAscii As Integer)
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

Private Sub txtNCase_Change()
    Dim pintC, pintNc As Integer
    pintC = txtCase
    If txtNCase <> vbNullString Then pintNc = txtNCase
    If txtCase <> vbNullString And txtNCase <> vbNullString Then
        txtQuantity = pintC * pintNc
    Else
        txtQuantity = 0
    End If
End Sub

Public Sub CheckAll()
    If txtPid = "" Or txtDesr = "" _
    Or txtBrand = "" Or txtSup = "" Or txtCase = "" _
    Or txtNCase = "" Or txtQuantity = "" Or txtCasePrice = "" _
    Or txtPrice = "" Then
        gblnCK = True
    End If
End Sub

Private Sub txtNCase_KeyPress(KeyAscii As Integer)
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

Private Sub txtPrice_KeyPress(KeyAscii As Integer)
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
