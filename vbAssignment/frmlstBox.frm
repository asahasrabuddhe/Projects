VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4095
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7110
   LinkTopic       =   "Form1"
   ScaleHeight     =   4095
   ScaleWidth      =   7110
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdRemove 
      Caption         =   "Remove"
      Height          =   495
      Left            =   5160
      TabIndex        =   5
      Top             =   3360
      Width           =   1215
   End
   Begin VB.CommandButton cmdCount 
      Caption         =   "Count"
      Height          =   495
      Left            =   3600
      TabIndex        =   4
      Top             =   3360
      Width           =   1215
   End
   Begin VB.CommandButton cmdIndex 
      Caption         =   "List Index"
      Height          =   495
      Left            =   2040
      TabIndex        =   3
      Top             =   3360
      Width           =   1215
   End
   Begin VB.CommandButton cmdAddItem 
      Caption         =   "Add Item"
      Height          =   495
      Left            =   480
      TabIndex        =   2
      Top             =   3360
      Width           =   1215
   End
   Begin VB.ListBox lstEmpName 
      Height          =   2400
      Left            =   3600
      TabIndex        =   1
      Top             =   360
      Width           =   2775
   End
   Begin VB.ListBox lstEmpNo 
      Height          =   2400
      ItemData        =   "lstBox.frx":0000
      Left            =   480
      List            =   "lstBox.frx":0013
      TabIndex        =   0
      Top             =   360
      Width           =   2775
   End
   Begin VB.Label lblCount 
      AutoSize        =   -1  'True
      Height          =   195
      Left            =   5520
      TabIndex        =   7
      Top             =   2880
      Width           =   45
   End
   Begin VB.Label lblIndex 
      AutoSize        =   -1  'True
      Height          =   195
      Left            =   3960
      TabIndex        =   6
      Top             =   2880
      Width           =   45
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAddItem_Click()
lstEmpName.AddItem "Ashish"
lstEmpName.AddItem "Ram"
lstEmpName.AddItem "Rani"
lstEmpName.AddItem "Ashu"
End Sub

Private Sub cmdCount_Click()
lblCount.Caption = lstEmpName.ListCount
End Sub

Private Sub cmdIndex_Click()
lblIndex.Caption = lstEmpName.ListIndex
End Sub

Private Sub cmdRemove_Click()
lstEmpName.RemoveItem lstEmpName.ListIndex
End Sub
