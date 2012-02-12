VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFlxGrd.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frm8085_Sim 
   Appearance      =   0  'Flat
   BorderStyle     =   1  'Fixed Single
   Caption         =   "8085 Assembler 1.4.0.3"
   ClientHeight    =   6570
   ClientLeft      =   1470
   ClientTop       =   3570
   ClientWidth     =   10035
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frm8085_Sim.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6570
   ScaleWidth      =   10035
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   855
      Left            =   3360
      TabIndex        =   7
      Top             =   2520
      Visible         =   0   'False
      Width           =   3015
      _ExtentX        =   5318
      _ExtentY        =   1508
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   0
      Scrolling       =   1
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   6195
      Width           =   10035
      _ExtentX        =   17701
      _ExtentY        =   661
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   7
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Bevel           =   0
            Object.Width           =   6950
            MinWidth        =   6950
            Text            =   "Designed by Ajitem Sahasrabuddhe"
            TextSave        =   "Designed by Ajitem Sahasrabuddhe"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Bevel           =   0
            Object.Width           =   776
            MinWidth        =   776
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Bevel           =   0
            Object.Width           =   776
            MinWidth        =   776
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Bevel           =   0
         EndProperty
         BeginProperty Panel5 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Bevel           =   0
         EndProperty
         BeginProperty Panel6 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Alignment       =   1
            TextSave        =   "6/24/2011"
            Object.ToolTipText     =   "Current System Date"
         EndProperty
         BeginProperty Panel7 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "7:17 AM"
            Object.ToolTipText     =   "Current System Time"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Frame frmInfo 
      Caption         =   "Information"
      Height          =   855
      Left            =   120
      TabIndex        =   2
      Top             =   5280
      Width           =   9840
      Begin VB.Label lblTStates 
         AutoSize        =   -1  'True
         Height          =   195
         Left            =   8880
         TabIndex        =   6
         Top             =   480
         Width           =   90
      End
      Begin VB.Label lblBytes 
         AutoSize        =   -1  'True
         Height          =   195
         Left            =   6960
         TabIndex        =   5
         Top             =   480
         Width           =   90
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Total T-States:"
         Height          =   210
         Left            =   7800
         TabIndex        =   4
         Top             =   480
         Width           =   1050
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Memory Consumed:"
         Height          =   195
         Left            =   5520
         TabIndex        =   3
         Top             =   480
         Width           =   1440
      End
   End
   Begin MSComDlg.CommonDialog ComnDlgOpen 
      Left            =   3840
      Top             =   6360
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrdAssemble 
      Height          =   5175
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   10020
      _ExtentX        =   17674
      _ExtentY        =   9128
      _Version        =   393216
      FixedRows       =   0
      FixedCols       =   0
      BackColor       =   -2147483644
      ForeColor       =   128
      BackColorBkg    =   -2147483633
      WordWrap        =   -1  'True
      AllowBigSelection=   -1  'True
      ScrollTrack     =   -1  'True
      FocusRect       =   2
      GridLines       =   2
      AllowUserResizing=   1
      BorderStyle     =   0
      Appearance      =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Menu mFile 
      Caption         =   "&File"
      Index           =   1
      Begin VB.Menu mOpen 
         Caption         =   "&Open"
         Index           =   1
         Shortcut        =   ^O
      End
      Begin VB.Menu mSave 
         Caption         =   "&Save"
         Index           =   2
         Shortcut        =   ^S
      End
      Begin VB.Menu mExit 
         Caption         =   "E&xit"
         Index           =   3
      End
   End
   Begin VB.Menu mSettings 
      Caption         =   "&Settings"
      Index           =   2
   End
   Begin VB.Menu mHelp 
      Caption         =   "&Help"
      Index           =   3
      Begin VB.Menu mAbout 
         Caption         =   "&About 8085 Assembler"
         Index           =   1
      End
   End
End
Attribute VB_Name = "frm8085_Sim"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim FSO As FileSystemObject
Dim Label As String, Mnemo As String, Op1 As String, _
Op2 As String, Comment As String, OP_CODE As String, _
FN As String, ASM_Flag As Boolean
Dim Flx_Row As Integer, Flx_Col As Integer, Mem_Space As Integer, Memory(65535) As Integer, Path As String
Dim prgAddr As String, noofbytes, tstates As Integer

Private Sub Assemble()
Dim Flx_Row As Integer, Flx_Col As Integer
Dim i As Integer
Dim Str As String, tmp_Str As String, bytes As String

For Flx_Row = 1 To Me.MSFlexGrdAssemble.Rows - 1
    Me.MSFlexGrdAssemble.Row = Flx_Row
    'get length of instruction
    Me.MSFlexGrdAssemble.Col = 4
    bytes = Me.MSFlexGrdAssemble.Text
    'get mnemonic of instruction
    Me.MSFlexGrdAssemble.Col = 3
    Str = Me.MSFlexGrdAssemble.Text
    
     If (InStr(1, UCase(Str), "CALL") Or _
       InStr(1, UCase(Str), "CNZ") Or _
       InStr(1, UCase(Str), "CZ") Or _
       InStr(1, UCase(Str), "CNC") Or _
       InStr(1, UCase(Str), "CC") Or _
       InStr(1, UCase(Str), "CPE") Or _
       InStr(1, UCase(Str), "CPO") Or _
       InStr(1, UCase(Str), "CM") Or _
       InStr(1, UCase(Str), "CP") Or _
       InStr(1, UCase(Str), "JMP") Or _
       InStr(1, UCase(Str), "JNZ") Or _
       InStr(1, UCase(Str), "JZ") Or _
       InStr(1, UCase(Str), "JNC") Or _
       InStr(1, UCase(Str), "JC") Or _
       InStr(1, UCase(Str), "JPE") Or _
       InStr(1, UCase(Str), "JPO") Or _
       InStr(1, UCase(Str), "JM") Or _
       InStr(1, UCase(Str), "JP")) And _
       bytes = "3" Then
       
       Str = Mid(Str, InStr(1, Str, " ") + 1, Len(Str)) & ":"
       
       For i = 1 To Me.MSFlexGrdAssemble.Rows
            Me.MSFlexGrdAssemble.Row = i
            Me.MSFlexGrdAssemble.Col = 2
            
            If UCase(Me.MSFlexGrdAssemble.Text) = UCase(Str) Then
                Me.MSFlexGrdAssemble.Row = i
                Me.MSFlexGrdAssemble.Col = 0
                tmp_Str = Me.MSFlexGrdAssemble.Text
                'Lower Order Byte
                Me.MSFlexGrdAssemble.Row = Flx_Row + 1
                Me.MSFlexGrdAssemble.Col = 1
                Me.MSFlexGrdAssemble.Text = Right(tmp_Str, 2)
                'Higher Order Byte
                Me.MSFlexGrdAssemble.Row = Flx_Row + 2
                Me.MSFlexGrdAssemble.Col = 1
                Me.MSFlexGrdAssemble.Text = Left(tmp_Str, 2)
                Exit For
            End If
       Next
    End If
Next

ProgressBar1.Value = 90
ProgressBar1.Refresh

noofbytes = 0
For i = 1 To Me.MSFlexGrdAssemble.Rows - 1
    Me.MSFlexGrdAssemble.Row = i
    Me.MSFlexGrdAssemble.Col = 4
    If Me.MSFlexGrdAssemble.Text <> "" Then
        noofbytes = noofbytes + val(Me.MSFlexGrdAssemble.Text)
    End If
    Me.MSFlexGrdAssemble.Col = 6
        If Me.MSFlexGrdAssemble.Text <> "" Then
        tstates = tstates + val(Me.MSFlexGrdAssemble.Text)
    End If
Next i
ProgressBar1.Value = 100
ProgressBar1.Refresh

ProgressBar1.Visible = False
MSFlexGrdAssemble.Visible = True
lblBytes.Caption = noofbytes & " Bytes"
lblTStates.Caption = tstates

Flx_Row = 0
End Sub

Private Sub Set_FLX_GRD()

Dim Row_Header(8) As String * 20, i As Byte
Row_Header(1) = "Memory Address": Row_Header(2) = "OpCode"
Row_Header(3) = "Label": Row_Header(4) = "Mnemonics"
Row_Header(5) = "Bytes": Row_Header(6) = "Machine Cycle"
Row_Header(7) = "T-States": Row_Header(8) = "Comments"
With MSFlexGrdAssemble
    .Cols = 8
    .Rows = 2
    .FixedCols = 0
    .FixedRows = 1
    .Row = 0
    For i = 0 To 7
        .Col = i
        .Text = Row_Header(i + 1)
    Next
End With

End Sub

Private Sub mAbout_Click(Index As Integer)
frmAbout.Show
End Sub

Private Sub mExit_Click(Index As Integer)
End
End Sub

Private Sub mOpen_Click(Index As Integer)
MSFlexGrdAssemble.Visible = False
Dim Cn As ADODB.Connection, Rs As ADODB.Recordset
Dim line As String * 80, Ret_Str As String, Rec_Found As Boolean
Dim objFile As File, objTxtStream As TextStream
Dim ad As Long
Dim da As Integer
Dim i As Integer, j  As Integer
Dim s As String, SQL_Str As String

prgAddr = getAddr

Me.MSFlexGrdAssemble.Clear
Set_FLX_GRD
On Error GoTo ShowErr
Set Cn = New ADODB.Connection
Cn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Path & ";Persist Security Info=False"
Set Rs = New ADODB.Recordset

'Get the Program Address
If Len(prgAddr) < 4 Then
    Exit Sub
End If
ad = Hex2Dec(prgAddr, 4)
s = UCase(Hex(ad))
For i = 1 To 4 - Len(s) Step 1
    s = "0" + s
Next i

'FlexGrd Row and Col.
Flx_Row = 1
Flx_Col = 0
If ASM_Flag = False Then
    ComnDlgOpen.ShowOpen
    line = ComnDlgOpen.fileName
    FN = line
End If
ProgressBar1.Visible = True
If Len(Trim(line)) = 0 Then Exit Sub
'Set objFile = FSO.GetFile(FN)
Set objTxtStream = FSO.OpenTextFile(FN, ForReading)

ProgressBar1.Value = 20
ProgressBar1.Refresh

Do While Not objTxtStream.AtEndOfStream
    line = objTxtStream.ReadLine
    Fill_MSFlxGrd line
    
    If Len(Mnemo) > 0 Then
        If Me.MSFlexGrdAssemble.Rows <= Flx_Row Then
           Me.MSFlexGrdAssemble.Rows = Flx_Row + 2
        End If

        'Address Column header
        Me.MSFlexGrdAssemble.Row = Flx_Row
        Me.MSFlexGrdAssemble.Col = 0
        Me.MSFlexGrdAssemble.Text = s

        'Set the MSFlexGRDAssemble
        'Label
        Me.MSFlexGrdAssemble.Row = Flx_Row
        Me.MSFlexGrdAssemble.Col = 2
        If Len(Label) > 0 And Label <> " " Then
            Me.MSFlexGrdAssemble.Text = Trim(Label) & ":"
        End If

        'Mnemonic
        Me.MSFlexGrdAssemble.Row = Flx_Row
        Me.MSFlexGrdAssemble.Col = 3
        If Len(Mnemo) > 0 Then
            Me.MSFlexGrdAssemble.Text = Trim(Mnemo)
        End If

        'Op1
        Me.MSFlexGrdAssemble.Row = Flx_Row
        Me.MSFlexGrdAssemble.Col = 3
        If Len(Op1) > 0 Then
            Me.MSFlexGrdAssemble.Text = Me.MSFlexGrdAssemble.Text & " " & Trim(Op1)
        End If

        'Op2
        Me.MSFlexGrdAssemble.Row = Flx_Row
        Me.MSFlexGrdAssemble.Col = 3
        If Len(Op2) > 0 Then
            Me.MSFlexGrdAssemble.Text = Me.MSFlexGrdAssemble.Text & ", " & Trim(Op2)
        End If
        
        ProgressBar1.Value = 30
        ProgressBar1.Refresh
        
        'Find the Op-Code from the Database.
        With Rs
            .CursorType = adOpenStatic
            .LockType = adLockReadOnly
            'This is the 3 byte instruction, thus memory space is 3.
            If UCase(Mnemo) = "JMP" Or _
               UCase(Mnemo) = "JNZ" Or _
               UCase(Mnemo) = "JNC" Or _
               UCase(Mnemo) = "JC" Or _
               UCase(Mnemo) = "JZ" Or _
               UCase(Mnemo) = "JPO" Or _
               UCase(Mnemo) = "JPE" Or _
               UCase(Mnemo) = "JP" Or _
               UCase(Mnemo) = "JM" Or _
               UCase(Mnemo) = "CNZ" Or _
               UCase(Mnemo) = "CZ" Or _
               UCase(Mnemo) = "CALL" Or _
               UCase(Mnemo) = "CNC" Or _
               UCase(Mnemo) = "CC" Or _
               UCase(Mnemo) = "CPO" Or _
               UCase(Mnemo) = "CPE" Or _
               UCase(Mnemo) = "CP" Or _
               UCase(Mnemo) = "CM" Then

               SQL_Str = "SELECT * FROM Mnemo WHERE Mnemonic LIKE '" & Trim(Mnemo) & _
                "' "
               Rs.Open SQL_Str, Cn, , , adCmdText
               Mem_Space = 3
            'This is the 2 byte instruction but no operand.
            ElseIf UCase(Mnemo) = "ANI" Or _
                   UCase(Mnemo) = "ADI" Or _
                   UCase(Mnemo) = "ACI" Or _
                   UCase(Mnemo) = "SUI" Or _
                   UCase(Mnemo) = "SBI" Or _
                   UCase(Mnemo) = "XRI" Or _
                   UCase(Mnemo) = "ORI" Or _
                   UCase(Mnemo) = "OUT" Or _
                   UCase(Mnemo) = "IN" Or _
                   UCase(Mnemo) = "CPI" Then
               SQL_Str = "SELECT * FROM Mnemo WHERE Mnemonic LIKE '" & Trim(Mnemo) & _
                "' "
               Rs.Open SQL_Str, Cn, , , adCmdText
               Op2 = Left(Op1, 2)
               Mem_Space = 2
            ElseIf Len(Mnemo) > 0 And Len(Op1) > 0 And Len(Op2) > 0 Then
                If Len(Op2) >= 4 Then
                    SQL_Str = "SELECT * FROM Mnemo WHERE Mnemonic LIKE '" & Trim(Mnemo) & _
                    "' AND Operand LIKE '" & Trim(Op1) & "' "

                    Rs.Open SQL_Str, Cn, , , adCmdText
                    If Len(Op2) >= 4 Then
                        Op2 = Left(Op2, 4)
                    End If
                    Mem_Space = 3
                    'e.g. LXI H, 0000H
                ElseIf Len(Op2) >= 2 Then
                    Rs.Open "SELECT * FROM Mnemo WHERE Mnemonic LIKE '" & Trim(Mnemo) & _
                    "' AND Operand LIKE '" & Trim(Op1) & "' AND LEN(Op1) > 1", Cn, , , adCmdText
                    If Len(Op2) >= 2 Then
                        Op2 = Left(Op2, 2)
                    End If
                    Mem_Space = 2
                    'e.g. MVI A, 00H
                ElseIf Len(Op2) = 1 Then
                    'e.g. MOV A, B
                    Rs.Open "SELECT * FROM Mnemo WHERE Mnemonic LIKE '" & Mnemo & _
                    "' AND Operand LIKE '" & Op1 & "' AND Op1 LIKE '" & Op2 & "'", Cn, , , adCmdText
                    Mem_Space = 1
                End If
            ElseIf Len(Op1) >= 4 Then
                Rs.Open "SELECT * FROM Mnemo WHERE Mnemonic LIKE '" & Mnemo & _
                "' ", Cn, , , adCmdText
                Op1 = Left(Op1, 4)
                Mem_Space = 3
            ElseIf Len(Op1) >= 1 Then
                Rs.Open "SELECT * FROM Mnemo WHERE Mnemonic LIKE '" & Mnemo & _
                "' AND Operand LIKE '" & Trim(Op1) & "' ", Cn, , , adCmdText
                Mem_Space = 1
            Else
                If Len(Mnemo) > 0 Then _
                Rs.Open "SELECT * FROM Mnemo WHERE Mnemonic LIKE '" & Mnemo & _
                "' ", Cn, , , adCmdText

                Mem_Space = 1
            End If
            If .State = adStateOpen Then
                If .RecordCount > 0 Then
                    Rec_Found = True
                End If
            End If
        If Rec_Found = False Then
            MsgBox "Program Incorrect! (Instruction not Found.)" & vbCrLf & "Unable to fetch the Mnemonics:-> " & vbCrLf & Mnemo & " " & Op1 & ", " & Op2, vbCritical + vbOKOnly, "Error...."
            Exit Sub
        End If
        'Comment
        Me.MSFlexGrdAssemble.Row = Flx_Row
        Me.MSFlexGrdAssemble.Col = 7
        If Len(Comment) > 0 Then
            Me.MSFlexGrdAssemble.Text = Trim(Comment)
        End If
        
        ProgressBar1.Value = 50
        ProgressBar1.Refresh
        
        If Mem_Space >= 3 And Rec_Found = True Then
            'Opcode/ Hex
            'Address Column header
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 0
            Me.MSFlexGrdAssemble.Text = s
            'Op Code
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 1
            Me.MSFlexGrdAssemble.CellAlignment = 4
            Me.MSFlexGrdAssemble.Text = .Fields(0)

            'Byte
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 4
            Me.MSFlexGrdAssemble.Text = .Fields(6)
            'Machine Cycle
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 5
            Me.MSFlexGrdAssemble.Text = .Fields(4)
            'T-State
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 6
            Me.MSFlexGrdAssemble.Text = .Fields(5)

            da = Memory(ad)
            Memory(ad) = da
            ad = ad + 1

            If (ad > 65535) Then
                ad = 0
            End If
            s = UCase(Hex(ad))
            For i = 1 To 4 - Len(s) Step 1
                s = "0" + s
            Next i
            Flx_Row = Flx_Row + 1
            If Me.MSFlexGrdAssemble.Rows <= Flx_Row Then Me.MSFlexGrdAssemble.Rows = Flx_Row + 1
            'Address Column header
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 0
            Me.MSFlexGrdAssemble.Text = s
            'Mem Addr. Lower Order Byte
            If Me.MSFlexGrdAssemble.Rows <= Flx_Row Then Me.MSFlexGrdAssemble.Rows = Flx_Row + 1
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 1
            Me.MSFlexGrdAssemble.CellAlignment = 4
            If Len(Op1) >= 4 Then
                Me.MSFlexGrdAssemble.Text = Right(Op1, 2)
            Else
                Me.MSFlexGrdAssemble.Text = Right(Op2, 2)
            End If
            da = Memory(ad)
            Memory(ad) = da
            ad = ad + 1
            If (ad > 65535) Then
                ad = 0
            End If
            s = UCase(Hex(ad))
            For i = 1 To 4 - Len(s) Step 1
                s = "0" + s
            Next i
            
            ProgressBar1.Value = 70
            ProgressBar1.Refresh
            
            Flx_Row = Flx_Row + 1
            If Me.MSFlexGrdAssemble.Rows <= Flx_Row Then Me.MSFlexGrdAssemble.Rows = Flx_Row + 1
            'Address Column header
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 0
            Me.MSFlexGrdAssemble.Text = s
            'Higher Order Byte
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 1
            Me.MSFlexGrdAssemble.CellAlignment = 4
            If Len(Op1) >= 4 Then
                Me.MSFlexGrdAssemble.Text = Left(Op1, 2)
            Else
                Me.MSFlexGrdAssemble.Text = Left(Op2, 2)
            End If
            Rec_Found = False
        ElseIf Mem_Space >= 2 And Rec_Found = True Then
            'Address Column header
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 0
            Me.MSFlexGrdAssemble.Text = s
            'Op Code
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 1
            Me.MSFlexGrdAssemble.CellAlignment = 4
            Me.MSFlexGrdAssemble.Text = .Fields(0)
            'Byte
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 4
            Me.MSFlexGrdAssemble.Text = .Fields(6)
            'Machine Cycle
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 5
            Me.MSFlexGrdAssemble.Text = .Fields(4)
            'T-State
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 6
            Me.MSFlexGrdAssemble.Text = .Fields(5)

            da = Memory(ad)
            Memory(ad) = da
            ad = ad + 1
            If (ad > 65535) Then
                ad = 0
            End If
            s = UCase(Hex(ad))
            For i = 1 To 4 - Len(s) Step 1
                s = "0" + s
            Next i
            Flx_Row = Flx_Row + 1
            If Me.MSFlexGrdAssemble.Rows <= Flx_Row Then Me.MSFlexGrdAssemble.Rows = Flx_Row + 1
            'Address Column header
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 0
            Me.MSFlexGrdAssemble.Text = s
            'Mem Addr. Lower Order Byte
            If Me.MSFlexGrdAssemble.Rows <= Flx_Row Then Me.MSFlexGrdAssemble.Rows = Flx_Row + 1
            Me.MSFlexGrdAssemble.Row = Flx_Row
            Me.MSFlexGrdAssemble.Col = 1
            Me.MSFlexGrdAssemble.CellAlignment = 4
            Me.MSFlexGrdAssemble.Text = Right(Op2, 2)
            Rec_Found = False
        Else
            If Rec_Found = True Then
                'Address Column header
                Me.MSFlexGrdAssemble.Row = Flx_Row
                Me.MSFlexGrdAssemble.Col = 0
                Me.MSFlexGrdAssemble.Text = s
                'Op Code
                Me.MSFlexGrdAssemble.Row = Flx_Row
                Me.MSFlexGrdAssemble.Col = 1
                Me.MSFlexGrdAssemble.CellAlignment = 4
                Me.MSFlexGrdAssemble.Text = .Fields(0)
                'Byte
                Me.MSFlexGrdAssemble.Row = Flx_Row
                Me.MSFlexGrdAssemble.Col = 4
                Me.MSFlexGrdAssemble.Text = .Fields(6)
                'Machine Cycle
                Me.MSFlexGrdAssemble.Row = Flx_Row
                Me.MSFlexGrdAssemble.Col = 5
                Me.MSFlexGrdAssemble.Text = .Fields(4)
                'T-State
                Me.MSFlexGrdAssemble.Row = Flx_Row
                Me.MSFlexGrdAssemble.Col = 6
                Me.MSFlexGrdAssemble.Text = .Fields(5)
            End If
        End If

        da = Memory(ad)
        Memory(ad) = da
        ad = ad + 1

        If (ad > 65535) Then
            ad = 0
        End If
        s = UCase(Hex(ad))
        For i = 1 To 4 - Len(s) Step 1
            s = "0" + s
        Next i
        Flx_Row = Flx_Row + 1
        'Clear all contents to fill next
        Label = "": Mnemo = "": Op1 = "": Op2 = "": Comment = ""
        If .State = adStateOpen Then
        .Close
        End If
    End With
    End If
Loop

ProgressBar1.Value = 75
ProgressBar1.Refresh

Assemble

ProgressBar1.Value = 80
ProgressBar1.Refresh

Flx_Row = 0
Set objTxtStream = Nothing
Set objFile = Nothing

Exit Sub

ShowErr:
    MsgBox Err.Number & vbCrLf & Err.Description, vbCritical + vbOKOnly, Mnemo

End Sub

Private Sub Form_Load()
Path = App.Path & "\data.db"
Set FSO = New FileSystemObject
If Not FSO.FileExists(Path) Then
    With ComnDlgOpen
        .Filter = "Database file|data.db"
        .CancelError = False
        .InitDir = App.Path
        .DialogTitle = "Choose Database File"
    End With
    ComnDlgOpen.ShowOpen
    If ComnDlgOpen.fileName = "" Then
        MsgBox "Please Choose a Database File to continue. The Program will now exit"
        End
    End If
    Path = ComnDlgOpen.fileName
End If
With ComnDlgOpen
    .Filter = "All text files|*.txt|All files |*.*"
    .CancelError = False
    .InitDir = App.Path
End With
setAddr ("7000")
Set_FLX_GRD
End Sub

Private Sub Fill_MSFlxGrd(Str As String)
Dim s As String, Length As Integer, i As Integer, k As Integer, j As Integer
Dim Got_Mnemo, singleByte As Boolean
Length = Len(Trim(Str))
If InStr(1, Str, ":") > 0 Then
    Label = ""
Else
    Label = " "
End If

Mnemo = ""
Op1 = ""
Op2 = ""

Dim tmp_Str As String
For k = 1 To Len(Trim(Str))
    If (Asc(Mid(Str, k, 1)) >= 65 And Asc(Mid(Str, k, 1)) <= 90) Or _
    (Asc(Mid(Str, k, 1)) >= 97 And Asc(Mid(Str, k, 1)) <= 122) Or _
    (Asc(Mid(Str, k, 1)) >= 48 And Asc(Mid(Str, k, 1)) <= 57) Then
    tmp_Str = tmp_Str & Trim(Mid(Str, k, 1))
    End If
Next

'Find each word in the line
For i = 1 To Length
    If Mid(Str, i, 1) = ";" Then
        Comment = Mid(Str, i, Len(Str))
        Exit For
    End If
        
    If Len(Label) = 0 Then
        s = s & Trim(Mid(Str, i, 1))
        If Mid(Str, i, 1) = ":" Then
            Label = Trim(Mid(s, 1, Len(s) - 1))
            s = ""
        End If
    End If
    
    If Len(Label) > 0 And Len(Mnemo) = 0 Then
        If (Asc(Mid(Str, i, 1)) >= 65 And Asc(Mid(Str, i, 1)) <= 90) Or _
        (Asc(Mid(Str, i, 1)) >= 97 And Asc(Mid(Str, i, 1)) <= 122) Then
            s = s & Trim(Mid(Str, i, 1))
        End If
        
        If (Mid(Str, i, 1) = " " Or Mid(Str, i, 1) = vbTab) And Len(s) > 0 Then
            Mnemo = Trim(Mid(s, 1, Len(s)))
            Got_Mnemo = True
            'If there is no comma i.e. it is a single operand
            s = Mid(Str, i, Len(Str))
            singleByte = True
            
            'We need to Check if there is an operand after Mnemonic
            
            k = InStr(1, Mid(Str, i, Len(Str)), ",")
            j = InStr(1, Mid(Str, i, Len(Str)), ";")
            
            If j < k And j <> 0 Then
                Op1 = Trim(Mid(s, 1, InStr(1, s, ";") - 2))
                s = ""
                Exit For
            End If
            
            If InStr(1, Mid(Str, i, Len(Str)), ",") = 0 Then
                If InStr(1, Mid(Str, i, Len(Str)), ";") > 0 Then
                    If Len(Mid(Str, i, Len(Str))) > 0 Then
                        s = Trim(Mid(Str, InStr(1, Str, ",") + 1, InStr(1, Str, ";") - 1))
                        Op1 = Trim(Mid(s, i, Len(s)))
                        If Len(Op1) >= 1 And Len(Op1) <= 2 Then
                            s = Op1
                            Op1 = ""
                            For k = 1 To Len(s)
                                If (Asc(Mid(s, k, 1)) >= 65 And Asc(Mid(s, k, 1)) <= 90) Or _
                                (Asc(Mid(s, k, 1)) >= 97 And Asc(Mid(s, k, 1)) <= 122) Or _
                                (Asc(Mid(s, k, 1)) >= 48 And Asc(Mid(s, k, 1)) <= 57) Then
                                    Op1 = Op1 & Trim(Mid(s, k, 1))
                                End If
                            Next
                        End If
                        Comment = Trim(Mid(Str, InStr(1, Str, ";"), Len(Str)))
                    End If
                Else
                    Op1 = Trim(Mid(Str, InStr(1, Str, " ") + 1, Len(Str))): s = ""
                End If
                s = ""
                Exit For
            End If
            s = ""
        End If
        'Sometime the instruction is Single Byte/ Implicit and no space is added.
        If s = "STC" Or s = "NOP" Or s = "RLC" Or s = "RLC" Or s = "RRC" Or s = "RAL" Or _
        s = "RAR" Or s = "RIM" Or s = "DAA" Or s = "CMA" Or s = "SIM" Or s = "STC" Or _
        s = "CMC" Or s = "HLT" Or s = "RNZ" Or s = "RZ" Or s = "RET" Or s = "RNC" Or _
        s = "RC" Or s = "RPO" Or s = "XTHL" Or s = "RPE" Or s = "PCHL" Or s = "XCHG" Or _
        s = "RP" Or s = "DI" Or s = "RM" Or s = "SPHL" Or s = "EI" Then
            Mnemo = s
            s = ""
            Exit For
        End If
        

    End If
    
    'If the instruction is Two byte then proceed.
    If Len(Mnemo) > 0 And Len(Op1) = 0 Then
        If Len(Mid(Str, i, Len(Str))) > 0 Then
            If (Asc(Mid(Str, i, 1)) >= 65 And Asc(Mid(Str, i, 1)) <= 90) Or _
                (Asc(Mid(Str, i, 1)) >= 97 And Asc(Mid(Str, i, 1)) <= 122) Or _
                (Asc(Mid(Str, i, 1)) >= 48 And Asc(Mid(Str, i, 1)) <= 57) Then
                    s = s & Trim(Mid(Str, i, 1))
            End If
            If Mid(Str, i, 1) = "," Then
                Op1 = Trim(Mid(s, 1, Len(s)))
                s = ""
            End If
        End If
    End If
    
    'If the instruction is Three byte then proceed.
    If Len(Op1) > 0 And Len(Op2) = 0 Then
        If InStr(1, Mid(Str, i, Len(Str)), ";") > 0 Then
            If Len(Mid(Str, i, Len(Str))) > 0 Then
                s = Trim(Mid(Str, InStr(1, Str, ",") + 1, InStr(1, Str, ";") - 1))
                Op2 = Trim(Mid(s, 1, InStr(1, s, ";") - 1))
                Comment = Trim(Mid(Str, InStr(1, Str, ";"), Len(Str)))
            End If
        Else
            Op2 = Trim(Mid(Str, InStr(1, Str, ",") + 1, Len(Str))): s = ""
        End If
    End If
Next
'Remove unwanted character
s = Mnemo
Mnemo = ""
For k = 1 To Len(s)
If (Asc(Mid(s, k, 1)) >= 65 And Asc(Mid(s, k, 1)) <= 90) Or _
(Asc(Mid(s, k, 1)) >= 97 And Asc(Mid(s, k, 1)) <= 122) Or _
(Asc(Mid(s, k, 1)) >= 48 And Asc(Mid(s, k, 1)) <= 57) Then
Mnemo = Mnemo & Trim(Mid(s, k, 1))
End If
Next

s = Op1
Op1 = ""
For k = 1 To Len(s)
If (Asc(Mid(s, k, 1)) >= 65 And Asc(Mid(s, k, 1)) <= 90) Or _
(Asc(Mid(s, k, 1)) >= 97 And Asc(Mid(s, k, 1)) <= 122) Or _
(Asc(Mid(s, k, 1)) >= 48 And Asc(Mid(s, k, 1)) <= 57) Then
Op1 = Op1 & Trim(Mid(s, k, 1))
End If
Next

s = Op2
Op2 = ""
For k = 1 To Len(s)
If (Asc(Mid(s, k, 1)) >= 65 And Asc(Mid(s, k, 1)) <= 90) Or _
(Asc(Mid(s, k, 1)) >= 97 And Asc(Mid(s, k, 1)) <= 122) Or _
(Asc(Mid(s, k, 1)) >= 48 And Asc(Mid(s, k, 1)) <= 57) Then
Op2 = Op2 & Trim(Mid(s, k, 1))
End If
Next

s = Label & " # " & Mnemo & " # " & Op1 & " # " & Op2 & " # " & Comment
End Sub

Private Sub mSave_Click(Index As Integer)
Dim fileName As String, buffer As String, i As Integer
Dim txtStream As TextStream
Dim LabelLen, MnemonicLen As Integer
Dim a As Integer
a = 7
LabelLen = 0
MnemonicLen = 0
ComnDlgOpen.ShowSave
fileName = ComnDlgOpen.fileName
Do
If FSO.FileExists(fileName) = True Then
    a = MsgBox("File Exists Overwrite ?", vbExclamation + vbYesNo, "Warning")
End If
If a = 6 Then
    Exit Do
ElseIf a = 7 Then
    ComnDlgOpen.ShowSave
Exit Do
End If
Loop
Set txtStream = FSO.CreateTextFile(fileName)
For i = 1 To Me.MSFlexGrdAssemble.Rows - 1
    Me.MSFlexGrdAssemble.Row = i
    Me.MSFlexGrdAssemble.Col = 2
    If Len(Me.MSFlexGrdAssemble.Text) > LabelLen Then
        LabelLen = Len(Me.MSFlexGrdAssemble.Text)
    End If
    Me.MSFlexGrdAssemble.Col = 3
    If Len(Me.MSFlexGrdAssemble.Text) > MnemonicLen Then
        MnemonicLen = Len(Me.MSFlexGrdAssemble.Text)
    End If
Next i
For i = 1 To Me.MSFlexGrdAssemble.Rows - 1
    Me.MSFlexGrdAssemble.Row = i
    Me.MSFlexGrdAssemble.Col = 0
    buffer = Me.MSFlexGrdAssemble.Text & SpaceBuffer(2)
    Me.MSFlexGrdAssemble.Col = 2
    If Me.MSFlexGrdAssemble.Text = "" Then
        buffer = buffer & SpaceBuffer(LabelLen + 2)
    ElseIf Len(Me.MSFlexGrdAssemble.Text) < LabelLen Then
        buffer = buffer & Me.MSFlexGrdAssemble.Text & SpaceBuffer(LabelLen - Len(Me.MSFlexGrdAssemble.Text) + 2)
    Else
        buffer = buffer & Me.MSFlexGrdAssemble.Text & SpaceBuffer(2)
    End If
    Me.MSFlexGrdAssemble.Col = 3
    If Me.MSFlexGrdAssemble.Text = "" Then
        buffer = buffer & SpaceBuffer(MnemonicLen + 2)
    ElseIf Len(Me.MSFlexGrdAssemble.Text) < MnemonicLen Then
        buffer = buffer & Me.MSFlexGrdAssemble.Text & SpaceBuffer(MnemonicLen - Len(Me.MSFlexGrdAssemble.Text) + 2)
    Else
        buffer = buffer & Me.MSFlexGrdAssemble.Text & SpaceBuffer(2)
    End If
    Me.MSFlexGrdAssemble.Col = 1
    buffer = buffer & Me.MSFlexGrdAssemble.Text
    txtStream.WriteLine (buffer)
    buffer = ""
Next i
End Sub

Private Sub mSettings_Click(Index As Integer)
frmSettings.Show
End Sub

