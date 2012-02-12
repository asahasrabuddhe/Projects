VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Computer Configuration System"
   ClientHeight    =   6900
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8775
   LinkTopic       =   "Form1"
   ScaleHeight     =   6900
   ScaleWidth      =   8775
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdReset 
      Caption         =   "Reset"
      Height          =   495
      Left            =   7200
      TabIndex        =   24
      Top             =   6240
      Width           =   1455
   End
   Begin VB.CommandButton cmdGenerate 
      Caption         =   "Generate Quote"
      Height          =   495
      Left            =   5640
      TabIndex        =   23
      Top             =   6240
      Width           =   1455
   End
   Begin VB.TextBox txtName 
      Height          =   405
      Left            =   1440
      TabIndex        =   21
      Top             =   120
      Width           =   6855
   End
   Begin VB.Frame frameAcc 
      Caption         =   "Other Accessories"
      Height          =   3255
      Left            =   3000
      TabIndex        =   4
      Top             =   2760
      Width           =   5775
      Begin VB.CheckBox chkAcc 
         Caption         =   "Pen Drive 4GB"
         Height          =   375
         Index           =   14
         Left            =   4080
         TabIndex        =   19
         Top             =   2160
         Width           =   1455
      End
      Begin VB.CheckBox chkAcc 
         Caption         =   "Pen Drive 8GB"
         Height          =   375
         Index           =   13
         Left            =   4080
         TabIndex        =   18
         Top             =   2760
         Width           =   1455
      End
      Begin VB.CheckBox chkAcc 
         Caption         =   "Pen Drive 2GB"
         Height          =   375
         Index           =   12
         Left            =   4080
         TabIndex        =   17
         Top             =   1560
         Width           =   1455
      End
      Begin VB.CheckBox chkAcc 
         Caption         =   "Pen Drive 1GB"
         Height          =   375
         Index           =   11
         Left            =   4080
         TabIndex        =   16
         Top             =   960
         Width           =   1455
      End
      Begin VB.CheckBox chkAcc 
         Caption         =   "UPS"
         Height          =   375
         Index           =   10
         Left            =   4080
         TabIndex        =   15
         Top             =   360
         Width           =   1335
      End
      Begin VB.CheckBox chkAcc 
         Caption         =   "Scanner"
         Height          =   375
         Index           =   9
         Left            =   2040
         TabIndex        =   14
         Top             =   2760
         Width           =   1335
      End
      Begin VB.CheckBox chkAcc 
         Caption         =   "Printer"
         Height          =   375
         Index           =   8
         Left            =   2040
         TabIndex        =   13
         Top             =   2160
         Width           =   1335
      End
      Begin VB.CheckBox chkAcc 
         Caption         =   "Wireless Keyboard and Mouse"
         Height          =   375
         Index           =   7
         Left            =   2040
         TabIndex        =   12
         Top             =   1560
         Width           =   1695
      End
      Begin VB.CheckBox chkAcc 
         Caption         =   "Keyboard and Mouse (Optical)"
         Height          =   375
         Index           =   6
         Left            =   2040
         TabIndex        =   11
         Top             =   960
         Width           =   1575
      End
      Begin VB.CheckBox chkAcc 
         Caption         =   "Keyboard and Mouse (Ball)"
         Height          =   375
         Index           =   5
         Left            =   2040
         TabIndex        =   10
         Top             =   360
         Width           =   1455
      End
      Begin VB.CheckBox chkAcc 
         Caption         =   "DVD Writer"
         Height          =   375
         Index           =   0
         Left            =   120
         TabIndex        =   9
         Top             =   360
         Width           =   1335
      End
      Begin VB.CheckBox chkAcc 
         Caption         =   "Graphics Card"
         Height          =   375
         Index           =   1
         Left            =   120
         TabIndex        =   8
         Top             =   960
         Width           =   1335
      End
      Begin VB.CheckBox chkAcc 
         Caption         =   "Sound Card"
         Height          =   375
         Index           =   2
         Left            =   120
         TabIndex        =   7
         Top             =   1560
         Width           =   1335
      End
      Begin VB.CheckBox chkAcc 
         Caption         =   "TV Tuner Card"
         Height          =   375
         Index           =   3
         Left            =   120
         TabIndex        =   6
         Top             =   2160
         Width           =   1455
      End
      Begin VB.CheckBox chkAcc 
         Caption         =   "Blu Ray Drive"
         Height          =   375
         Index           =   4
         Left            =   120
         TabIndex        =   5
         Top             =   2760
         Width           =   1455
      End
   End
   Begin VB.Frame frameMonitor 
      Caption         =   "Monitor"
      Height          =   2655
      Left            =   0
      TabIndex        =   3
      Top             =   3360
      Width           =   2775
      Begin VB.OptionButton optMonitor 
         Caption         =   "14"" CRT"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   33
         Top             =   360
         Width           =   975
      End
      Begin VB.OptionButton optMonitor 
         Caption         =   "21"" CRT"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   32
         Top             =   2160
         Width           =   975
      End
      Begin VB.OptionButton optMonitor 
         Caption         =   "27""LCD"
         Height          =   255
         Index           =   7
         Left            =   1560
         TabIndex        =   31
         Top             =   2160
         Width           =   975
      End
      Begin VB.OptionButton optMonitor 
         Caption         =   "24""LCD"
         Height          =   255
         Index           =   6
         Left            =   1560
         TabIndex        =   30
         Top             =   1560
         Width           =   975
      End
      Begin VB.OptionButton optMonitor 
         Caption         =   "21""LCD"
         Height          =   255
         Index           =   5
         Left            =   1560
         TabIndex        =   29
         Top             =   960
         Width           =   975
      End
      Begin VB.OptionButton optMonitor 
         Caption         =   "19"" LCD"
         Height          =   255
         Index           =   4
         Left            =   1560
         TabIndex        =   28
         Top             =   360
         Width           =   975
      End
      Begin VB.OptionButton optMonitor 
         Caption         =   "19"" CRT"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   27
         Top             =   1560
         Width           =   975
      End
      Begin VB.OptionButton optMonitor 
         Caption         =   "17"" CRT"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   26
         Top             =   960
         Width           =   975
      End
   End
   Begin VB.Frame frameHDD 
      Caption         =   "Hard-Disk"
      Height          =   1935
      Left            =   4320
      TabIndex        =   2
      Top             =   720
      Width           =   4455
      Begin VB.OptionButton optHDD 
         Caption         =   "500GB"
         Height          =   255
         Index           =   4
         Left            =   1920
         TabIndex        =   52
         Top             =   960
         Width           =   855
      End
      Begin VB.OptionButton optHDD 
         Caption         =   "320GB"
         Height          =   255
         Index           =   3
         Left            =   1920
         TabIndex        =   51
         Top             =   360
         Width           =   855
      End
      Begin VB.OptionButton optHDD 
         Caption         =   "160GB"
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   50
         Top             =   1560
         Width           =   855
      End
      Begin VB.OptionButton optHDD 
         Caption         =   "80GB"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   49
         Top             =   960
         Width           =   855
      End
      Begin VB.OptionButton optHDD 
         Caption         =   "40GB"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   48
         Top             =   360
         Width           =   855
      End
      Begin VB.OptionButton optHDD 
         Caption         =   "750GB"
         Height          =   255
         Index           =   5
         Left            =   1920
         TabIndex        =   47
         Top             =   1560
         Width           =   855
      End
      Begin VB.OptionButton optHDD 
         Caption         =   "1TB"
         Height          =   255
         Index           =   6
         Left            =   3480
         TabIndex        =   46
         Top             =   600
         Width           =   855
      End
      Begin VB.OptionButton optHDD 
         Caption         =   "2TB"
         Height          =   255
         Index           =   7
         Left            =   3480
         TabIndex        =   45
         Top             =   1200
         Width           =   855
      End
   End
   Begin VB.Frame frameRAM 
      Caption         =   "RAM"
      Height          =   1935
      Left            =   3000
      TabIndex        =   1
      Top             =   720
      Width           =   1095
      Begin VB.OptionButton optRAM 
         Caption         =   "4 GB"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   36
         Top             =   1440
         Width           =   735
      End
      Begin VB.OptionButton optRAM 
         Caption         =   "2 GB"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   35
         Top             =   840
         Width           =   735
      End
      Begin VB.OptionButton optRAM 
         Caption         =   "1 GB"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   34
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.Frame frameProcessor 
      Caption         =   "Processor with Motherboard"
      Height          =   2535
      Left            =   0
      TabIndex        =   0
      Top             =   720
      Width           =   2775
      Begin VB.OptionButton optProc 
         Caption         =   "AMD Phantom (Quad Core)"
         Height          =   615
         Index           =   7
         Left            =   1320
         TabIndex        =   44
         Top             =   1800
         Width           =   1335
      End
      Begin VB.OptionButton optProc 
         Caption         =   "Intel Dual Core"
         Height          =   495
         Index           =   6
         Left            =   120
         TabIndex        =   43
         Top             =   720
         Width           =   1215
      End
      Begin VB.OptionButton optProc 
         Caption         =   "Intel Core 2 Duo"
         Height          =   615
         Index           =   5
         Left            =   120
         TabIndex        =   42
         Top             =   1200
         Width           =   1215
      End
      Begin VB.OptionButton optProc 
         Caption         =   "Intel Core 2 Quad"
         Height          =   615
         Index           =   4
         Left            =   120
         TabIndex        =   41
         Top             =   1800
         Width           =   1215
      End
      Begin VB.OptionButton optProc 
         Caption         =   "AMD Phantom (Tri Core)"
         Height          =   615
         Index           =   3
         Left            =   1320
         TabIndex        =   40
         Top             =   1200
         Width           =   1335
      End
      Begin VB.OptionButton optProc 
         Caption         =   "AMD Sempron"
         Height          =   495
         Index           =   2
         Left            =   1320
         TabIndex        =   39
         Top             =   240
         Width           =   1215
      End
      Begin VB.OptionButton optProc 
         Caption         =   "AMD Athlon (Dual Core)"
         Height          =   495
         Index           =   1
         Left            =   1320
         TabIndex        =   38
         Top             =   720
         Width           =   1215
      End
      Begin VB.OptionButton optProc 
         Caption         =   "Intel Core Solo"
         Height          =   495
         Index           =   0
         Left            =   120
         TabIndex        =   37
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Label lblCost 
      AutoSize        =   -1  'True
      Height          =   195
      Left            =   120
      TabIndex        =   25
      Top             =   6480
      Visible         =   0   'False
      Width           =   45
   End
   Begin VB.Label lblName 
      AutoSize        =   -1  'True
      Height          =   195
      Left            =   120
      TabIndex        =   22
      Top             =   6120
      Visible         =   0   'False
      Width           =   45
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "Enter Your Name"
      Height          =   195
      Left            =   120
      TabIndex        =   20
      Top             =   240
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim pmb As Double
Dim ram As Double
Dim hdd As Double
Dim mon As Double
Dim ota As Double
Dim rates(0 To 14) As Double
Dim total As Double
Dim i As Integer
Dim cnt As Integer

Private Sub chkAcc_Click(Index As Integer)
If chkAcc(Index).Value = 1 Then
    ota = ota + rates(Index)
Else
    ota = ota - rates(Index)
End If
End Sub

Private Sub cmdGenerate_Click()
total = pmb + ram + hdd + mon + ota
lblName.Caption = "Welcome, " & txtName.Text
lblCost.Caption = "Total cost of your selected configuration is," & total
lblName.Visible = True
lblCost.Visible = True
End Sub

Private Sub cmdReset_Click()
pmb = 0
ram = 0
hdd = 0
mon = 0
ota = 0
total = 0
txtName.Text = ""
lblName.Visible = False
lblCost.Visible = False
i = 0
cnt = chkAcc.Count
While i < cnt
    If chkAcc(i).Value = 1 Then
        chkAcc(i).Value = 0
    End If
    i = i + 1
Wend
i = 0
cnt = optHDD.Count
While i < cnt
    If optHDD(i).Value = True Then
        optHDD(i).Value = False
    End If
    i = i + 1
Wend
i = 0
cnt = optMonitor.Count
While i < cnt
    If optMonitor(i).Value = True Then
        optMonitor(i).Value = False
    End If
    i = i + 1
Wend
i = 0
cnt = optProc.Count
While i < cnt
    If optProc(i).Value = True Then
        optProc(i).Value = False
    End If
    i = i + 1
Wend
i = 0
cnt = optRAM.Count
While i < cnt
    If optRAM(i).Value = True Then
        optRAM(i).Value = False
    End If
    i = i + 1
Wend
End Sub

Private Sub Form_Load()
pmb = 0
ram = 0
hdd = 0
mon = 0
ota = 0
total = 0
rates(0) = 1100
rates(1) = 2850
rates(2) = 3500
rates(3) = 1000
rates(4) = 19500
rates(5) = 250
rates(6) = 450
rates(7) = 1200
rates(8) = 5000
rates(9) = 2500
rates(10) = 4500
rates(11) = 250
rates(12) = 350
rates(13) = 550
rates(14) = 950
End Sub

Private Sub optHDD_Click(Index As Integer)
Select Case Index
    Case 0
        hdd = 1200
    Case 1
        hdd = 1800
    Case 2
        hdd = 2400
    Case 3
        hdd = 3200
    Case 4
        hdd = 4000
    Case 5
        hdd = 5000
    Case 6
        hdd = 6000
    Case 7
        hdd = 7100
End Select
End Sub

Private Sub optMonitor_Click(Index As Integer)
Select Case Index
    Case 0
        mon = 5500
    Case 1
        mon = 7500
    Case 2
        mon = 9500
    Case 3
        mon = 11500
    Case 4
        mon = 7500
    Case 5
        mon = 9500
    Case 6
        mon = 11500
    Case 7
        mon = 13500
End Select
End Sub

Private Sub optProc_Click(Index As Integer)
Select Case Index
    Case 0
        pmb = 3000
    Case 1
        pmb = 4000
    Case 2
        pmb = 2500
    Case 3
        pmb = 6500
    Case 4
        pmb = 9500
    Case 5
        pmb = 6500
    Case 6
        pmb = 3500
    Case 7
        pmb = 8500
End Select
End Sub

Private Sub optRAM_Click(Index As Integer)
Select Case Index
    Case 0
        ram = 800
    Case 1
        ram = 1200
    Case 2
        ram = 1600
End Select
End Sub
