VERSION 5.00
Begin VB.Form frmReceipt 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Receipt "
   ClientHeight    =   2625
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8535
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmReceipt.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   2625
   ScaleWidth      =   8535
   Begin VB.Frame fra1 
      Height          =   2535
      Left            =   60
      TabIndex        =   12
      Top             =   0
      Width           =   8415
      Begin VB.CommandButton cmdPrint 
         Caption         =   "Print"
         Default         =   -1  'True
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
         Left            =   120
         TabIndex        =   35
         Top             =   2040
         Width           =   1095
      End
      Begin VB.TextBox txtAmount 
         Alignment       =   1  'Right Justify
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
         Height          =   255
         Left            =   4560
         TabIndex        =   1
         Top             =   960
         Width           =   975
      End
      Begin VB.TextBox txtNewcharge 
         Alignment       =   1  'Right Justify
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
         Height          =   255
         Left            =   4560
         TabIndex        =   0
         Top             =   600
         Width           =   975
      End
      Begin VB.TextBox txtNext 
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
         Height          =   255
         Left            =   6960
         TabIndex        =   6
         Top             =   1680
         Width           =   1335
      End
      Begin VB.TextBox txtPrev 
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
         Height          =   255
         Left            =   6960
         TabIndex        =   5
         Top             =   1320
         Width           =   1335
      End
      Begin VB.TextBox txtChecknum 
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
         Height          =   255
         Left            =   6960
         TabIndex        =   4
         Top             =   960
         Width           =   1335
      End
      Begin VB.ComboBox cboPayfor 
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
         ItemData        =   "frmReceipt.frx":030A
         Left            =   6960
         List            =   "frmReceipt.frx":0332
         Style           =   2  'Dropdown List
         TabIndex        =   2
         Top             =   240
         Width           =   1335
      End
      Begin VB.ComboBox cboHow 
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
         ItemData        =   "frmReceipt.frx":03ED
         Left            =   6960
         List            =   "frmReceipt.frx":03FD
         Style           =   2  'Dropdown List
         TabIndex        =   3
         Top             =   600
         Width           =   1335
      End
      Begin VB.ComboBox cboReceived 
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
         ItemData        =   "frmReceipt.frx":0424
         Left            =   6960
         List            =   "frmReceipt.frx":0437
         Style           =   2  'Dropdown List
         TabIndex        =   7
         Top             =   2040
         Width           =   1335
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
         Left            =   2760
         Picture         =   "frmReceipt.frx":045C
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "First record"
         Top             =   1920
         Width           =   495
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
         Left            =   4320
         MaskColor       =   &H00FFFFFF&
         Picture         =   "frmReceipt.frx":089E
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Last record"
         Top             =   1920
         Width           =   495
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
         Left            =   3840
         Picture         =   "frmReceipt.frx":0CE0
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Next record"
         Top             =   1920
         Width           =   375
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
         Left            =   3360
         Picture         =   "frmReceipt.frx":1122
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Previous record"
         Top             =   1920
         Width           =   375
      End
      Begin VB.Image imgDtcc 
         Height          =   975
         Left            =   3360
         Stretch         =   -1  'True
         Top             =   2640
         Width           =   975
      End
      Begin VB.Label lblNewbalance 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
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
         Left            =   4560
         TabIndex        =   34
         Top             =   1320
         Width           =   975
      End
      Begin VB.Label lblOldbalance 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty DataFormat 
            Type            =   0
            Format          =   """?"" #,##0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
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
         Height          =   255
         Left            =   4560
         TabIndex        =   33
         Top             =   240
         Width           =   975
      End
      Begin VB.Label lblMid 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Member ID:"
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
         Height          =   255
         Left            =   120
         TabIndex        =   32
         Top             =   600
         Width           =   1095
      End
      Begin VB.Label lblName 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Name:"
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
         Height          =   255
         Left            =   120
         TabIndex        =   31
         Top             =   960
         Width           =   1095
      End
      Begin VB.Label lblId 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
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
         Left            =   1320
         TabIndex        =   30
         Top             =   600
         Width           =   615
      End
      Begin VB.Label lblLFname 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
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
         Left            =   1320
         TabIndex        =   29
         Top             =   960
         Width           =   1815
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblDate 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
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
         Left            =   1320
         TabIndex        =   28
         Top             =   240
         Width           =   855
      End
      Begin VB.Label lblExtan 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Tan Ex:"
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
         Height          =   255
         Left            =   120
         TabIndex        =   27
         Top             =   1680
         Width           =   1095
      End
      Begin VB.Label lblExgym 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Gym Ex:"
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
         Height          =   255
         Left            =   120
         TabIndex        =   26
         Top             =   1320
         Width           =   1095
      End
      Begin VB.Label lblExTanDate 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
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
         Left            =   1320
         TabIndex        =   25
         Top             =   1680
         Width           =   855
      End
      Begin VB.Label lblExGymDate 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
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
         Left            =   1320
         TabIndex        =   24
         Top             =   1320
         Width           =   855
      End
      Begin VB.Label lblDateHeader 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Date:"
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
         Height          =   255
         Left            =   120
         TabIndex        =   23
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label lblOldbalanceHeader 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Old Balance:"
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
         Height          =   255
         Left            =   3240
         TabIndex        =   22
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label lblNewcharge 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "New charge:"
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
         Height          =   255
         Left            =   3240
         TabIndex        =   21
         Top             =   600
         Width           =   1215
      End
      Begin VB.Label lblAmount 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Amount Rec:"
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
         Height          =   255
         Left            =   3240
         TabIndex        =   20
         Top             =   960
         Width           =   1215
      End
      Begin VB.Label lblNewbalanceHeader 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "New Balance:"
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
         Height          =   255
         Left            =   3240
         TabIndex        =   19
         Top             =   1320
         Width           =   1215
      End
      Begin VB.Label lblReceived 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Received  by:"
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
         Height          =   255
         Left            =   5640
         TabIndex        =   18
         Top             =   2040
         Width           =   1215
      End
      Begin VB.Label lblNext 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Next due:"
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
         Height          =   255
         Left            =   5640
         TabIndex        =   17
         Top             =   1680
         Width           =   1215
      End
      Begin VB.Label lblPrev 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Previous due:"
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
         Height          =   255
         Left            =   5640
         TabIndex        =   16
         Top             =   1320
         Width           =   1215
      End
      Begin VB.Label lblChecknum 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Check #:"
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
         Height          =   255
         Left            =   5640
         TabIndex        =   15
         Top             =   960
         Width           =   1215
      End
      Begin VB.Label lblHow 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "How Payed:"
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
         Height          =   255
         Left            =   5640
         TabIndex        =   14
         Top             =   600
         Width           =   1215
      End
      Begin VB.Label lblPayfor 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Payment for:"
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
         Height          =   255
         Left            =   5640
         TabIndex        =   13
         Top             =   240
         Width           =   1215
      End
   End
End
Attribute VB_Name = "frmReceipt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim mrstRec As Recordset
Dim mdbRec As Database
Dim mstrVal As String
Dim mblnReq As Boolean
Private Const csngCol1 As Single = 1.4
Private Const csngCol2 As Single = 3.9
Private Const csngCol3 As Single = 6.1
Private Const csngCol4 As Single = 6.5

Private Sub cmdFirst_Click()
    If gblnRec = True Then
        mrstRec.MoveFirst
        ShowRecord
    End If
End Sub

Private Sub cmdLast_Click()
    If gblnRec = True Then
        mrstRec.MoveLast
        ShowRecord
    End If
End Sub

Private Sub cmdNext_Click()
If gblnRec = True Then
    mrstRec.MoveNext
    If mrstRec.EOF Then mrstRec.MoveLast
    ShowRecord
End If
End Sub

Private Sub cmdPrevious_Click()
If gblnRec = True Then
    mrstRec.MovePrevious
    If mrstRec.BOF Then mrstRec.MoveFirst
    ShowRecord
End If
End Sub

Private Sub cmdPrint_Click()
    Dim pstrAns As String
    Dim pstrval As String
    ReqiresEntry
    If mblnReq = True Then
        MsgBox "Enter Required Fileds!!!", vbOKOnly + vbInformation
        mblnReq = False
    ElseIf cboHow.ListIndex = 2 And txtChecknum = "" Then
        MsgBox "Check # is Required if payed with Check!!!", vbOKOnly + vbInformation
        txtChecknum.SetFocus
    Else
        If gblnRec = True Then
            pstrAns = MsgBox("confirm printing on " & Printer.DeviceName, vbYesNo)
            If pstrAns = vbNo Then Exit Sub
           ' PrintRec
           ' Printer.EndDoc
        Else
            pstrAns = MsgBox("confirm printing on " & Printer.DeviceName, vbYesNo)
            If pstrAns = vbNo Then Exit Sub
            'PrintRec
            'printer.EndDoc
            mstrVal = "UPDATE tblMembers SET fldBalance =   '" & lblNewbalance & "'  WHERE fldMemberID = " & lblId & ""
            pdbMembers.Execute mstrVal, dbFailOnError
            If txtNext <> "" Then
                mstrVal = "UPDATE tblMembers SET fldPayDue =   '" & txtNext & "'  WHERE fldMemberID = " & lblId & ""
                pdbMembers.Execute mstrVal, dbFailOnError
            Else
                mstrVal = "UPDATE tblMembers SET fldPayDue =  null   WHERE fldMemberID = " & lblId & ""
                pdbMembers.Execute mstrVal, dbFailOnError
            End If
            frmGym.ShowRecord
            WriteRecord
            mrstRec.Update
        End If
        Unload Me
    End If
End Sub

Private Sub Form_Load()
    
    Set mdbRec = OpenDatabase(App.Path & "\Gym_Members.mdb")

    If gblnRec = True Then
        cmdPrint.Enabled = True
        cmdFirst.Enabled = True
        cmdLast.Enabled = True
        cmdNext.Enabled = True
        cmdPrevious.Enabled = True
        lblId = frmGym.txtId
        Set mrstRec = mdbRec.OpenRecordset("SELECT * FROM tblReceipt WHERE fldMemberID_Rec = " & lblId & " ORDER BY fldNum", dbOpenSnapshot)
        cmdFirst_Click
    Else
        cmdPrint.Enabled = True
        Set mrstRec = mdbRec.OpenRecordset("tblReceipt")
        cmdFirst.Enabled = False
        cmdLast.Enabled = False
        cmdNext.Enabled = False
        cmdPrevious.Enabled = False
        lblDate.Caption = Date
        lblId = frmGym.txtId
        lblLFname = frmGym.txtLastName & ", " & frmGym.txtFirstName
        lblExGymDate = frmGym.txtEx_gym
        lblExTanDate = frmGym.txtEx_tan
        lblOldbalance = frmGym.lblBalance
        lblNewbalance = frmGym.lblBalance
        txtPrev = frmGym.txtPayduedate
    End If
End Sub

Public Sub WriteRecord()
    mrstRec.AddNew
    With mrstRec
        !fldDate = lblDate
        !fldMemberID_Rec = lblId
        !fldLFName_Rec = lblLFname
        If lblExGymDate <> "" Then !fldGymEx_Rec = lblExGymDate Else !fldGymEx_Rec = Null
        If lblExTanDate <> "" Then !fldTanEx_Rec = lblExTanDate Else !fldTanEx_Rec = Null
        !fldOldBalance = lblOldbalance
        !fldNewCharge = txtNewcharge
        !fldAmountRec = txtAmount
        !fldNewBalance = lblNewbalance
        !fldPayFor = cboPayfor
        !fldHowPaid = cboHow
        If txtChecknum <> "" Then !fldCheckNum = txtChecknum Else !fldCheckNum = Null
        If txtPrev <> "" Then !fldPrev = txtPrev Else !fldPrev = Null
        If txtNext <> "" Then !fldNext = txtNext Else !fldNext = Null
        !fldRecBy = cboReceived
    End With
End Sub

Public Sub ShowRecord()
    With mrstRec
        lblDate = !fldDate
        lblId = !fldMemberID_Rec
        lblLFname = !fldLFName_Rec
        If !fldGymEx_Rec <> "" Then lblExGymDate = !fldGymEx_Rec Else lblExGymDate = ""
        If !fldTanEx_Rec <> "" Then lblExTanDate = !fldTanEx_Rec Else lblExTanDate = ""
        lblOldbalance = Format(!fldOldBalance, "Currency")
        txtNewcharge = Format(!fldNewCharge, "Currency")
        txtAmount = Format(!fldAmountRec, "Currency")
        lblNewbalance = Format(!fldNewBalance, "Currency")
        cboPayfor = !fldPayFor
        cboHow = !fldHowPaid
        If !fldCheckNum <> "" Then txtChecknum = !fldCheckNum Else txtChecknum = ""
        If !fldPrev <> "" Then txtPrev = !fldPrev Else txtPrev = ""
        If !fldNext <> "" Then txtNext = !fldNext Else txtNext = ""
        cboReceived = !fldRecBy
    End With
End Sub

Private Sub txtAmount_Change()
    If txtAmount <> "" And IsNumeric(txtAmount) And IsNumeric(txtNewcharge) Then
        lblNewbalance = Format(((CDec(lblOldbalance) + CDec(txtNewcharge)) - CDec(txtAmount)), "Currency")
    End If
End Sub

Private Sub txtAmount_KeyPress(KeyAscii As Integer)
    If KeyAscii < Asc("0") Or KeyAscii > Asc("9") Then
        If KeyAscii = 13 Then
            KeyAscii = 0
            SendKeys vbTab
        ElseIf KeyAscii = Asc(vbBack) Then
              'fine...
        Else
            KeyAscii = 0
        End If
    End If
End Sub

Private Sub txtAmount_LostFocus()
        txtAmount = Format(txtAmount, "Currency")
End Sub

Private Sub txtNewcharge_Change()
    If txtNewcharge <> "" And IsNumeric(txtNewcharge) And IsNumeric(txtAmount) Then
        If txtAmount = "" Then
            lblNewbalance = Format((CDec(lblOldbalance) + CDec(txtNewcharge)), "Currency")
        Else
            lblNewbalance = Format(((CDec(lblOldbalance) + CDec(txtNewcharge)) - CDec(txtAmount)), "Currency")
        End If
    End If
End Sub

Private Sub txtNewcharge_KeyPress(KeyAscii As Integer)
    If KeyAscii < Asc("0") Or KeyAscii > Asc("9") Then
        If KeyAscii = 13 Then
            KeyAscii = 0
            SendKeys vbTab
        ElseIf KeyAscii = Asc(vbBack) Then
              'fine...
        Else
            KeyAscii = 0
        End If
    End If
End Sub

Private Sub txtNewcharge_LostFocus()
        txtNewcharge = Format(txtNewcharge, "Currency")
End Sub

Public Sub PrintRec()
    Dim psngWidth As Single
    Dim psngLastY As Single
    Dim psngY As Single
    
    Printer.ScaleMode = vbInches
     Printer.FontSize = 28
     Printer.FontName = "Arial Black"
     Printer.CurrentY = 0
    
     imgDtcc.Picture = LoadPicture(App.Path & "\Images\dtcc.jpg")
     Printer.PaintPicture imgDtcc.Picture, csngCol4, 0.15
     Printer.CurrentX = csngCol4 - Printer.TextWidth("DELAWARE")
     Printer.Print "DELAWARE"
     psngLastY = Printer.CurrentY
     Printer.Line (0.5, psngLastY + 0.415)-(5.35, psngLastY + 0.415)
     Printer.CurrentY = psngLastY
     Printer.CurrentX = csngCol4 - Printer.TextWidth("TECH")
     Printer.Print "TECH"
    
     Printer.Line (0.5, 1.2)-(7.5, 4.25), , B
     Printer.Line (0.51, 1.21)-(7.49, 1.75), RGB(220, 220, 220), BF
     Printer.Line (0.5, 1.75)-(csngCol1, 3.34), RGB(220, 220, 220), BF
     Printer.Line (0.5, 1.75)-(2.67, 2.08), , B
     Printer.Line (0.5, 1.75)-(2.67, 2.39), , B
     Printer.Line (0.5, 1.75)-(2.67, 2.68), , B
     Printer.Line (0.5, 1.75)-(2.67, 3.04), , B
     Printer.Line (0.5, 1.75)-(2.67, 3.34), , B
     Printer.Line (2.68, 1.75)-(csngCol2 + 0.06, 3.34), RGB(220, 220, 220), BF
     Printer.Line (csngCol1, 1.75)-(csngCol2 + 0.06, 3.34), , B
     Printer.Line (2.67, 1.75)-(4.84, 2.08), , B
     Printer.Line (2.67, 1.75)-(4.84, 2.39), , B
     Printer.Line (2.67, 1.75)-(4.84, 2.68), , B
     Printer.Line (2.67, 1.75)-(4.84, 3.04), , B
     Printer.Line (2.67, 1.75)-(4.84, 3.34), , B
     Printer.Line (4.85, 1.75)-(csngCol3 + 0.05, 3.34), RGB(220, 220, 220), BF
     Printer.Line (csngCol2 + 0.06, 1.75)-(csngCol3 + 0.05, 3.34), , B
     Printer.Line (4.84, 1.75)-(7.5, 2.08), , B
     Printer.Line (4.84, 1.75)-(7.5, 2.39), , B
     Printer.Line (4.84, 1.75)-(7.5, 2.68), , B
     Printer.Line (4.84, 1.75)-(7.5, 3.04), , B
     Printer.Line (4.84, 1.75)-(7.5, 3.34), , B
    
     Printer.FontSize = 28
     Printer.FontName = "Imprint MT Shadow"
     Printer.CurrentY = 1.25
     psngWidth = Printer.TextWidth("Members Receipt")
     Printer.CurrentX = (8 - psngWidth) / 2
     Printer.Print "Members Receipt"
    
     Printer.FontSize = 10
     Printer.FontName = "Arial"
     Printer.CurrentY = 1.85
     psngLastY = Printer.CurrentY
     psngY = Printer.CurrentY + 0.02
    
'Row 1**********************
    
     Printer.CurrentX = csngCol1 - Printer.TextWidth("Date: ")
     Printer.FontBold = True
     Printer.Print "Date:"
     Printer.CurrentY = psngY
     Printer.CurrentX = csngCol1 + 0.025
     Printer.FontSize = 8
     Printer.FontBold = False
     Printer.Print lblDate
    
     Printer.CurrentY = psngLastY
     Printer.FontSize = 10
     Printer.CurrentX = csngCol2 - Printer.TextWidth("Old Balance: ")
     Printer.FontBold = True
     Printer.Print "Old Balance:"
     Printer.CurrentY = psngY
     Printer.CurrentX = csngCol2 + 0.09
     Printer.FontSize = 8
     Printer.FontBold = False
     Printer.Print lblOldbalance
    
     Printer.CurrentY = psngLastY
     Printer.FontSize = 10
     Printer.CurrentX = csngCol3 - Printer.TextWidth("Payment for: ")
     Printer.FontBold = True
     Printer.Print "Payment for:"
     Printer.CurrentY = psngY
     Printer.CurrentX = csngCol3 + 0.09
     Printer.FontSize = 8
     Printer.FontBold = False
     Printer.Print cboPayfor
    
     Printer.Print
     psngLastY = Printer.CurrentY + 0.03
     psngY = Printer.CurrentY + 0.03
  
'Row 2**********************

     Printer.CurrentY = psngLastY
     Printer.FontSize = 10
     Printer.CurrentX = csngCol1 - Printer.TextWidth("Member ID: ")
     Printer.FontBold = True
     Printer.Print "Member ID:"
     Printer.CurrentY = psngY
     Printer.CurrentX = csngCol1 + 0.05
     Printer.FontSize = 8
     Printer.FontBold = False
     Printer.Print lblId
    
     Printer.CurrentY = psngLastY
     Printer.FontSize = 10
     Printer.CurrentX = csngCol2 - Printer.TextWidth("New Charge: ")
     Printer.FontBold = True
     Printer.Print "New Charge:"
     Printer.CurrentY = psngY
     Printer.CurrentX = csngCol2 + 0.09
     Printer.FontSize = 8
     Printer.FontBold = False
     Printer.Print txtNewcharge
    
     Printer.CurrentY = psngLastY
     Printer.FontSize = 10
     Printer.CurrentX = csngCol3 - Printer.TextWidth("How Payed: ")
     Printer.FontBold = True
     Printer.Print "How Payed:"
     Printer.CurrentY = psngY
     Printer.CurrentX = csngCol3 + 0.09
     Printer.FontSize = 8
     Printer.FontBold = False
     Printer.Print cboHow
    
     Printer.Print
     psngLastY = Printer.CurrentY + 0.05
     psngY = Printer.CurrentY + 0.04
    
'Row 3**********************

     Printer.CurrentY = psngLastY
     Printer.FontSize = 10
     Printer.CurrentX = csngCol1 - Printer.TextWidth("Name: ")
     Printer.FontBold = True
     Printer.Print "Name:"
     Printer.CurrentY = psngY
     Printer.CurrentX = csngCol1 + 0.025
     Printer.FontSize = 8
     Printer.FontBold = False
     Printer.Print lblLFname
    
     Printer.CurrentY = psngLastY
     Printer.FontSize = 10
     Printer.CurrentX = csngCol2 - Printer.TextWidth("Amount Received: ")
     Printer.FontBold = True
     Printer.Print "Amount Received:"
     Printer.CurrentY = psngY
     Printer.CurrentX = csngCol2 + 0.09
     Printer.FontSize = 8
     Printer.FontBold = False
     Printer.Print txtAmount
    
     Printer.CurrentY = psngLastY
     Printer.FontSize = 10
     Printer.CurrentX = csngCol3 - Printer.TextWidth("Check #: ")
     Printer.FontBold = True
     Printer.Print "Check #:"
     Printer.CurrentY = psngY
     Printer.CurrentX = csngCol3 + 0.09
     Printer.FontSize = 8
     Printer.FontBold = False
     Printer.Print txtChecknum
    
     Printer.Print
     psngLastY = Printer.CurrentY + 0.09
     psngY = Printer.CurrentY + 0.06
    
'Row 4**********************
    
     Printer.CurrentY = psngLastY
     Printer.FontSize = 10
     Printer.CurrentX = csngCol1 - Printer.TextWidth("Gym Ex: ")
     Printer.FontBold = True
     Printer.Print "Gym Ex:"
     Printer.CurrentY = psngY
     Printer.CurrentX = csngCol1 + 0.025
     Printer.FontSize = 8
     Printer.FontBold = False
     Printer.Print lblExGymDate
    
     Printer.CurrentY = psngLastY
     Printer.FontSize = 10
     Printer.CurrentX = csngCol2 - Printer.TextWidth("New Balance: ")
     Printer.FontBold = True
     Printer.Print "New Balance:"
     Printer.CurrentY = psngY
     Printer.CurrentX = csngCol2 + 0.09
     Printer.FontSize = 8
     Printer.FontBold = False
     Printer.Print lblNewbalance
    
     Printer.CurrentY = psngLastY
     Printer.FontSize = 10
     Printer.CurrentX = csngCol3 - Printer.TextWidth("Next Due Date: ")
     Printer.FontBold = True
     Printer.Print "Next Due Date:"
     Printer.CurrentY = psngY
     Printer.CurrentX = csngCol3 + 0.09
     Printer.FontSize = 8
     Printer.FontBold = False
     Printer.Print txtNext
    
     Printer.Print
     psngLastY = Printer.CurrentY + 0.08
     psngY = Printer.CurrentY + 0.06
    
'Row 5**********************

     Printer.CurrentY = psngLastY
     Printer.FontSize = 10
     Printer.CurrentX = csngCol1 - Printer.TextWidth("Tan Ex: ")
     Printer.FontBold = True
     Printer.Print "Tan Ex:"
     Printer.CurrentY = psngY
     Printer.CurrentX = csngCol1 + 0.025
     Printer.FontSize = 8
     Printer.FontBold = False
     Printer.Print lblExTanDate
    
     Printer.CurrentY = psngLastY
     Printer.FontSize = 10
     Printer.CurrentX = csngCol3 - Printer.TextWidth("Received By: ")
     Printer.FontBold = True
     Printer.Print "Received By:"
     Printer.CurrentY = psngY
     Printer.CurrentX = csngCol3 + 0.09
     Printer.FontSize = 8
     Printer.FontBold = False
     Printer.Print cboReceived
     Printer.Print
     Printer.Print
     psngLastY = Printer.CurrentY
    
    '********************* Gym Info ********************'

     Printer.FontSize = 20
     Printer.FontName = "Imprint MT Shadow"
     psngWidth = Printer.TextWidth("DelTech Health & Fitness")
     Printer.CurrentX = (8.25 - psngWidth) / 2
     Printer.Print "DelTech Health & Fitness"
     psngLastY = Printer.CurrentY
     Printer.FontSize = 8
     Printer.FontName = "Arial"
     psngWidth = Printer.TextWidth("333 Shipley Street")
     Printer.CurrentX = (8.25 - psngWidth) / 2
     Printer.Print "333 Shipley Street"
     psngLastY = Printer.CurrentY
     psngWidth = Printer.TextWidth("Wilmington, Delaware  19801")
     Printer.CurrentX = (8.25 - psngWidth) / 2
     Printer.Print "Wilmington, Delaware  19801"
     psngLastY = Printer.CurrentY
     psngWidth = Printer.TextWidth("(302)571-5300")
     Printer.CurrentX = (8.25 - psngWidth) / 2
     Printer.Print "(302)571-5300"
   
End Sub


Public Sub ReqiresEntry()
    If txtNewcharge = "" Or txtAmount = "" Or cboPayfor.ListIndex = -1 _
    Or cboHow.ListIndex = -1 Or cboReceived.ListIndex = -1 Then
        mblnReq = True
    Else
        mblnReq = False
    End If
End Sub
