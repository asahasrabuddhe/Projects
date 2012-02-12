VERSION 5.00
Begin VB.Form frmProducts 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Products"
   ClientHeight    =   4110
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7650
   Icon            =   "frmProducts.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   4110
   ScaleWidth      =   7650
   Begin VB.Frame fraBorder 
      Height          =   4035
      Left            =   60
      TabIndex        =   7
      Top             =   0
      Width           =   7515
      Begin VB.TextBox txtCasePrice 
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
         TabIndex        =   33
         TabStop         =   0   'False
         Top             =   2040
         Width           =   1935
      End
      Begin VB.TextBox txtCase 
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
         TabIndex        =   31
         TabStop         =   0   'False
         Top             =   960
         Width           =   1935
      End
      Begin VB.TextBox txtNCase 
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
         TabIndex        =   29
         TabStop         =   0   'False
         Top             =   1320
         Width           =   1935
      End
      Begin VB.CommandButton cmdExit 
         Caption         =   "Exit Products"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   5800
         Picture         =   "frmProducts.frx":030A
         TabIndex        =   6
         Top             =   3480
         Width           =   1635
      End
      Begin VB.CommandButton cmdChange 
         Caption         =   "Change Category"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4020
         Picture         =   "frmProducts.frx":074C
         TabIndex        =   5
         Top             =   3480
         Width           =   1635
      End
      Begin VB.CommandButton cmdView 
         Caption         =   "All Supplement"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         Picture         =   "frmProducts.frx":0B8E
         TabIndex        =   4
         Top             =   3480
         Width           =   1635
      End
      Begin VB.CommandButton cmdFirst 
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
         Left            =   120
         Picture         =   "frmProducts.frx":0FD0
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "First record"
         Top             =   3480
         Width           =   495
      End
      Begin VB.CommandButton cmdLast 
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
         Left            =   1680
         MaskColor       =   &H00FFFFFF&
         Picture         =   "frmProducts.frx":1412
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Last record"
         Top             =   3480
         Width           =   495
      End
      Begin VB.CommandButton cmdNext 
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
         Left            =   1200
         Picture         =   "frmProducts.frx":1854
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Next record"
         Top             =   3480
         Width           =   375
      End
      Begin VB.CommandButton cmdPrevious 
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
         Left            =   720
         Picture         =   "frmProducts.frx":1C96
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Previous record"
         Top             =   3480
         Width           =   375
      End
      Begin VB.TextBox txtCategory 
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
         TabIndex        =   28
         TabStop         =   0   'False
         Top             =   960
         Width           =   1935
      End
      Begin VB.TextBox txtODate 
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
         TabIndex        =   25
         TabStop         =   0   'False
         Top             =   2760
         Width           =   1935
      End
      Begin VB.TextBox txtSup 
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
         TabIndex        =   23
         TabStop         =   0   'False
         Top             =   2400
         Width           =   1935
      End
      Begin VB.TextBox txtIDate 
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
         TabIndex        =   20
         TabStop         =   0   'False
         Top             =   2760
         Width           =   1935
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
         Left            =   5460
         Locked          =   -1  'True
         TabIndex        =   19
         TabStop         =   0   'False
         Top             =   1680
         Width           =   1935
      End
      Begin VB.TextBox txtPrice 
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
         TabIndex        =   13
         TabStop         =   0   'False
         Top             =   2400
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
         TabIndex        =   12
         TabStop         =   0   'False
         Top             =   2040
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
         TabIndex        =   11
         TabStop         =   0   'False
         Top             =   1320
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
         TabIndex        =   10
         TabStop         =   0   'False
         Top             =   1680
         Width           =   1935
      End
      Begin VB.ComboBox cboCat 
         Height          =   315
         ItemData        =   "frmProducts.frx":20D8
         Left            =   1725
         List            =   "frmProducts.frx":20E5
         Style           =   2  'Dropdown List
         TabIndex        =   8
         Top             =   240
         Width           =   1935
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
         TabIndex        =   34
         Top             =   2040
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
         TabIndex        =   32
         Top             =   960
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
         TabIndex        =   30
         Top             =   1320
         Width           =   1575
      End
      Begin VB.Label lblCategory 
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
         TabIndex        =   27
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
         TabIndex        =   9
         Top             =   240
         Width           =   1575
      End
      Begin VB.Label lblODate 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Last Ordered:"
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
         TabIndex        =   26
         Top             =   2760
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
         TabIndex        =   24
         Top             =   2400
         Width           =   1575
      End
      Begin VB.Label lblIDate 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Last Inventory:"
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
         Top             =   2760
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
         TabIndex        =   21
         Top             =   1680
         Width           =   1575
      End
      Begin VB.Label lblProduct 
         Alignment       =   2  'Center
         Caption         =   "Products"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2160
         TabIndex        =   18
         Top             =   240
         Width           =   3255
      End
      Begin VB.Line lin1 
         BorderColor     =   &H00808080&
         BorderStyle     =   6  'Inside Solid
         Index           =   1
         X1              =   2280
         X2              =   5520
         Y1              =   720
         Y2              =   720
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
         TabIndex        =   17
         Top             =   2400
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
         Top             =   2040
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
         Top             =   1320
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
         Top             =   1680
         Width           =   1575
      End
      Begin VB.Line lin1 
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   2
         Index           =   0
         X1              =   2280
         X2              =   5520
         Y1              =   720
         Y2              =   720
      End
   End
End
Attribute VB_Name = "frmProducts"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim mdbPro As Database
Dim mrstPro As Recordset
Dim mstrCat As String

Private Sub cboCat_Click()
    mstrCat = cboCat.Text
    Set mdbPro = OpenDatabase(App.Path & "\Gym_Members.mdb")
    Set mrstPro = mdbPro.OpenRecordset("SELECT * FROM tblAllProducts WHERE fldCategory = '" & mstrCat & "' ORDER BY fldProduct_ID")
    mrstPro.MoveFirst
    ShowRecord
    lblCat.Visible = False
    cboCat.Visible = False
    lin1(0).Visible = True
    lin1(1).Visible = True
    lblProduct.Visible = True
    Me.Height = 4485
    Me.Width = 7740
    fraBorder.Height = 4035
    fraBorder.Width = 7515
    cmdView.Caption = "All " & cboCat.Text
End Sub

Private Sub cmdChange_Click()
    lblCat.Visible = True
    cboCat.Visible = True
    lin1(0).Visible = False
    lin1(1).Visible = False
    lblProduct.Visible = False
    Me.Height = 1200
    Me.Width = 4000
    fraBorder.Height = 735
    fraBorder.Width = 3795
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub cmdFirst_Click()
    mrstPro.MoveFirst
    ShowRecord
End Sub

Private Sub cmdLast_Click()
    mrstPro.MoveLast
    ShowRecord
End Sub

Private Sub cmdNext_Click()
    mrstPro.MoveNext
    If mrstPro.EOF Then mrstPro.MoveLast
    ShowRecord
End Sub

Private Sub cmdPrevious_Click()
    mrstPro.MovePrevious
    If mrstPro.BOF Then mrstPro.MoveFirst
    ShowRecord
End Sub

Public Sub ShowRecord()
    With mrstPro
        txtCategory = !fldCategory
        txtPid = !fldProduct_ID
        txtxDesr = !fldDescription
        txtBrand = !fldBrand
        txtSup = !fldSupplier
        txtODate = !fldOrder_date
        If !fldLast_Inventory <> "" Then txtIDate = !fldLast_Inventory Else txtIDate = ""
        txtCase = !fldCase
        txtNCase = !fldNCase
        txtQuantity = !fldQuantity
        txtCasePrice = Format(!fldCasePrice, "CURRENCY")
        txtPrice = Format(!fldSalePrice, "CURRENCY")
    End With
End Sub

Private Sub cmdView_Click()
    gstrProName = cboCat
    gstrAllProduct = "SELECT * FROM tblAllProducts WHERE fldCategory = '" & cboCat & "' ORDER BY fldBrand"
    If frmAllPro.WindowState <> vbMinimized Then
        frmAllPro.Top = mdiDtcc.ScaleHeight / 30
        frmAllPro.Left = mdiDtcc.ScaleWidth / 10
    End If
    frmAllPro.Show
End Sub

Private Sub Form_Load()
    lin1(0).Visible = False
    lin1(1).Visible = False
    lblProduct.Visible = False
    Me.Height = 1200
    Me.Width = 4000
    fraBorder.Height = 735
    fraBorder.Width = 3795
End Sub
