VERSION 5.00
Begin VB.Form frmSchedule 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Schedule"
   ClientHeight    =   8295
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7800
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmSchedule.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   8295
   ScaleWidth      =   7800
   Begin VB.CommandButton cmdCal 
      Caption         =   "View Calander"
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
      Left            =   6120
      MaskColor       =   &H00E0E0E0&
      TabIndex        =   53
      Top             =   8040
      Width           =   1695
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "Update Record"
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
      Left            =   0
      MaskColor       =   &H00E0E0E0&
      TabIndex        =   52
      Top             =   8040
      Width           =   1695
   End
   Begin VB.Timer tmr1 
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin VB.Frame fraClosed 
      Height          =   855
      Left            =   6480
      TabIndex        =   50
      Top             =   7200
      Width           =   1335
      Begin VB.Shape shpClosed 
         BackColor       =   &H00E0E0E0&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00008000&
         BorderWidth     =   2
         FillColor       =   &H00008000&
         FillStyle       =   4  'Upward Diagonal
         Height          =   255
         Left            =   120
         Top             =   240
         Width           =   495
      End
      Begin VB.Label lblClosed 
         Caption         =   "Closed"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   650
         TabIndex        =   51
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.Frame fraWeekEdnShift 
      Height          =   855
      Left            =   2880
      TabIndex        =   46
      Top             =   7200
      Width           =   3615
      Begin VB.Label lblWeekend 
         Alignment       =   2  'Center
         Caption         =   "Weekend Shift:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   610
         TabIndex        =   49
         Top             =   240
         Width           =   1335
      End
      Begin VB.Shape shpWend 
         BackColor       =   &H00C0FFFF&
         BackStyle       =   1  'Opaque
         Height          =   255
         Left            =   120
         Top             =   240
         Width           =   495
      End
      Begin VB.Label lblSatTime 
         Caption         =   "Sat. 7:00am - 3:00pm"
         Height          =   255
         Left            =   1960
         TabIndex        =   48
         Top             =   240
         Width           =   1575
      End
      Begin VB.Label lblSunTime 
         Caption         =   "Sun. 7:00am - 1:30pm"
         Height          =   255
         Left            =   1960
         TabIndex        =   47
         Top             =   480
         Width           =   1575
      End
   End
   Begin VB.Frame fraWeekShift 
      Height          =   855
      Left            =   0
      TabIndex        =   41
      Top             =   7200
      Width           =   2895
      Begin VB.Label lblShift1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "1rst Shift:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   600
         TabIndex        =   45
         Top             =   180
         Width           =   855
      End
      Begin VB.Label lblShift2 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "2nd Shift:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   600
         TabIndex        =   44
         Top             =   540
         Width           =   855
      End
      Begin VB.Shape shpshift1 
         BackColor       =   &H00FFFFFF&
         BackStyle       =   1  'Opaque
         Height          =   255
         Left            =   120
         Top             =   180
         Width           =   495
      End
      Begin VB.Shape shpShift2 
         BackColor       =   &H80000018&
         BackStyle       =   1  'Opaque
         Height          =   255
         Left            =   120
         Top             =   540
         Width           =   495
      End
      Begin VB.Label lblTime1 
         Caption         =   "4:00am - 12:30pm"
         Height          =   255
         Left            =   1500
         TabIndex        =   43
         Top             =   200
         Width           =   1335
      End
      Begin VB.Label lblTime2 
         Caption         =   "12:30pm - 9:00pm"
         Height          =   255
         Left            =   1500
         TabIndex        =   42
         Top             =   540
         Width           =   1335
      End
   End
   Begin VB.Frame fraSchedule 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   7335
      Left            =   -120
      TabIndex        =   12
      Top             =   0
      Width           =   7935
      Begin VB.CommandButton cmdPrint 
         Caption         =   "Print"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   40
         Top             =   240
         Width           =   735
      End
      Begin VB.TextBox txtMon1 
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
         Height          =   3245
         Left            =   1920
         MultiLine       =   -1  'True
         TabIndex        =   1
         Top             =   720
         Width           =   855
      End
      Begin VB.TextBox txtFri2 
         BackColor       =   &H80000018&
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
         Height          =   3135
         Left            =   5880
         MultiLine       =   -1  'True
         TabIndex        =   10
         Top             =   3960
         Width           =   855
      End
      Begin VB.TextBox txtThur2 
         BackColor       =   &H80000018&
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
         Height          =   3135
         Left            =   4920
         MultiLine       =   -1  'True
         TabIndex        =   9
         Top             =   3960
         Width           =   855
      End
      Begin VB.TextBox txtWed2 
         BackColor       =   &H80000018&
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
         Height          =   3135
         Left            =   3840
         MultiLine       =   -1  'True
         TabIndex        =   8
         Top             =   3960
         Width           =   975
      End
      Begin VB.TextBox txtTue2 
         BackColor       =   &H80000018&
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
         Height          =   3135
         Left            =   2880
         MultiLine       =   -1  'True
         TabIndex        =   7
         Top             =   3960
         Width           =   855
      End
      Begin VB.TextBox txtMon2 
         BackColor       =   &H80000018&
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
         Height          =   3135
         Left            =   1920
         MultiLine       =   -1  'True
         TabIndex        =   6
         Top             =   3960
         Width           =   855
      End
      Begin VB.TextBox txtSat 
         BackColor       =   &H00C0FFFF&
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
         Height          =   3135
         Left            =   6840
         MultiLine       =   -1  'True
         TabIndex        =   11
         Top             =   1800
         Width           =   855
      End
      Begin VB.TextBox txtFri1 
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
         Height          =   3245
         Left            =   5880
         MultiLine       =   -1  'True
         TabIndex        =   5
         Top             =   720
         Width           =   855
      End
      Begin VB.TextBox txtThur1 
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
         Height          =   3245
         Left            =   4920
         MultiLine       =   -1  'True
         TabIndex        =   4
         Top             =   720
         Width           =   855
      End
      Begin VB.TextBox txtWed1 
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
         Height          =   3245
         Left            =   3840
         MultiLine       =   -1  'True
         TabIndex        =   3
         Top             =   720
         Width           =   975
      End
      Begin VB.TextBox txtTue1 
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
         Height          =   3245
         Left            =   2880
         MultiLine       =   -1  'True
         TabIndex        =   2
         Top             =   720
         Width           =   855
      End
      Begin VB.TextBox txtSun 
         BackColor       =   &H00C0FFFF&
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
         Height          =   2535
         Left            =   960
         MultiLine       =   -1  'True
         TabIndex        =   0
         Top             =   1800
         Width           =   855
      End
      Begin VB.Frame fraTime 
         Height          =   6735
         Left            =   120
         TabIndex        =   21
         Top             =   480
         Width           =   735
         Begin VB.Label lbl9pm 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "9pm"
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
            TabIndex        =   39
            Top             =   6360
            Width           =   495
         End
         Begin VB.Label lbl8pm 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "8pm"
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
            TabIndex        =   38
            Top             =   6000
            Width           =   495
         End
         Begin VB.Label lbl7pm 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "7pm"
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
            TabIndex        =   37
            Top             =   5640
            Width           =   495
         End
         Begin VB.Label lbl6pm 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "6pm"
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
            TabIndex        =   36
            Top             =   5280
            Width           =   495
         End
         Begin VB.Label lbl5pm 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "5pm"
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
            TabIndex        =   35
            Top             =   4920
            Width           =   495
         End
         Begin VB.Label lbl4pm 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "4pm"
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
            TabIndex        =   34
            Top             =   4560
            Width           =   495
         End
         Begin VB.Label lbl3pm 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "3pm"
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
            TabIndex        =   33
            Top             =   4200
            Width           =   495
         End
         Begin VB.Label lbl2pm 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "2pm"
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
            Top             =   3840
            Width           =   495
         End
         Begin VB.Label lbl1pm 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "1pm"
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
            Top             =   3480
            Width           =   495
         End
         Begin VB.Label lbl12pm 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "12pm"
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
            TabIndex        =   30
            Top             =   3120
            Width           =   495
         End
         Begin VB.Label lbl11am 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "11am"
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
            TabIndex        =   29
            Top             =   2760
            Width           =   495
         End
         Begin VB.Label lbl10am 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "10am"
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
            TabIndex        =   28
            Top             =   2400
            Width           =   495
         End
         Begin VB.Label lbl9am 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "9am"
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
            Top             =   2040
            Width           =   495
         End
         Begin VB.Label lbl8am 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "8am"
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
            Top             =   1680
            Width           =   495
         End
         Begin VB.Label lbl7am 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "7am"
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
            TabIndex        =   25
            Top             =   1320
            Width           =   495
         End
         Begin VB.Label lbl6am 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "6am"
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
            TabIndex        =   24
            Top             =   960
            Width           =   495
         End
         Begin VB.Label lbl5am 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "5am"
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
            Top             =   600
            Width           =   495
         End
         Begin VB.Label lbl4am 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "4am"
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
            TabIndex        =   22
            Top             =   240
            Width           =   495
         End
      End
      Begin VB.Frame fraDays 
         Height          =   495
         Left            =   840
         TabIndex        =   13
         Top             =   120
         Width           =   6975
         Begin VB.Label lblSunday 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "Sunday"
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
            TabIndex        =   20
            Top             =   180
            Width           =   855
         End
         Begin VB.Label lblThursday 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "Thursday"
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
            Left            =   4080
            TabIndex        =   19
            Top             =   180
            Width           =   855
         End
         Begin VB.Label lblWednesday 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "Wednesday"
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
            Left            =   3000
            TabIndex        =   18
            Top             =   180
            Width           =   975
         End
         Begin VB.Label lblTuesday 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "Tuesday"
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
            Left            =   2040
            TabIndex        =   17
            Top             =   180
            Width           =   855
         End
         Begin VB.Label lblMonday 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "Monday"
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
            Left            =   1080
            TabIndex        =   16
            Top             =   180
            Width           =   855
         End
         Begin VB.Label lblFriday 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "Friday"
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
            Left            =   5040
            TabIndex        =   15
            Top             =   180
            Width           =   855
         End
         Begin VB.Label lblSaturday 
            Alignment       =   2  'Center
            BackColor       =   &H00008000&
            Caption         =   "Saturday"
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
            Left            =   6000
            TabIndex        =   14
            Top             =   180
            Width           =   855
         End
      End
      Begin VB.Shape shpSat2 
         BackColor       =   &H00E0E0E0&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00008000&
         BorderWidth     =   2
         FillColor       =   &H00008000&
         FillStyle       =   4  'Upward Diagonal
         Height          =   2145
         Left            =   6840
         Top             =   4950
         Width           =   855
      End
      Begin VB.Shape shpSat1 
         BackColor       =   &H00E0E0E0&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00008000&
         BorderWidth     =   2
         FillColor       =   &H00008000&
         FillStyle       =   4  'Upward Diagonal
         Height          =   1095
         Left            =   6840
         Top             =   720
         Width           =   855
      End
      Begin VB.Shape shpSun2 
         BackColor       =   &H00E0E0E0&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00008000&
         BorderWidth     =   2
         FillColor       =   &H00008000&
         FillStyle       =   4  'Upward Diagonal
         Height          =   2715
         Left            =   960
         Top             =   4350
         Width           =   855
      End
      Begin VB.Shape shpSun1 
         BackColor       =   &H00E0E0E0&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00008000&
         BorderWidth     =   2
         FillColor       =   &H00008000&
         FillStyle       =   4  'Upward Diagonal
         Height          =   1095
         Left            =   960
         Top             =   720
         Width           =   855
      End
   End
End
Attribute VB_Name = "frmSchedule"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim cur As String, first As String, last As String
Dim mrstSch As Recordset

Private Sub cmdCal_Click()
    frmCal.Show
End Sub

Private Sub cmdPrint_Click()
    'frmschedule.PrintForm
End Sub

Private Sub cmdUpdate_Click()
    If gblnPriv = True Then
        WriteRecord
        mrstSch.Update
        ShowRecord
    ElseIf gblnPriv = False Then
        MsgBox "Master Access Only!!!", vbOKOnly + vbInformation
    End If
End Sub

Private Sub Form_Load()
    Dim pdbSch As Database
    
    Set pdbSch = OpenDatabase(App.Path & "\Gym_Members.mdb")
    Set mrstSch = pdbSch.OpenRecordset("tblSchedule")
    mrstSch.MoveFirst
    ShowRecord
cur = Format$(Date, "dddd")

Select Case cur
    Case "Sunday"
        first = Date
        last = Date + 6
        lblSunday.BackColor = vbRed
        lblSunday.ForeColor = vbYellow
    Case "Monday"
        first = Date - 1
        last = Date + 5
        lblMonday.BackColor = vbRed
        lblMonday.ForeColor = vbYellow
    Case "Tuesday"
        first = Date - 2
        last = Date + 4
        lblTuesday.BackColor = vbRed
        lblTuesday.ForeColor = vbYellow
    Case "Wednesday"
        first = Date - 3
        last = Date + 3
        lblWednesday.BackColor = vbRed
        lblWednesday.ForeColor = vbYellow
    Case "Thursday"
        first = Date - 4
        last = Date + 2
        lblThursday.BackColor = vbRed
        lblThursday.ForeColor = vbYellow
    Case "Friday"
        first = Date - 5
        last = Date + 1
        lblFriday.BackColor = vbRed
        lblFriday.ForeColor = vbYellow
    Case "Saturday"
        first = Date - 6
        last = Date
        lblSaturday.BackColor = vbRed
        lblSaturday.ForeColor = vbYellow
End Select
    tmr1_Timer
End Sub

Private Sub tmr1_Timer()
    frmSchedule.Caption = "Schedule  " & first _
    & "   -   " & last & "                             " & Time
End Sub

Public Sub WriteRecord()
    With mrstSch
        .Edit
        !fldSun = txtSun
        !fldMon1 = txtMon1
        !fldTues1 = txtTue1
        !fldWed1 = txtWed1
        !fldThurs1 = txtThur1
        !fldFri1 = txtFri1
        !fldMon2 = txtMon2
        !fldTues2 = txtTue2
        !fldWed2 = txtWed2
        !fldThurs2 = txtThur2
        !fldFri2 = txtFri2
        !fldSat = txtSat
    End With
End Sub

Public Sub ShowRecord()
    With mrstSch
        txtSun = !fldSun
        txtMon1 = !fldMon1
        txtTue1 = !fldTues1
        txtWed1 = !fldWed1
        txtThur1 = !fldThurs1
        txtFri1 = !fldFri1
        txtMon2 = !fldMon2
        txtTue2 = !fldTues2
        txtWed2 = !fldWed2
        txtThur2 = !fldThurs2
        txtFri2 = !fldFri2
        txtSat = !fldSat
    End With
End Sub
