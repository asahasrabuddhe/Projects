VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.TreeView TreeView1 
      Height          =   1815
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3015
      _ExtentX        =   5318
      _ExtentY        =   3201
      _Version        =   393217
      LineStyle       =   1
      Style           =   7
      Appearance      =   1
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
TreeView1.Nodes.Add , , "r1", "Master"

TreeView1.Nodes.Add "r1", tvwChild, "c1", "Show Form 2"
TreeView1.Nodes.Add "r1", tvwChild, "c2", "Show Form 3"

TreeView1.Nodes.Add "c2", tvwChild, "c21", "Show Form 4"

TreeView1.Nodes.Add "r1", tvwNext, "r2", "Sub-Master"
TreeView1.Nodes.Add "r2", tvwChild, "c3", "Show Form 5"
End Sub

Private Sub TreeView1_Click()
If TreeView1.SelectedItem.Key = "c1" Then
    Form2.Show
ElseIf TreeView1.SelectedItem.Key = "c2" Then
    Form3.Show
ElseIf TreeView1.SelectedItem.Key = "c21" Then
    Form4.Show
ElseIf TreeView1.SelectedItem.Key = "c3" Then
    Form5.Show
End If
End Sub
