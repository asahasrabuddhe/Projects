VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmCal 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Calander"
   ClientHeight    =   4890
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5685
   Icon            =   "frmCal.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   4890
   ScaleWidth      =   5685
   Begin MSComCtl2.MonthView mtvCal 
      Height          =   4770
      Left            =   60
      TabIndex        =   0
      Top             =   60
      Width           =   5565
      _ExtentX        =   9816
      _ExtentY        =   8414
      _Version        =   393216
      ForeColor       =   -2147483646
      BackColor       =   -2147483625
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MonthBackColor  =   -2147483624
      MultiSelect     =   -1  'True
      StartOfWeek     =   165281793
      TitleBackColor  =   12632256
      TitleForeColor  =   32768
      CurrentDate     =   38377
   End
End
Attribute VB_Name = "frmCal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    mtvCal.Value = Date
End Sub
