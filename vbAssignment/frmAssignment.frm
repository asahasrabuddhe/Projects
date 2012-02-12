VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2775
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4605
   LinkTopic       =   "Form1"
   ScaleHeight     =   2775
   ScaleWidth      =   4605
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdEq 
      Caption         =   "="
      Height          =   495
      Left            =   2520
      TabIndex        =   4
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton cmdPlus 
      Caption         =   "+"
      Height          =   495
      Left            =   840
      TabIndex        =   3
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton cmd2 
      Caption         =   "2"
      Height          =   495
      Left            =   2520
      TabIndex        =   2
      Top             =   1080
      Width           =   1215
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "1"
      Height          =   495
      Left            =   840
      TabIndex        =   1
      Top             =   1080
      Width           =   1215
   End
   Begin VB.TextBox txtCalc 
      Height          =   495
      Left            =   840
      TabIndex        =   0
      Top             =   240
      Width           =   2895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim temp As Integer
Private Sub cmd1_Click()
If temp = -1 Then
    txtCalc.Text = ""
    temp = 0
End If
txtCalc.Text = txtCalc.Text + cmd1.Caption

End Sub

Private Sub cmd2_Click()
If temp = -1 Then
    txtCalc.Text = ""
    temp = 0
End If
txtCalc.Text = txtCalc.Text + cmd2.Caption

End Sub

Private Sub cmdEq_Click()
txtCalc.Text = Val(txtCalc.Text) + temp
temp = -1
End Sub

Private Sub cmdPlus_Click()
temp = Val(txtCalc.Text)
txtCalc.Text = ""
End Sub
