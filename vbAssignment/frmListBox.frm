VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4125
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6105
   LinkTopic       =   "Form1"
   ScaleHeight     =   4125
   ScaleWidth      =   6105
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdDelete 
      Caption         =   "Delete"
      Height          =   495
      Left            =   3480
      TabIndex        =   6
      Top             =   3360
      Width           =   1215
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "Add"
      Height          =   495
      Left            =   1440
      TabIndex        =   5
      Top             =   3360
      Width           =   1215
   End
   Begin VB.CommandButton cmdRight 
      Caption         =   ">>"
      Height          =   495
      Left            =   3480
      TabIndex        =   4
      Top             =   2640
      Width           =   1215
   End
   Begin VB.CommandButton cmdLeft 
      Caption         =   "<<"
      Height          =   495
      Left            =   1440
      TabIndex        =   3
      Top             =   2640
      Width           =   1215
   End
   Begin VB.ListBox List1 
      Height          =   2205
      Index           =   2
      Left            =   4200
      TabIndex        =   2
      Top             =   240
      Width           =   1695
   End
   Begin VB.ListBox List1 
      Height          =   2205
      Index           =   1
      Left            =   2160
      TabIndex        =   1
      Top             =   240
      Width           =   1695
   End
   Begin VB.ListBox List1 
      Height          =   2205
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim listno As Integer
Private Sub cmdAdd_Click()
listno = InputBox("Enter No of List to Add Items to")
If listno = 0 Or listno > 3 Then
    MsgBox "Enter Valid List Number !", vbExclamation + vbOKOnly
Else
    List1(listno - 1).AddItem "Ram"
    List1(listno - 1).AddItem "Rani"
    List1(listno - 1).AddItem "Ashish"
    List1(listno - 1).AddItem "Ritu"
    List1(listno - 1).AddItem "Shruti"
    List1(listno - 1).AddItem "Shyam"
End If
listno = 0
End Sub

Private Sub cmdDelete_Click()
List1(listno - 1).RemoveItem List1(listno - 1).ListIndex
End Sub


Private Sub cmdLeft_Click()
If listno = 0 Then
    MsgBox "Please Select Item to be Moved !", vbExclamation + vbOKOnly
Else
    If listno = 1 Then
        List1(2).AddItem List1(listno - 1).Text
        List1(listno - 1).RemoveItem List1(listno - 1).ListIndex
    Else
        List1(listno - 2).AddItem List1(listno - 1).Text
        List1(listno - 1).RemoveItem List1(listno - 1).ListIndex
    End If
End If
End Sub

Private Sub cmdRight_Click()
If listno = 0 Then
    MsgBox "Please Select Item to be Moved !", vbExclamation + vbOKOnly
Else
    If listno = 3 Then
        List1(0).AddItem List1(listno - 1).Text
        List1(listno - 1).RemoveItem List1(listno - 1).ListIndex
    Else
        List1(listno).AddItem List1(listno - 1).Text
        List1(listno - 1).RemoveItem List1(listno - 1).ListIndex
    End If
End If
End Sub

Private Sub List1_Click(Index As Integer)
Select Case Index
    Case 0:
        listno = Index + 1
    Case 1:
        listno = Index + 1
    Case 2:
        listno = Index + 1
End Select
End Sub
