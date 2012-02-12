VERSION 5.00
Begin VB.Form frmPayroll 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Payroll"
   ClientHeight    =   5040
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3630
   Icon            =   "frmPayroll.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   5040
   ScaleWidth      =   3630
   Begin VB.Frame fraBorder 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   4935
      Left            =   80
      TabIndex        =   17
      Top             =   0
      Width           =   3495
      Begin VB.CommandButton cmdBrowse 
         Caption         =   "Browse"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   10
         Top             =   4440
         Width           =   1455
      End
      Begin VB.CommandButton cmdAdd 
         Caption         =   "Insert Record"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1800
         TabIndex        =   9
         Top             =   4080
         Width           =   1455
      End
      Begin VB.CommandButton cmdCalculate 
         Caption         =   "Calculate"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   4080
         Width           =   1455
      End
      Begin VB.CommandButton cmdPrevious 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   990
         Picture         =   "frmPayroll.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Previous record"
         Top             =   3600
         Width           =   754
      End
      Begin VB.CommandButton cmdNext 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1740
         Picture         =   "frmPayroll.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Next record"
         Top             =   3600
         Width           =   754
      End
      Begin VB.CommandButton cmdLast 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2490
         MaskColor       =   &H00FFFFFF&
         Picture         =   "frmPayroll.frx":0B8E
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last record"
         Top             =   3600
         Width           =   754
      End
      Begin VB.CommandButton cmdFirst 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         Picture         =   "frmPayroll.frx":0FD0
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First record"
         Top             =   3600
         Width           =   754
      End
      Begin VB.TextBox txtNet 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1560
         Locked          =   -1  'True
         TabIndex        =   3
         TabStop         =   0   'False
         Top             =   3240
         Width           =   1695
      End
      Begin VB.TextBox txtHourWorked 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1560
         TabIndex        =   0
         Top             =   2160
         Width           =   1695
      End
      Begin VB.TextBox txtDatePaid 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1560
         Locked          =   -1  'True
         TabIndex        =   16
         TabStop         =   0   'False
         Top             =   360
         Width           =   1695
      End
      Begin VB.TextBox txtGross 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1560
         Locked          =   -1  'True
         TabIndex        =   1
         TabStop         =   0   'False
         Top             =   2520
         Width           =   1695
      End
      Begin VB.TextBox txtTax 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1560
         Locked          =   -1  'True
         TabIndex        =   2
         TabStop         =   0   'False
         Top             =   2880
         Width           =   1695
      End
      Begin VB.TextBox txtHourlyWage 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1560
         Locked          =   -1  'True
         TabIndex        =   15
         TabStop         =   0   'False
         Top             =   1800
         Width           =   1695
      End
      Begin VB.TextBox txtFirstName 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1560
         Locked          =   -1  'True
         TabIndex        =   14
         TabStop         =   0   'False
         Top             =   1440
         Width           =   1695
      End
      Begin VB.TextBox txtLastName 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1560
         Locked          =   -1  'True
         TabIndex        =   13
         TabStop         =   0   'False
         Top             =   1080
         Width           =   1695
      End
      Begin VB.TextBox txtEmployeeID 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1560
         Locked          =   -1  'True
         TabIndex        =   12
         TabStop         =   0   'False
         Top             =   720
         Width           =   1695
      End
      Begin VB.CommandButton cmdClose 
         Caption         =   "Close"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1800
         TabIndex        =   11
         Top             =   4440
         Width           =   1455
      End
      Begin VB.Label lblNet 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Net Pay:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   240
         TabIndex        =   26
         Top             =   3240
         Width           =   1335
      End
      Begin VB.Label lblTax 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Tax Withheld:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   240
         TabIndex        =   25
         Top             =   2880
         Width           =   1335
      End
      Begin VB.Label lblGross 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Gross Pay:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   240
         TabIndex        =   24
         Top             =   2520
         Width           =   1335
      End
      Begin VB.Label lblPaid 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Date Paid:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   240
         TabIndex        =   23
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label lblWorked 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Hours Worked:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   240
         TabIndex        =   22
         Top             =   2160
         Width           =   1335
      End
      Begin VB.Label lblWages 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Hourly Wage: "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   240
         TabIndex        =   21
         Top             =   1800
         Width           =   1335
      End
      Begin VB.Label lblFirst 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "First Name: "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   240
         TabIndex        =   20
         Top             =   1440
         Width           =   1335
      End
      Begin VB.Label lblLast 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Last Name: "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   240
         TabIndex        =   19
         Top             =   1080
         Width           =   1335
      End
      Begin VB.Label lblID 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Employee ID: "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   240
         TabIndex        =   18
         Top             =   720
         Width           =   1335
      End
   End
End
Attribute VB_Name = "frmPayroll"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim pdbPay As Database
Dim mrstPay As Recordset
Dim gblnPeriod As Boolean

Private Sub cmdAdd_Click()
    If txtHourWorked = vbNullString Then
        MsgBox "Enter Hours Worked", vbOKOnly + vbInformation
        txtHourWorked.SetFocus
    ElseIf txtNet = vbNullString Then
        MsgBox "Must Calculate", vbOKOnly + vbInformation
        cmdCalculate.SetFocus
    Else
        WriteRecord
        mrstPay.Update
        MsgBox "Payroll was added", vbOKOnly
        Unload Me
    End If
End Sub

Private Sub cmdBrowse_Click()
    Dim Message, Title, MyValue, pstrUpper As String
    
    Message = "Enter employee ID to view Employee Records." _
    & vbNewLine & vbTab & vbTab & "     -or-" & vbNewLine & _
    "Enter ( All ) to view all Employee Records."
    Title = "Browse Records"
    
    On Error Resume Next
    mrstPay.MoveFirst
    MyValue = InputBox(Message, Title)
    pstrUpper = UCase(MyValue)
    If pstrUpper = "ALL" Then
        Set mrstPay = pdbPay.OpenRecordset("SELECT * FROM tblPayroll ORDER BY fldEmployeeID")
        On Error Resume Next
        txtHourWorked.Locked = True
        cmdCalculate.Enabled = False
        cmdAdd.Enabled = False
        cmdFirst.Enabled = True
        cmdLast.Enabled = True
        cmdPrevious.Enabled = True
        cmdNext.Enabled = True
        ShowRecord
    ElseIf MyValue <> "" Then
        Set mrstPay = pdbPay.OpenRecordset("SELECT * FROM tblPayroll WHERE fldEmployeeID = '" & MyValue & "' ORDER BY fldPayNum")
        On Error Resume Next
        txtHourWorked.Locked = True
        cmdCalculate.Enabled = False
        cmdAdd.Enabled = False
        cmdFirst.Enabled = True
        cmdLast.Enabled = True
        cmdPrevious.Enabled = True
        cmdNext.Enabled = True
        ShowRecord
    End If
    
    If Err And MyValue <> "" Then
        MsgBox "Employee does not exist.", vbOKOnly
        cmdFirst.Enabled = False
        cmdLast.Enabled = False
        cmdPrevious.Enabled = False
        cmdNext.Enabled = False
    End If
End Sub

Private Sub cmdCalculate_Click()
    Dim psngGross As Single
    Dim psngTax As Single
    Dim psngNet As Single
    
    On Error Resume Next
    gblnPeriod = False
    
    If txtHourWorked = vbNullString Then
        MsgBox "Enter Hours Worked", vbOKOnly + vbInformation
        txtHourWorked.SetFocus
    Else
        psngGross = (txtHourlyWage * txtHourWorked)
        txtGross = Format(psngGross, "Currency")
        psngTax = (gsngPer * psngGross)
        txtTax = Format(psngTax, "Currency")
        psngNet = psngGross - psngTax
        txtNet = Format(psngNet, "Currency")
    End If
    
End Sub

Private Sub cmdClose_Click()
    Unload Me
End Sub

Private Sub cmdFirst_Click()
    mrstPay.MoveFirst
    ShowRecord
End Sub

Private Sub cmdLast_Click()
    mrstPay.MoveLast
    ShowRecord
End Sub

Private Sub cmdNext_Click()
    mrstPay.MoveNext
    If mrstPay.EOF Then mrstPay.MoveLast
    ShowRecord
End Sub

Private Sub cmdPrevious_Click()
    mrstPay.MovePrevious
    If mrstPay.BOF Then mrstPay.MoveFirst
    ShowRecord
End Sub

Private Sub Form_Load()
    Set pdbPay = OpenDatabase(App.Path & "\Gym_Members.mdb")
    Set mrstPay = pdbPay.OpenRecordset("tblPayroll")
    
    txtEmployeeID = frmNewEmp.txtEmployeeID
    txtLastName = frmNewEmp.txtLastName
    txtFirstName = frmNewEmp.txtFirstName
    txtHourlyWage = frmNewEmp.txtHourlyWage
    txtDatePaid = Date
    cmdFirst.Enabled = False
    cmdLast.Enabled = False
    cmdPrevious.Enabled = False
    cmdNext.Enabled = False
End Sub

Public Sub ShowRecord()
    With mrstPay
        txtEmployeeID = !fldEmployeeID
        txtLastName = !fldLastName
        txtFirstName = !fldFirstName
        txtHourlyWage = Format(!fldHourlyWage, "Currency")
        txtHourWorked = !fldHoursWorked
        txtDatePaid = !fldDatePaid
        txtGross = !fldGrossPay
        txtTax = !fldTaxWithheld
        txtNet = !fldNetPay
    End With
End Sub

Public Sub WriteRecord()
    mrstPay.AddNew
    With mrstPay
        !fldEmployeeID = txtEmployeeID
        !fldLastName = txtLastName
        !fldFirstName = txtFirstName
        !fldHourlyWage = txtHourlyWage
        !fldHoursWorked = txtHourWorked
        !fldDatePaid = txtDatePaid
        !fldGrossPay = txtGross
        !fldTaxWithheld = txtTax
        !fldNetPay = txtNet
    End With
End Sub

Private Sub Form_Unload(Cancel As Integer)
    gblnPeriod = False
End Sub

Private Sub txtHourWorked_KeyPress(KeyAscii As Integer)
    
    If KeyAscii < Asc("0") Or KeyAscii > Asc("9") Then
        If KeyAscii = 13 Then
            KeyAscii = 0
            SendKeys vbTab
        ElseIf KeyAscii = Asc(".") And gblnPeriod = False Then
            gblnPeriod = True
        ElseIf KeyAscii = Asc(vbBack) Then
            'fine...
        Else
            KeyAscii = 0
        End If
    End If
End Sub

Private Sub txtHourWorked_LostFocus()
    If txtHourWorked = "." Then
        txtHourWorked = ""
        gblnPeriod = False
    ElseIf Right(txtHourWorked, 1) = "." Then
        txtHourWorked = Format(txtHourWorked, "")
        gblnPeriod = False
    End If
End Sub
