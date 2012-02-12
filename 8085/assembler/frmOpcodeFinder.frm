VERSION 5.00
Begin VB.Form frmOpcodeFinder 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Opcode Finder"
   ClientHeight    =   4815
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5685
   BeginProperty Font 
      Name            =   "Consolas"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmOpcodeFinder.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4815
   ScaleWidth      =   5685
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame frameOpcodeFinder 
      Caption         =   "Opcode Search Module"
      Height          =   2535
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   5415
      Begin VB.CommandButton cmdSearch 
         Caption         =   "Search !"
         Height          =   495
         Left            =   4080
         TabIndex        =   12
         Top             =   1920
         Width           =   1215
      End
      Begin VB.TextBox txtMnemonic 
         Height          =   285
         Left            =   1200
         TabIndex        =   11
         Top             =   450
         Width           =   1215
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Mnemonic :"
         Height          =   195
         Left            =   240
         TabIndex        =   6
         Top             =   480
         Width           =   900
      End
      Begin VB.Label Label2 
         Caption         =   $"frmOpcodeFinder.frx":D9A0
         Height          =   1215
         Left            =   120
         TabIndex        =   5
         Top             =   1200
         Width           =   3495
      End
   End
   Begin VB.ComboBox cboInstructions 
      Height          =   315
      Left            =   360
      TabIndex        =   1
      Top             =   3120
      Width           =   2055
   End
   Begin VB.Frame Frame1 
      Caption         =   "Results"
      Height          =   1935
      Left            =   120
      TabIndex        =   0
      Top             =   2760
      Width           =   5415
      Begin VB.Label lblTStates 
         AutoSize        =   -1  'True
         Caption         =   "-"
         Height          =   195
         Left            =   3480
         TabIndex        =   10
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label lblSize 
         AutoSize        =   -1  'True
         Caption         =   "-"
         Height          =   195
         Left            =   3480
         TabIndex        =   9
         Top             =   720
         Width           =   90
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "T-States:"
         Height          =   195
         Left            =   2640
         TabIndex        =   8
         Top             =   1080
         Width           =   810
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Size:"
         Height          =   195
         Left            =   3000
         TabIndex        =   7
         Top             =   720
         Width           =   450
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Hex Code:"
         Height          =   195
         Left            =   2640
         TabIndex        =   3
         Top             =   360
         Width           =   810
      End
      Begin VB.Label lblHexCode 
         AutoSize        =   -1  'True
         Caption         =   "-"
         Height          =   195
         Left            =   3480
         TabIndex        =   2
         Top             =   360
         Width           =   90
      End
   End
End
Attribute VB_Name = "frmOpcodeFinder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim Cn As New ADODB.Connection
Dim Rs As New ADODB.Recordset
Dim Path, Query As String

Private Sub cboInstructions_Click()
Rs.MoveFirst
Dim temp As Integer
temp = 0
Do While temp < cboInstructions.ListIndex
    Rs.MoveNext
    temp = temp + 1
Loop
lblHexCode.Caption = Rs.Fields(0)
lblSize.Caption = Rs.Fields(6) & " byte(s)"
lblTStates.Caption = Rs.Fields(5)
End Sub

Private Sub cmdSearch_Click()
lblHexCode.Caption = "-"
lblSize.Caption = "-"
lblTStates.Caption = "-"
cboInstructions.Clear
Path = App.Path & "\data.db"
Set Cn = New ADODB.Connection
Cn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Path & ";Persist Security Info=False"
Set Rs = New ADODB.Recordset
Query = "SELECT * FROM Mnemo where Mnemonic = '" & txtMnemonic.Text & "' ORDER BY Operand ASC, Op1 ASC, Mnemonic ASC"
Rs.Open Query, Cn, adOpenDynamic, adLockBatchOptimistic
Dim temp As String
If Rs.EOF = False Then
Do While Rs.EOF = False
    If Rs.Fields(2) = "-" Then
        cboInstructions.AddItem Rs.Fields(1)
    ElseIf IsNull(Rs.Fields(3)) Or Rs.Fields(3) = "-" Then
        cboInstructions.AddItem Rs.Fields(1) & " " & Rs.Fields(2)
    Else
        cboInstructions.AddItem Rs.Fields(1) & " " & Rs.Fields(2) & "," & Rs.Fields(3)
    End If
    Rs.MoveNext
Loop
cboInstructions.Text = "Search Successful"
Else
cboInstructions.Text = "Invalid Instruction"
End If
End Sub
