VERSION 5.00
Begin VB.Form frmAbout 
   Caption         =   "About 8085 Assembler"
   ClientHeight    =   3030
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6330
   Icon            =   "frmAbout.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   6330
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label1 
      Caption         =   $"frmAbout.frx":D9A0
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   2160
      TabIndex        =   0
      Top             =   840
      Width           =   3855
   End
   Begin VB.Image Image1 
      Height          =   1035
      Left            =   480
      Picture         =   "frmAbout.frx":DA49
      Stretch         =   -1  'True
      Top             =   840
      Width           =   1455
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

