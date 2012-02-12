VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmTools 
   BackColor       =   &H0000FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Tools"
   ClientHeight    =   1920
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4695
   FillColor       =   &H0000FFFF&
   FillStyle       =   0  'Solid
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H0000FFFF&
   Icon            =   "frmTools.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   1920
   ScaleWidth      =   4695
   Begin TabDlg.SSTab stb1 
      Height          =   1935
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4725
      _ExtentX        =   8334
      _ExtentY        =   3413
      _Version        =   393216
      Tabs            =   4
      Tab             =   3
      TabsPerRow      =   4
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      BackColor       =   -2147483644
      TabCaption(0)   =   "Members"
      TabPicture(0)   =   "frmTools.frx":030A
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "cmdAllMem"
      Tab(0).Control(1)=   "cmdWorkouts"
      Tab(0).Control(2)=   "cmdMembers"
      Tab(0).ControlCount=   3
      TabCaption(1)   =   "Employees"
      TabPicture(1)   =   "frmTools.frx":0326
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "cmdEmployees"
      Tab(1).Control(1)=   "cmdSchedule"
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "Inventory"
      TabPicture(2)   =   "frmTools.frx":0342
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "cmdProducts"
      Tab(2).Control(1)=   "cmdOrder"
      Tab(2).Control(2)=   "cmdInvent"
      Tab(2).ControlCount=   3
      TabCaption(3)   =   "Reports"
      TabPicture(3)   =   "frmTools.frx":035E
      Tab(3).ControlEnabled=   -1  'True
      Tab(3).Control(0)=   "cmdMemberlist"
      Tab(3).Control(0).Enabled=   0   'False
      Tab(3).ControlCount=   1
      Begin VB.CommandButton cmdMemberlist 
         Caption         =   "Member List"
         Height          =   495
         Left            =   240
         TabIndex        =   9
         Top             =   480
         Width           =   1215
      End
      Begin VB.CommandButton cmdAllMem 
         Caption         =   "Members"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   -73200
         Picture         =   "frmTools.frx":037A
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Members Grid"
         Top             =   720
         Width           =   975
      End
      Begin VB.CommandButton cmdProducts 
         Caption         =   "Products"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   -71520
         Picture         =   "frmTools.frx":07BC
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Products"
         Top             =   720
         Width           =   975
      End
      Begin VB.CommandButton cmdOrder 
         Caption         =   "Orders"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   -73080
         Picture         =   "frmTools.frx":0BFE
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Orders"
         Top             =   720
         Width           =   975
      End
      Begin VB.CommandButton cmdEmployees 
         Caption         =   "Employees"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   -73080
         Picture         =   "frmTools.frx":1040
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Employees"
         Top             =   720
         Width           =   1035
      End
      Begin VB.CommandButton cmdWorkouts 
         Caption         =   "Receipts"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   -71520
         Picture         =   "frmTools.frx":1D0A
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Receipt Grid"
         Top             =   720
         Width           =   975
      End
      Begin VB.CommandButton cmdInvent 
         Caption         =   "Inventory"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   -74640
         Picture         =   "frmTools.frx":29D4
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Inventory"
         Top             =   720
         Width           =   975
      End
      Begin VB.CommandButton cmdSchedule 
         Caption         =   "Schedule"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   -74640
         Picture         =   "frmTools.frx":2CDE
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Schedule"
         Top             =   720
         Width           =   975
      End
      Begin VB.CommandButton cmdMembers 
         Caption         =   "Members"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   -74760
         Picture         =   "frmTools.frx":3120
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Members"
         Top             =   720
         Width           =   975
      End
   End
End
Attribute VB_Name = "frmTools"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset
    
Private Sub cmdAllMem_Click()
    If frmAllMem.WindowState <> vbMinimized Then
        frmAllMem.Top = mdiDtcc.ScaleHeight / 20
        frmAllMem.Left = mdiDtcc.ScaleWidth / 8
    End If
    frmAllMem.Show
End Sub

Private Sub cmdEmployees_Click()

    If gblnPriv = True Then
        If frmNewEmp.WindowState <> vbMinimized Then
            frmNewEmp.Top = mdiDtcc.ScaleHeight / 8
            frmNewEmp.Left = mdiDtcc.ScaleWidth / 8
        End If
        frmNewEmp.Show
    ElseIf gblnPriv = False Then
        MsgBox "Master Access Only!!!", vbOKOnly + vbInformation
    End If
    
End Sub

Private Sub cmdInvent_Click()
    If gblnPriv = True Then
        If frmInventory.WindowState <> vbMinimized Then
            frmInventory.Top = mdiDtcc.ScaleHeight / 5
            frmInventory.Left = mdiDtcc.ScaleWidth / 8
        End If
        frmInventory.Show
    ElseIf gblnPriv = False Then
        MsgBox "Master Access Only!!!", vbOKOnly + vbInformation
    End If
End Sub

Private Sub cmdMemberlist_Click()
    cn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\Gym_Members.mdb;Persist Security Info=False"
    rs.Open "SELECT tblMembers.fldLastName, tblMembers.fldFirstName, tblMembers.fldMemberShip, tblMembers.fldPhoneNumber, tblMembers.fldBalance, tblMembers.fldPayDue FROM tblMembers", cn, 3, 3
    Set rptMemberlist.DataSource = rs.DataSource
    rptMemberlist.Caption = "Gym Management System Memberlist"
    rptMemberlist.Sections("Section1").Controls("Text1").DataField = "fldFirstName"
    rptMemberlist.Sections("Section1").Controls("Text2").DataField = "fldPhoneNumber"
    rptMemberlist.Sections("Section1").Controls("Text3").DataField = "fldMemberShip"
    rptMemberlist.Sections("Section1").Controls("Text4").DataField = "fldBalance"
    rptMemberlist.Sections("Section1").Controls("Text5").DataField = "fldPayDue"
    rptMemberlist.Refresh
    rptMemberlist.Show
End Sub

Private Sub cmdMembers_Click()
    If frmGym.WindowState <> vbMinimized Then
        frmGym.Top = mdiDtcc.ScaleHeight / 20
        frmGym.Left = mdiDtcc.ScaleWidth / 8
    End If
    frmGym.Show
End Sub

Private Sub cmdOrder_Click()
    If gblnPriv = True Then
        If frmOrders.WindowState <> vbMinimized Then
            frmOrders.Top = mdiDtcc.ScaleHeight / 5
            frmOrders.Left = mdiDtcc.ScaleWidth / 8
        End If
        frmOrders.Show
    ElseIf gblnPriv = False Then
        MsgBox "Master Access Only!!!", vbOKOnly + vbInformation
    End If
End Sub

Private Sub cmdProducts_Click()
    If frmProducts.WindowState <> vbMinimized Then
        frmProducts.Top = mdiDtcc.ScaleHeight / 8
        frmProducts.Left = mdiDtcc.ScaleWidth / 8
    End If
    frmProducts.Show
End Sub

Private Sub cmdSchedule_Click()
    If frmSchedule.WindowState <> vbMinimized Then
        frmSchedule.Top = mdiDtcc.ScaleHeight / 70
        frmSchedule.Left = mdiDtcc.ScaleWidth / 10
    End If
    frmSchedule.Show
End Sub

Private Sub cmdWorkouts_Click()
    If frmAllRec.WindowState <> vbMinimized Then
        frmAllRec.Top = mdiDtcc.ScaleHeight / 40
        frmAllRec.Left = mdiDtcc.ScaleWidth / 10
    End If
    frmAllRec.Show
End Sub

