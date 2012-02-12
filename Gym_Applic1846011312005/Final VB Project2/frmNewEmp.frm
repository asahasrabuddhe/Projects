VERSION 5.00
Begin VB.Form frmNewEmp 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Employees"
   ClientHeight    =   4170
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7560
   Icon            =   "frmNewEmp.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   4170
   ScaleWidth      =   7560
   Begin VB.Frame fra1 
      Caption         =   "Employee (1)"
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
      Height          =   4095
      Left            =   50
      TabIndex        =   20
      Top             =   0
      Width           =   7455
      Begin VB.CommandButton cmdPayroll 
         Caption         =   "Payroll"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   5760
         Picture         =   "frmNewEmp.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   36
         ToolTipText     =   "Payroll"
         Top             =   3000
         Width           =   1440
      End
      Begin VB.CommandButton cmdEdit 
         Caption         =   "Edit Employee"
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
         Left            =   40
         TabIndex        =   35
         Top             =   3600
         Width           =   1840
      End
      Begin VB.CommandButton cmdCancel 
         Caption         =   "Cancel"
         Enabled         =   0   'False
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
         Left            =   3720
         TabIndex        =   34
         Top             =   3600
         Width           =   1840
      End
      Begin VB.CommandButton cmdDelete 
         Caption         =   "Delete Employee"
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
         Left            =   1870
         TabIndex        =   33
         Top             =   3600
         Width           =   1840
      End
      Begin VB.CommandButton cmdUpdate 
         Caption         =   "Update Employee"
         Enabled         =   0   'False
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
         Left            =   40
         TabIndex        =   17
         Top             =   3240
         Width           =   1840
      End
      Begin VB.CommandButton cmdFirst 
         Caption         =   "First Employee"
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
         Left            =   1870
         TabIndex        =   15
         Top             =   2880
         Width           =   1840
      End
      Begin VB.CommandButton cmdLast 
         Caption         =   "Last Employee"
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
         Left            =   3720
         TabIndex        =   16
         Top             =   2880
         Width           =   1840
      End
      Begin VB.CommandButton cmdPrev 
         Caption         =   "Previous Employee"
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
         Left            =   1870
         TabIndex        =   18
         Top             =   3240
         Width           =   1840
      End
      Begin VB.CommandButton cmdNext 
         Caption         =   "Next Employee"
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
         Left            =   3720
         TabIndex        =   19
         Top             =   3240
         Width           =   1840
      End
      Begin VB.CommandButton cmdEnter 
         Caption         =   "Enter New Employee"
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
         Left            =   40
         TabIndex        =   14
         Top             =   2880
         Width           =   1840
      End
      Begin VB.OptionButton optM 
         Caption         =   "Male"
         Enabled         =   0   'False
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
         Height          =   315
         Left            =   3240
         TabIndex        =   3
         Top             =   360
         Width           =   1095
      End
      Begin VB.OptionButton optF 
         Caption         =   "Female"
         Enabled         =   0   'False
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
         Height          =   315
         Left            =   4360
         TabIndex        =   4
         Top             =   360
         Width           =   1095
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
         Height          =   315
         Left            =   4620
         Locked          =   -1  'True
         TabIndex        =   13
         Top             =   1080
         Width           =   865
      End
      Begin VB.ComboBox cboState 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         ItemData        =   "frmNewEmp.frx":0614
         Left            =   3795
         List            =   "frmNewEmp.frx":06B1
         Locked          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   7
         Top             =   1920
         Width           =   600
      End
      Begin VB.TextBox txtStreet 
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
         Height          =   315
         Left            =   795
         Locked          =   -1  'True
         TabIndex        =   5
         Top             =   1440
         Width           =   4695
      End
      Begin VB.TextBox txtZip 
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
         Height          =   315
         Left            =   4800
         Locked          =   -1  'True
         MaxLength       =   5
         TabIndex        =   8
         Top             =   1920
         Width           =   675
      End
      Begin VB.TextBox txtCity 
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
         Height          =   315
         Left            =   795
         Locked          =   -1  'True
         TabIndex        =   6
         Top             =   1920
         Width           =   2295
      End
      Begin VB.TextBox txtDOB 
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
         Height          =   315
         Left            =   795
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   9
         Top             =   2400
         Width           =   975
      End
      Begin VB.TextBox txtPhone 
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
         Height          =   315
         Left            =   2520
         Locked          =   -1  'True
         MaxLength       =   13
         TabIndex        =   10
         Top             =   2400
         Width           =   1215
      End
      Begin VB.TextBox txtSS 
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
         Height          =   315
         Left            =   4440
         Locked          =   -1  'True
         MaxLength       =   11
         TabIndex        =   11
         Top             =   2400
         Width           =   1035
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
         Height          =   315
         Left            =   1440
         Locked          =   -1  'True
         TabIndex        =   0
         TabStop         =   0   'False
         Top             =   360
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
         Height          =   315
         Left            =   1440
         Locked          =   -1  'True
         TabIndex        =   1
         Top             =   720
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
         Height          =   315
         Left            =   1440
         Locked          =   -1  'True
         TabIndex        =   2
         Top             =   1080
         Width           =   1695
      End
      Begin VB.TextBox txtHourlyWage 
         BackColor       =   &H00FFFFFF&
         BeginProperty DataFormat 
            Type            =   1
            Format          =   """?"" #,##0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   2
         EndProperty
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
         Height          =   315
         Left            =   4620
         Locked          =   -1  'True
         TabIndex        =   12
         Top             =   720
         Width           =   865
      End
      Begin VB.Image imgEmp 
         Height          =   2355
         Left            =   5760
         Picture         =   "frmNewEmp.frx":0782
         Stretch         =   -1  'True
         Top             =   480
         Width           =   1440
      End
      Begin VB.Label lblTax 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Tax Rate: "
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
         Height          =   315
         Left            =   3240
         TabIndex        =   32
         Top             =   1080
         Width           =   1335
      End
      Begin VB.Label lblStreet 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Street :"
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
         Height          =   315
         Left            =   120
         TabIndex        =   31
         Top             =   1440
         Width           =   690
      End
      Begin VB.Label lblDOB 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "D.O.B. :"
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
         Height          =   315
         Left            =   120
         TabIndex        =   30
         Top             =   2400
         Width           =   690
      End
      Begin VB.Label lblPhone 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Phone # :"
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
         Height          =   315
         Left            =   1785
         TabIndex        =   29
         Top             =   2400
         Width           =   825
      End
      Begin VB.Label lblSS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "S.S. # :"
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
         Height          =   315
         Left            =   3855
         TabIndex        =   28
         Top             =   2400
         Width           =   615
      End
      Begin VB.Label lblZip 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Zip : "
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
         Height          =   315
         Left            =   4425
         TabIndex        =   27
         Top             =   1920
         Width           =   405
      End
      Begin VB.Label lblState 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "State : "
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
         Height          =   300
         Left            =   3210
         TabIndex        =   26
         Top             =   1920
         Width           =   600
      End
      Begin VB.Label lblCity 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "City :"
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
         Height          =   315
         Left            =   120
         TabIndex        =   25
         Top             =   1920
         Width           =   690
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
         Height          =   315
         Left            =   120
         TabIndex        =   24
         Top             =   360
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
         Height          =   315
         Left            =   120
         TabIndex        =   23
         Top             =   720
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
         Height          =   315
         Left            =   120
         TabIndex        =   22
         Top             =   1080
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
         Height          =   315
         Left            =   3240
         TabIndex        =   21
         Top             =   720
         Width           =   1335
      End
   End
End
Attribute VB_Name = "frmNewEmp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
    
Dim pdbEmp As Database
Dim mrstEmp As Recordset
Dim mblnflag As Boolean
Dim mntNum As Integer
Dim mstrId As String
Dim mblnCheck As Boolean
Dim mblnEdit As Boolean
Dim mntDel As Integer

Private Sub cmdCancel_Click()
    mblnflag = False
    mrstEmp.MoveFirst
    ShowRecord
    mblnEdit = True
    EditState
End Sub

Private Sub cmdDelete_Click()
    mntDel = MsgBox("Are you sure you want to DELETE" & vbLf & txtLastName & ", " & txtFirstName, vbYesNo + vbCritical)
    If mntDel = vbYes Then
        mrstEmp.Delete
        mrstEmp.MoveFirst
        ShowRecord
    End If
End Sub

Private Sub cmdEdit_Click()
    cmdCancel.Enabled = True
    txtLastName.SetFocus
    mblnEdit = False
    EditState
End Sub

Private Sub cmdEnter_Click()
    cmdCancel.Enabled = True
    mrstEmp.MoveLast
    mntNum = (mrstEmp!fldNumEmp + 1)
    mstrId = "Emp" & Mid(mrstEmp!fldEmployeeID, 4) + 1
    mrstEmp.AddNew
    ClearRecord
    txtLastName.SetFocus
    mblnflag = True
    mblnEdit = False
    EditState
End Sub

Private Sub cmdFirst_Click()
    mrstEmp.MoveFirst
    ShowRecord
End Sub

Private Sub cmdLast_Click()
    mrstEmp.MoveLast
    ShowRecord
End Sub

Private Sub cmdNext_Click()
    mrstEmp.MoveNext
    If mrstEmp.EOF Then mrstEmp.MoveLast
    ShowRecord
End Sub

Private Sub cmdPayroll_Click()
    If frmPayroll.WindowState <> vbMinimized Then
        frmPayroll.Top = mdiDtcc.ScaleHeight / 8
        frmPayroll.Left = mdiDtcc.ScaleWidth / 4
    End If
    frmPayroll.Show
End Sub

Private Sub cmdPrev_Click()
    mrstEmp.MovePrevious
    If mrstEmp.BOF Then mrstEmp.MoveFirst
    ShowRecord
End Sub

Private Sub cmdUpdate_Click()
    Checktxt
    If mblnCheck = False Then
        WriteRecord
        mrstEmp.Update
        mblnEdit = True
        EditState
    Else
        MsgBox "All Required!!", vbOKOnly + vbInformation
        mblnCheck = False
        txtEmployeeID.SetFocus
    End If
    If mblnflag = False Then ShowRecord
End Sub

Private Sub Form_Load()
    Set pdbEmp = OpenDatabase(App.Path & "\Gym_Members.mdb")
    Set mrstEmp = pdbEmp.OpenRecordset("SELECT * FROM tblEmployees ORDER BY fldNumEmp")
    mrstEmp.MoveFirst
    ShowRecord
End Sub

Public Sub ShowRecord()
    With mrstEmp
        frmNewEmp.Caption = "Employees Date of Hire: " & !fldDOH
        fra1 = "Employee (" & !fldNumEmp & ")"
        txtEmployeeID = !fldEmployeeID
        txtLastName = !fldLastName
        txtFirstName = !fldFirstName
        If !fldGender = "M" Then optM = True
        If !fldGender = "F" Then optF = True
        txtStreet = !fldStreet
        txtCity = !fldCity
        cboState = !fldState
        txtZip = !fldZipCode
        txtDOB = !fldDOB
        txtPhone = !fldPhoneNumber
        txtSS = !fldSoc
        txtHourlyWage = Format(!fldHourlyWage, "Currency")
        txtTax = !fldTaxRate
        gsngPer = !fldTaxRate
    End With
    LoadEmpPicture
End Sub

Public Sub ClearRecord()
    frmNewEmp.Caption = "Employees Date of Hire: " & Date
    fra1 = "Employee (" & mntNum & ")"
    txtEmployeeID = mstrId
    txtLastName = ""
    txtFirstName = ""
    optM.Value = False
    optM.TabStop = True
    optF.Value = False
    txtStreet = ""
    txtCity = ""
    cboState.ListIndex = -1
    txtZip = ""
    txtDOB = ""
    txtPhone = ""
    txtSS = ""
    txtHourlyWage = Format(0, "Currency")
    txtTax = ""
    imgEmp.Picture = LoadPicture(App.Path & "\Images\NoPic.jpg")
End Sub

Public Sub WriteRecord()
    With mrstEmp
        If mblnflag = True Then
            !fldDOH = Date
            !fldEmployeeID = txtEmployeeID
            !fldNumEmp = mntNum
            mblnflag = False
        Else
            .Edit
        End If
        !fldLastName = txtLastName
        !fldFirstName = txtFirstName
        If optM = True Then !fldGender = "M"
        If optF = True Then !fldGender = "F"
        !fldStreet = txtStreet
        !fldCity = txtCity
        !fldState = cboState
        !fldZipCode = txtZip
        !fldDOB = txtDOB
        !fldPhoneNumber = txtPhone
        !fldSoc = txtSS
        !fldHourlyWage = txtHourlyWage
        !fldTaxRate = txtTax
    End With
End Sub

Private Sub txtHourlyWage_GotFocus()
    txtHourlyWage.SelStart = 0
    txtHourlyWage.SelLength = Len(txtHourlyWage)
End Sub

Public Sub Checktxt()
    If txtEmployeeID = "" Or txtLastName = "" Or txtFirstName = "" _
    Or txtHourlyWage = "" Or txtTax = "" Or txtStreet = "" Or _
    txtCity = "" Or cboState.ListIndex = -1 Or txtZip = "" Or _
    txtDOB = "" Or txtPhone = "" Or txtSS = "" Then
        mblnCheck = True
    End If
End Sub

Public Sub EditState()
    If mblnEdit = True Then
        optM.Enabled = False
        optF.Enabled = False
        txtLastName.Locked = True
        txtFirstName.Locked = True
        txtHourlyWage.Locked = True
        txtTax.Locked = True
        txtStreet.Locked = True
        txtCity.Locked = True
        cboState.Locked = True
        txtZip.Locked = True
        txtDOB.Locked = True
        txtPhone.Locked = True
        txtSS.Locked = True
        txtHourlyWage.Locked = True
        txtTax.Locked = True
        cmdUpdate.Enabled = False
        cmdEdit.Enabled = True
        cmdFirst.Enabled = True
        cmdLast.Enabled = True
        cmdNext.Enabled = True
        cmdPrev.Enabled = True
        cmdDelete.Enabled = True
        cmdEnter.Enabled = True
        cmdCancel.Enabled = False
    Else
        optM.Enabled = True
        optF.Enabled = True
        txtLastName.Locked = False
        txtFirstName.Locked = False
        txtHourlyWage.Locked = False
        txtTax.Locked = False
        txtStreet.Locked = False
        txtCity.Locked = False
        cboState.Locked = False
        txtZip.Locked = False
        txtDOB.Locked = False
        txtPhone.Locked = False
        txtSS.Locked = False
        txtHourlyWage.Locked = False
        txtTax.Locked = False
        cmdUpdate.Enabled = True
        cmdEdit.Enabled = False
        cmdFirst.Enabled = False
        cmdLast.Enabled = False
        cmdNext.Enabled = False
        cmdPrev.Enabled = False
        cmdDelete.Enabled = False
        cmdEnter.Enabled = False
    End If
End Sub

Public Sub LoadEmpPicture()
    Dim pstrPic As String
    pstrPic = txtEmployeeID
    On Error Resume Next
    imgEmp.Picture = LoadPicture(App.Path & "\Images\" & pstrPic & ".jpg")
    If Err Then
         imgEmp.Picture = LoadPicture(App.Path & "\Images\NoPic.jpg")
    End If
End Sub
