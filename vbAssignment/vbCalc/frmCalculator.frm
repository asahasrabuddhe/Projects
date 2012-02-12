VERSION 5.00
Begin VB.Form frmCalculator 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Calculator"
   ClientHeight    =   3510
   ClientLeft      =   7935
   ClientTop       =   3270
   ClientWidth     =   5205
   ForeColor       =   &H00000000&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3510
   ScaleWidth      =   5205
   Begin VB.CommandButton cmdCalc 
      Caption         =   "MC"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   26
      Left            =   120
      TabIndex        =   28
      Top             =   1320
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "MR"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   25
      Left            =   120
      TabIndex        =   27
      Top             =   1860
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "MS"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   24
      Left            =   120
      TabIndex        =   26
      Top             =   2400
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "M+"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   23
      Left            =   120
      TabIndex        =   25
      Top             =   2940
      Width           =   765
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00C0C0C0&
      Enabled         =   0   'False
      Height          =   495
      Left            =   120
      TabIndex        =   24
      Top             =   720
      Width           =   495
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "="
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   22
      Left            =   4380
      TabIndex        =   23
      Top             =   2940
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   21
      Left            =   3540
      TabIndex        =   22
      Top             =   2940
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   20
      Left            =   2700
      TabIndex        =   21
      Top             =   2940
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "+/-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   19
      Left            =   1860
      TabIndex        =   20
      Top             =   2940
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   18
      Left            =   1020
      TabIndex        =   19
      Top             =   2940
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "1/x"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   17
      Left            =   4380
      TabIndex        =   18
      Top             =   2400
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   16
      Left            =   3540
      TabIndex        =   17
      Top             =   2400
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   15
      Left            =   2700
      TabIndex        =   16
      Top             =   2400
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   14
      Left            =   1860
      TabIndex        =   15
      Top             =   2400
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   13
      Left            =   1020
      TabIndex        =   14
      Top             =   2400
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "%"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   12
      Left            =   4380
      TabIndex        =   13
      Top             =   1860
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   11
      Left            =   3540
      TabIndex        =   12
      Top             =   1860
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "6"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   10
      Left            =   2700
      TabIndex        =   11
      Top             =   1860
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "5"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   9
      Left            =   1860
      TabIndex        =   10
      Top             =   1860
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "4"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   8
      Left            =   1020
      TabIndex        =   9
      Top             =   1860
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "sqrt"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   7
      Left            =   4380
      TabIndex        =   8
      Top             =   1320
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "/"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   6
      Left            =   3540
      TabIndex        =   7
      Top             =   1320
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "9"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   5
      Left            =   2700
      TabIndex        =   6
      Top             =   1320
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "8"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   4
      Left            =   1860
      TabIndex        =   5
      Top             =   1320
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "7"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   3
      Left            =   1020
      TabIndex        =   4
      Top             =   1320
      Width           =   765
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "C"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   2
      Left            =   3840
      TabIndex        =   3
      Top             =   720
      Width           =   1315
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "CE"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   2400
      TabIndex        =   2
      Top             =   720
      Width           =   1315
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "Backspace"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   960
      TabIndex        =   1
      Top             =   720
      Width           =   1315
   End
   Begin VB.Label lblDisplay 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   180
      TabIndex        =   0
      Top             =   180
      Width           =   4875
   End
End
Attribute VB_Name = "frmCalculator"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private mdblResult           As Double
Private mdblSavedNumber      As Double
Private mstrDot              As String
Private mstrOp               As String
Private mstrDisplay          As String
Private mblnDecEntered       As Boolean
Private mblnOpPending        As Boolean
Private mblnNewEquals        As Boolean
Private mblnEqualsPressed    As Boolean
Private mintCurrKeyIndex    As Integer

Private Sub Form_Load()

    Top = (Screen.Height - Height) / 2
    Left = (Screen.Width - Width) / 2

End Sub

Private Sub cmdCalc_Click(Index As Integer)

    Dim strPressedKey   As String
    
    mintCurrKeyIndex = Index
    
    If mstrDisplay = "ERROR" Then
        mstrDisplay = ""
    End If
    
    strPressedKey = cmdCalc(Index).Caption
    
    Select Case strPressedKey
        Case "0", "1", "2", "3", "4", _
             "5", "6", "7", "8", "9"
            If mblnOpPending Then
                mstrDisplay = ""
                mblnOpPending = False
            End If
            If mblnEqualsPressed Then
                mstrDisplay = ""
                mblnEqualsPressed = False
            End If
            mstrDisplay = mstrDisplay & strPressedKey
        Case "."
            If mblnOpPending Then
                mstrDisplay = ""
                mblnOpPending = False
            End If
            If mblnEqualsPressed Then
                mstrDisplay = ""
                mblnEqualsPressed = False
            End If
            If InStr(mstrDisplay, ".") > 0 Then
                
            Else
                mstrDisplay = mstrDisplay & strPressedKey
            End If
        Case "+", "-", "X", "/"
            mdblResult = Val(mstrDisplay)
            mstrOp = strPressedKey
            mblnOpPending = True
            mblnDecEntered = False
            mblnNewEquals = True
        Case "%"
            mdblSavedNumber = (Val(mstrDisplay) / 100) * mdblResult
            mstrDisplay = mdblSavedNumber
        Case "="
            If mblnNewEquals Then
                mdblSavedNumber = Val(mstrDisplay)
                mblnNewEquals = False
            End If
            Select Case mstrOp
                Case "+"
                    mdblResult = mdblResult + mdblSavedNumber
                Case "-"
                    mdblResult = mdblResult - mdblSavedNumber
                Case "X"
                    mdblResult = mdblResult * mdblSavedNumber
                Case "/"
                    If mdblSavedNumber = 0 Then
                        mstrDisplay = "ERROR"
                    Else
                        mdblResult = mdblResult / mdblSavedNumber
                    End If
                Case Else
                    mdblResult = Val(mstrDisplay)
            End Select
            If mstrDisplay <> "ERROR" Then
                mstrDisplay = mdblResult
            End If
            mblnEqualsPressed = True
        Case "+/-"
            
        Case "Backspace"
            
        Case "CE"
            mstrDisplay = ""
        Case "C"
            mstrDisplay = ""
            mdblResult = 0
            mdblSavedNumber = 0
        Case "1/x"
            If Val(mstrDisplay) = 0 Then
                mstrDisplay = "ERROR"
            Else
                mdblResult = Val(mstrDisplay)
                mdblResult = 1 / mdblResult
                mstrDisplay = mdblResult
            End If
        Case "sqrt"
            If Val(mstrDisplay) < 0 Then
                mstrDisplay = "ERROR"
            Else
                mdblResult = Val(mstrDisplay)
                mdblResult = Sqr(mdblResult)
                mstrDisplay = mdblResult
            End If
    End Select
        If mstrDisplay = "" Then
        lblDisplay = "0."
    Else
        If InStr(mstrDisplay, ".") > 0 Then
            mstrDot = ""
        Else
            mstrDot = "."
        End If
        lblDisplay = mstrDisplay & mstrDot
    
    If lblDisplay = "." Then lblDisplay = "0."
    
    End If
    
End Sub
