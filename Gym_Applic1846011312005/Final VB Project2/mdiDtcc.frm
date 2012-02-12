VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm mdiDtcc 
   BackColor       =   &H8000000C&
   Caption         =   "DelTech Health & Fitness"
   ClientHeight    =   11085
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   18360
   Icon            =   "mdiDtcc.frx":0000
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer2 
      Left            =   8640
      Top             =   5280
   End
   Begin MSComctlLib.ImageList ilsPic 
      Left            =   0
      Top             =   480
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   3
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "mdiDtcc.frx":030A
            Key             =   "Members"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "mdiDtcc.frx":115E
            Key             =   "Employees"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "mdiDtcc.frx":1FB2
            Key             =   "Inventory"
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar tbrChoices 
      Align           =   1  'Align Top
      Height          =   420
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   18360
      _ExtentX        =   32385
      _ExtentY        =   741
      ButtonWidth     =   609
      ButtonHeight    =   582
      Appearance      =   1
      ImageList       =   "ilsPic"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   3
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Members"
            Object.ToolTipText     =   "Members"
            ImageKey        =   "Members"
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Employees"
            Object.ToolTipText     =   "Employees"
            ImageKey        =   "Employees"
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Inventory"
            Object.ToolTipText     =   "Inventory"
            ImageKey        =   "Inventory"
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.StatusBar sbr1 
      Align           =   2  'Align Bottom
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   10830
      Width           =   18360
      _ExtentX        =   32385
      _ExtentY        =   450
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   3
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Object.Width           =   28258
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "11-01-2012"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "17:48"
         EndProperty
      EndProperty
   End
   Begin MSComDlg.CommonDialog dlgCommonDialog 
      Left            =   0
      Top             =   480
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      NegotiatePosition=   1  'Left
      Begin VB.Menu mnuChUser 
         Caption         =   "Change User"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "&Exit"
      End
   End
   Begin VB.Menu mnuTools 
      Caption         =   "&Tools"
      Begin VB.Menu mnuMembers 
         Caption         =   "Members"
      End
      Begin VB.Menu mnuEmp 
         Caption         =   "Employees"
      End
      Begin VB.Menu mnuInv 
         Caption         =   "Inventory"
      End
   End
   Begin VB.Menu mnuWindow 
      Caption         =   "&Windows"
      WindowList      =   -1  'True
      Begin VB.Menu mnuThor 
         Caption         =   "Tile horizontally"
      End
      Begin VB.Menu mnuTvert 
         Caption         =   "Tile vertically"
      End
      Begin VB.Menu mnuCas 
         Caption         =   "Cascade"
      End
      Begin VB.Menu mnuIcons 
         Caption         =   "&ArrangeIcons"
      End
   End
   Begin VB.Menu mnuOn 
      Caption         =   "Sign &On"
      Begin VB.Menu mnuScreen 
         Caption         =   "Sign On Screen"
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuAbout 
         Caption         =   "About"
      End
   End
End
Attribute VB_Name = "mdiDtcc"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit



   


Private Sub MDIForm_Load()
    frmPassword.Top = mdiDtcc.ScaleHeight / 1.5
    frmPassword.Left = mdiDtcc.ScaleWidth / 3.3
End Sub

Private Sub mnuAbout_Click()
    frmAbout.Top = mdiDtcc.ScaleHeight / 5
    frmAbout.Left = mdiDtcc.ScaleWidth / 4
    frmAbout.Show
End Sub

Private Sub mnuCas_Click()
    mdiDtcc.Arrange vbCascade
End Sub

Private Sub mnuChUser_Click()
    Dim pstrUser As String
    pstrUser = MsgBox("Change User?", vbYesNo + vbQuestion)
    
    If pstrUser = vbYes Then
        CloseForms
        mnuOn.Visible = True
        frmPassword.Show
        frmPassword.Top = mdiDtcc.ScaleHeight / 4
        frmPassword.Left = mdiDtcc.ScaleWidth / 4
    End If
End Sub

Private Sub mnuEmp_Click()
    ToolCenter
    frmTools.Show
    frmTools.stb1.Tab = 1
End Sub

Private Sub mnuExit_Click()
    Unload Me
End Sub

Private Sub mnuIcons_Click()
    mdiDtcc.Arrange vbArrangeIcons
End Sub

Private Sub mnuInv_Click()
    ToolCenter
    frmTools.Show
    frmTools.stb1.Tab = 2
End Sub

Private Sub mnuMembers_Click()
    ToolCenter
    frmTools.Show
    frmTools.stb1.Tab = 0
End Sub

Private Sub mnuScreen_Click()
    frmPassword.Show
    frmPassword.Top = mdiDtcc.ScaleHeight / 4
    frmPassword.Left = mdiDtcc.ScaleWidth / 5
End Sub

Private Sub mnuThor_Click()
    mdiDtcc.Arrange vbTileHorizontal
End Sub

Private Sub mnuTvert_Click()
    mdiDtcc.Arrange vbTileVertical
End Sub

Private Sub tbrChoices_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
        Case "Members"
            ToolCenter
            frmTools.Show
            frmTools.stb1.Tab = 0
        Case "Employees"
            ToolCenter
            frmTools.Show
            frmTools.stb1.Tab = 1
        Case "Inventory"
            ToolCenter
            frmTools.Show
            frmTools.stb1.Tab = 2
    End Select
End Sub

Public Sub CloseForms()
    Unload frmAbout
    Unload frmAllPro
    Unload frmCal
    Unload frmGym
    Unload frmInventory
    Unload frmNewEmp
    Unload frmOrders
    Unload frmPayroll
    Unload frmProducts
    Unload frmReceipt
    Unload frmSchedule
    Unload frmTools
End Sub

Public Sub ToolCenter()
    If frmTools.WindowState <> vbMinimized Then
        frmTools.Top = mdiDtcc.ScaleHeight / 4
        frmTools.Left = mdiDtcc.ScaleWidth / 3
    End If
End Sub
