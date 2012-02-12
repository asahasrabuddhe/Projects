VERSION 5.00
Begin VB.Form frmSplash 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   0  'None
   ClientHeight    =   3180
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7200
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmSplash.frx":0000
   ScaleHeight     =   3180
   ScaleWidth      =   7200
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrCount 
      Interval        =   1
      Left            =   0
      Top             =   0
   End
   Begin VB.Label lblCount 
      BackStyle       =   0  'Transparent
      Caption         =   "(0%)..."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   2040
      TabIndex        =   1
      Top             =   2880
      Width           =   735
   End
   Begin VB.Label lblInform 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Loading"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   960
      TabIndex        =   0
      Top             =   2880
      Width           =   1095
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim mintCount As Integer, mintPause As Integer

Private Sub Form_Load()
Dim X(2) As pointapi
Dim lRegion As Long
Dim lRegion1 As Long
Dim lRegion2 As Long
Dim lResult As Long

    
    Screen.MousePointer = vbHourglass
    frmSplash.Width = 500 * Screen.TwipsPerPixelX
    frmSplash.Height = 500 * Screen.TwipsPerPixelY

    lRegion = CreatePolygonRgn(X(0), 3, alternate)

    lRegion1 = CreatePolygonRgn(X(0), 3, alternate)
    lRegion2 = CreateRoundRectRgn(0, 0, 480, 213, 50, 50)
    lResult = CombineRgn(lRegion, lRegion1, lRegion2, rgn_or)
    DeleteObject lRegion1
    DeleteObject lRegion2
    lResult = SetWindowRgn(frmSplash.hWnd, lRegion, True)

End Sub

Private Sub Form_Unload(Cancel As Integer)
    Screen.MousePointer = vbDefault
End Sub

Private Sub tmrCount_Timer()

    mintPause = mintPause + 1
    
    If mintCount < 50 Then
        mintCount = mintCount + 1
        lblCount.Caption = "(" & mintCount & "%)..."
         frmSplash.Refresh
    ElseIf mintCount < 100 Then
        mintCount = mintCount + 2
        lblCount.Caption = "(" & mintCount & "%)..."
        frmSplash.Refresh
    End If
    
    If mintPause = 101 Then
        lblCount.Caption = "App..."
        lblInform.Caption = "Starting"
    ElseIf mintPause > 150 Then
        Unload Me
        frmPassword.Show
        mdiDtcc.Show
    End If
    
End Sub
