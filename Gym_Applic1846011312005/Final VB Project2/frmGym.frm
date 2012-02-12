VERSION 5.00
Begin VB.Form frmGym 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Gym Members"
   ClientHeight    =   6375
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7590
   FillStyle       =   0  'Solid
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmGym.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   6375
   ScaleWidth      =   7590
   Begin VB.Frame fraButton 
      Caption         =   "Buttons"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   0
      TabIndex        =   51
      Top             =   4920
      Width           =   7575
      Begin VB.CommandButton cmdOD 
         Caption         =   "Overdue Members"
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
         Left            =   5760
         TabIndex        =   68
         Top             =   360
         Width           =   1705
      End
      Begin VB.CommandButton cmdExp 
         Caption         =   "Expired Members"
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
         Left            =   3900
         TabIndex        =   67
         Top             =   360
         Width           =   1705
      End
      Begin VB.CommandButton cmdBrowse 
         Caption         =   "Browse Records"
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
         Left            =   1980
         TabIndex        =   64
         Top             =   1080
         Width           =   1705
      End
      Begin VB.CommandButton cmdRecFile 
         Caption         =   "Receipt File"
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
         Left            =   1980
         TabIndex        =   60
         Top             =   720
         Width           =   1705
      End
      Begin VB.CommandButton cmdEnter 
         Caption         =   "Enter New Record"
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
         TabIndex        =   59
         Top             =   360
         Width           =   1705
      End
      Begin VB.CommandButton cmdFind 
         Caption         =   "Find Record"
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
         TabIndex        =   58
         Top             =   720
         Width           =   1705
      End
      Begin VB.CommandButton cmdNext 
         Caption         =   "Next Record"
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
         Left            =   5760
         TabIndex        =   57
         Top             =   1080
         Width           =   1705
      End
      Begin VB.CommandButton cmdPrev 
         Caption         =   "Previous Record"
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
         Left            =   3900
         TabIndex        =   56
         Top             =   1080
         Width           =   1705
      End
      Begin VB.CommandButton cmdLast 
         Caption         =   "Last Record"
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
         Left            =   5760
         TabIndex        =   55
         Top             =   720
         Width           =   1705
      End
      Begin VB.CommandButton cmdFirst 
         Caption         =   "First Record"
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
         Left            =   3900
         TabIndex        =   54
         Top             =   720
         Width           =   1705
      End
      Begin VB.CommandButton cmdUpdate 
         Caption         =   "Update Record"
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
         TabIndex        =   53
         Top             =   1080
         Width           =   1705
      End
      Begin VB.CommandButton cmdNewReceipt 
         Caption         =   "New Receipt"
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
         Left            =   1980
         TabIndex        =   52
         Top             =   360
         Width           =   1705
      End
   End
   Begin VB.Frame fraAccount 
      Caption         =   "Account Information"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   0
      TabIndex        =   44
      Top             =   3900
      Width           =   7575
      Begin VB.TextBox txtLate 
         Alignment       =   2  'Center
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
         Left            =   5520
         Locked          =   -1  'True
         TabIndex        =   70
         Top             =   480
         Width           =   915
      End
      Begin VB.TextBox txtAmountdue 
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
         Left            =   1920
         TabIndex        =   21
         Top             =   480
         Width           =   1695
      End
      Begin VB.TextBox txtInstall 
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
         Left            =   3720
         TabIndex        =   22
         Top             =   480
         Width           =   1695
      End
      Begin VB.TextBox txtPayduedate 
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
         Left            =   120
         TabIndex        =   20
         Top             =   480
         Width           =   1695
      End
      Begin VB.Label lblLate 
         Alignment       =   2  'Center
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Days Late"
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
         Left            =   5520
         TabIndex        =   69
         Top             =   240
         Width           =   915
      End
      Begin VB.Label lblBalanceHeader 
         Alignment       =   2  'Center
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Balance"
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
         Left            =   6520
         TabIndex        =   49
         Top             =   240
         Width           =   915
      End
      Begin VB.Label lblBalance 
         Alignment       =   2  'Center
         Caption         =   "$0.00"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   195
         Left            =   6520
         TabIndex        =   48
         Top             =   540
         Width           =   915
      End
      Begin VB.Label lblInstall 
         Alignment       =   2  'Center
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Install Amount"
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
         Left            =   3720
         TabIndex        =   47
         Top             =   240
         Width           =   1695
      End
      Begin VB.Label lblAmountdue 
         Alignment       =   2  'Center
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Amount due"
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
         Left            =   1920
         TabIndex        =   46
         Top             =   240
         Width           =   1695
      End
      Begin VB.Label lblPayduedate 
         Alignment       =   2  'Center
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Payment due date"
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
         TabIndex        =   45
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Frame fraRecommend 
      Caption         =   "Recommended"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Left            =   5880
      TabIndex        =   43
      Top             =   0
      Width           =   1695
      Begin VB.TextBox txtRecommed 
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
         Left            =   120
         TabIndex        =   5
         Top             =   360
         Width           =   1455
      End
   End
   Begin VB.Frame fraNotes 
      Caption         =   "Notes"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3015
      Left            =   5880
      TabIndex        =   39
      Top             =   840
      Width           =   1695
      Begin VB.TextBox txtNotes 
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
         Height          =   2655
         Left            =   120
         MultiLine       =   -1  'True
         TabIndex        =   23
         Top             =   240
         Width           =   1455
      End
   End
   Begin VB.Frame fraInfo 
      Caption         =   "Information"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   0
      TabIndex        =   30
      Top             =   1920
      Width           =   5775
      Begin VB.TextBox txtSS 
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
         Left            =   4500
         MaxLength       =   11
         TabIndex        =   19
         Top             =   1440
         Width           =   1035
      End
      Begin VB.TextBox txtPhone 
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
         Left            =   2640
         MaxLength       =   13
         TabIndex        =   18
         Top             =   1440
         Width           =   1215
      End
      Begin VB.TextBox txtDOB 
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
         Left            =   840
         MaxLength       =   10
         TabIndex        =   17
         Top             =   1440
         Width           =   975
      End
      Begin VB.TextBox txtCity 
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
         Left            =   840
         TabIndex        =   14
         Top             =   960
         Width           =   2295
      End
      Begin VB.TextBox txtZip 
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
         Left            =   4860
         MaxLength       =   5
         TabIndex        =   16
         Top             =   960
         Width           =   675
      End
      Begin VB.TextBox txtStreet 
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
         Left            =   840
         TabIndex        =   13
         Top             =   480
         Width           =   4695
      End
      Begin VB.ComboBox cboState 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         ItemData        =   "frmGym.frx":030A
         Left            =   3840
         List            =   "frmGym.frx":03A7
         Style           =   2  'Dropdown List
         TabIndex        =   15
         Top             =   960
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
         Left            =   160
         TabIndex        =   42
         Top             =   960
         Width           =   690
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
         Left            =   3255
         TabIndex        =   41
         Top             =   960
         Width           =   600
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
         Left            =   4470
         TabIndex        =   40
         Top             =   960
         Width           =   405
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
         Left            =   3900
         TabIndex        =   38
         Top             =   1440
         Width           =   615
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
         Left            =   1830
         TabIndex        =   37
         Top             =   1440
         Width           =   825
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
         Left            =   160
         TabIndex        =   36
         Top             =   1440
         Width           =   690
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
         Left            =   160
         TabIndex        =   33
         Top             =   480
         Width           =   690
      End
   End
   Begin VB.Frame fraExpire 
      Caption         =   "Expiration Date"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1035
      Left            =   2040
      TabIndex        =   27
      Top             =   840
      Width           =   3735
      Begin VB.ComboBox cboGym_date 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         ItemData        =   "frmGym.frx":0478
         Left            =   2640
         List            =   "frmGym.frx":048B
         Style           =   2  'Dropdown List
         TabIndex        =   10
         Top             =   240
         Width           =   975
      End
      Begin VB.ComboBox cboTan_date 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         ItemData        =   "frmGym.frx":04B7
         Left            =   2640
         List            =   "frmGym.frx":04CA
         Style           =   2  'Dropdown List
         TabIndex        =   12
         Top             =   600
         Width           =   975
      End
      Begin VB.TextBox txtEx_tan 
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
         Height          =   300
         Left            =   840
         MaxLength       =   10
         TabIndex        =   11
         Top             =   600
         Width           =   1695
      End
      Begin VB.TextBox txtEx_gym 
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
         Height          =   300
         Left            =   840
         MaxLength       =   10
         TabIndex        =   9
         Top             =   240
         Width           =   1695
      End
      Begin VB.Label lblTE 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "(Expired)"
         ForeColor       =   &H000000FF&
         Height          =   300
         Left            =   1800
         TabIndex        =   66
         Top             =   600
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label lblGE 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "(Expired)"
         ForeColor       =   &H000000FF&
         Height          =   300
         Left            =   1800
         TabIndex        =   65
         Top             =   240
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label lblEx_tan 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Tannig:"
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
         Left            =   180
         TabIndex        =   29
         Top             =   600
         Width           =   675
      End
      Begin VB.Label lblEx_gym 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Gym:"
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
         Left            =   180
         TabIndex        =   28
         Top             =   240
         Width           =   675
      End
   End
   Begin VB.Frame fraType 
      Caption         =   "MemberShip"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1035
      Left            =   0
      TabIndex        =   25
      Top             =   840
      Width           =   1935
      Begin VB.OptionButton optGym_Tanning 
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   720
         Width           =   255
      End
      Begin VB.OptionButton optTanning 
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   480
         Width           =   255
      End
      Begin VB.OptionButton optGym 
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   240
         Width           =   255
      End
      Begin VB.Label lblG 
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Gym"
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
         Height          =   260
         Left            =   360
         TabIndex        =   63
         Top             =   240
         Width           =   1335
      End
      Begin VB.Label lblT 
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Tanning"
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
         Height          =   260
         Left            =   360
         TabIndex        =   62
         Top             =   480
         Width           =   1335
      End
      Begin VB.Label lblGT 
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Gym && Tanning"
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
         Height          =   260
         Left            =   360
         TabIndex        =   61
         Top             =   720
         Width           =   1335
      End
   End
   Begin VB.Frame fraId_Name 
      Caption         =   "Member"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Left            =   0
      TabIndex        =   24
      Top             =   0
      Width           =   4695
      Begin VB.TextBox txtFirstName 
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
         Left            =   2940
         MaxLength       =   10
         TabIndex        =   2
         Top             =   420
         Width           =   1635
      End
      Begin VB.TextBox txtLastName 
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
         Left            =   1200
         MaxLength       =   11
         TabIndex        =   1
         Top             =   420
         Width           =   1635
      End
      Begin VB.TextBox txtId 
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
         Left            =   120
         TabIndex        =   0
         Top             =   420
         Width           =   975
      End
      Begin VB.Label lblFirstName 
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "First Name"
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
         Left            =   2940
         TabIndex        =   50
         Top             =   195
         Width           =   1635
      End
      Begin VB.Label lblId 
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Member ID"
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
         Top             =   190
         Width           =   975
      End
      Begin VB.Label lblLastName 
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Last Name"
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
         Left            =   1200
         TabIndex        =   34
         Top             =   195
         Width           =   1635
      End
   End
   Begin VB.Frame fraGender 
      Caption         =   "Gender"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Left            =   4800
      TabIndex        =   26
      Top             =   0
      Width           =   975
      Begin VB.OptionButton optF 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   600
         TabIndex        =   4
         Top             =   480
         Width           =   255
      End
      Begin VB.OptionButton optM 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   480
         Width           =   255
      End
      Begin VB.Label lblF 
         Alignment       =   2  'Center
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "F"
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
         Left            =   580
         TabIndex        =   32
         Top             =   240
         Width           =   255
      End
      Begin VB.Label lblM 
         Alignment       =   2  'Center
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "M"
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
         Left            =   220
         TabIndex        =   31
         Top             =   240
         Width           =   255
      End
   End
End
Attribute VB_Name = "frmGym"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim flag As Integer
Dim mblnBrow As Boolean
Dim mintClear As Integer
Dim mintFind As Integer
Dim mblnCheck As Boolean
Dim mdatGExp As Date
Dim mdatTExp As Date
Dim mdatOD As Date
Dim mintOD As Integer
Dim mblnExpOD As Boolean


Private Sub cmdBrowse_Click()
    If mblnBrow = True Then Form_Load
End Sub

Private Sub cmdExp_Click()
    If mblnExpOD = True Then Form_Load
   
    mrstGym.MoveFirst
    Do Until mrstGym.EOF
        If mrstGym!fldGExp = True Or mrstGym!fldTExp = True Then
            mblnBrow = True
            Set mrstGym = pdbMembers.OpenRecordset("SELECT * FROM tblMembers WHERE fldGExp = true  or fldTExp=true ORDER BY fldMemberID")
            ShowRecord
            mintFind = 0
            mblnExpOD = True
        Exit Sub
        Else
            mrstGym.MoveNext
        End If
    Loop
    MsgBox "No Expired Members!!!", vbOKOnly + vbInformation
    Form_Load
End Sub

Private Sub cmdFind_Click()
    mintClear = 1
    mintFind = 1
    txtId.SetFocus
    ClearRecord
    Set mrstGym = pdbMembers.OpenRecordset("SELECT * FROM tblMembers ORDER BY fldMemberID")
End Sub

Private Sub cmdOD_Click()
    If mblnExpOD = True Then Form_Load
    
    mrstGym.MoveFirst
    Do Until mrstGym.EOF
        If mrstGym!fldOD = True Then
            mblnBrow = True
            Set mrstGym = pdbMembers.OpenRecordset("SELECT * FROM tblMembers WHERE fldOD = true   ORDER BY fldMemberID")
            ShowRecord
            mintFind = 0
            mblnExpOD = True
        Exit Sub
        Else
            mrstGym.MoveNext
        End If
    Loop
    MsgBox "No Overdue Members!!!", vbOKOnly + vbInformation
    Form_Load
End Sub

Private Sub cmdRecFile_Click()
    gblnRec = True
    If frmReceipt.WindowState <> vbMinimized Then
        frmReceipt.Top = mdiDtcc.ScaleHeight / 5
        frmReceipt.Left = mdiDtcc.ScaleWidth / 8
    End If
    frmReceipt.Show
End Sub

Private Sub cmdUpdate_Click()
    Checktxt
    If mblnCheck = False Then
        WriteRecord
        mrstGym.Update
    Else
        MsgBox "All Required!!", vbOKOnly + vbInformation
        mblnCheck = False
    End If
    If flag = False Then ShowRecord
End Sub

Private Sub cmdEnter_Click()
    mrstGym.AddNew
    ClearRecord
    txtLastName.SetFocus
    flag = 1
End Sub

Private Sub cmdFirst_Click()
    mrstGym.MoveFirst
    ShowRecord
End Sub

Private Sub cmdLast_Click()
    mrstGym.MoveLast
    ShowRecord
End Sub

Private Sub cmdNewReceipt_Click()
    gblnRec = False
    If frmReceipt.WindowState <> vbMinimized Then
        frmReceipt.Top = mdiDtcc.ScaleHeight / 5
        frmReceipt.Left = mdiDtcc.ScaleWidth / 8
    End If
    frmReceipt.Show
End Sub

Private Sub mnuExit_Click()
    Unload Me
End Sub

Private Sub cmdNext_Click()
    mrstGym.MoveNext
    If mrstGym.EOF Then mrstGym.MoveLast
    ShowRecord
End Sub

Private Sub cmdPrev_Click()
    mrstGym.MovePrevious
    If mrstGym.BOF Then mrstGym.MoveFirst
    ShowRecord
End Sub

Private Sub Form_Load()
    Set pdbMembers = OpenDatabase(App.Path & "\Gym_Members.mdb")
    Set mrstGym = pdbMembers.OpenRecordset("SELECT * FROM tblMembers ORDER BY fldMemberID")
    mblnBrow = False
    cmdFirst_Click
End Sub

Public Sub ShowRecord()
    With mrstGym
        txtId = !fldMemberID
        txtLastName = !fldLastName
        txtFirstName = !fldFirstName
        If !fldGender = "M" Then optM = True
        If !fldGender = "F" Then optF = True
        If !fldRecommend <> "" Then txtRecommed = !fldRecommend Else txtRecommed = ""
        If !fldMemberShip = "Gym" Then optGym = True
        If !fldMemberShip = "Tanning" Then optTanning = True
        If !fldMemberShip = "Gym & Tanning" Then optGym_Tanning = True
        
        If !fldGymEx <> "" Then
            mdatGExp = !fldGymEx
            If mdatGExp < Date Then
                .Edit
                !fldGExp = True
                .Update
                lblGE.Visible = True
                txtEx_gym.Width = 975
                txtEx_gym.ForeColor = vbRed
                txtEx_gym = !fldGymEx
            Else
                .Edit
                !fldGExp = False
                .Update
                lblGE.Visible = False
                txtEx_gym.Width = 1695
                txtEx_gym.ForeColor = vbBlack
                txtEx_gym = !fldGymEx
            End If
        Else
            .Edit
            !fldGExp = False
            .Update
            lblGE.Visible = False
            txtEx_gym.Width = 1695
            txtEx_gym = ""
        End If
        
        If !fldGymExType <> "" Then cboGym_date = !fldGymExType Else cboGym_date.ListIndex = -1
        
        If !fldTanEx <> "" Then
            mdatTExp = !fldTanEx
            If mdatTExp < Date Then
                .Edit
                !fldTExp = True
                .Update
                lblTE.Visible = True
                txtEx_tan.Width = 975
                txtEx_tan.ForeColor = vbRed
                txtEx_tan = !fldTanEx
            Else
                .Edit
                !fldTExp = False
                .Update
                lblTE.Visible = False
                txtEx_tan.Width = 1695
                txtEx_tan.ForeColor = vbBlack
                txtEx_tan = !fldTanEx
            End If
        Else
            .Edit
            !fldTExp = False
            .Update
            lblTE.Visible = False
            txtEx_tan.Width = 1695
            txtEx_tan = ""
        End If
        
        If !fldTanExType <> "" Then cboTan_date = !fldTanExType Else cboTan_date.ListIndex = -1
        txtStreet = !fldStreet
        txtCity = !fldCity
        cboState = !fldState
        txtZip = !fldZip
        txtDOB = !fldDOB
        txtPhone = !fldPhoneNumber
        txtSS = !fldSoc
        
        If !fldPayDue <> "" Then
            txtPayduedate = !fldPayDue
            mdatOD = !fldPayDue
            mintOD = Date - mdatOD
            If mintOD > 0 Then
                txtLate = mintOD
                .Edit
                !fldOD = True
                .Update
            Else
                txtLate = "0"
                .Edit
                !fldOD = False
                .Update
            End If
        Else
            txtPayduedate = ""
            txtLate = "0"
            .Edit
            !fldOD = False
            .Update
        End If
        
        txtAmountdue = Format(!fldAmountDue, "Currency")
        txtInstall = Format(!fldInstallAmount, "Currency")
        lblBalance = Format(!fldBalance, "Currency")
        If !fldNotes <> "" Then txtNotes = !fldNotes Else txtNotes = ""
    End With
End Sub

Public Sub ClearRecord()

    If mintClear = 1 Then
        txtId = ""
        mintClear = 0
    Else
        txtId = mrstGym!fldMemberID
    End If
    txtLastName = ""
    txtFirstName = ""
    optM.Value = False
    optM.TabStop = True
    optF.Value = False
    txtRecommed = ""
    optGym.Value = False
    optGym.TabStop = True
    optTanning.Value = False
    optGym_Tanning.Value = False
    txtEx_gym = ""
    cboGym_date.ListIndex = -1
    txtEx_tan = ""
    cboTan_date.ListIndex = -1
    txtStreet = ""
    txtCity = ""
    cboState.ListIndex = -1
    txtZip = ""
    txtDOB = ""
    txtPhone = ""
    txtSS = ""
    txtPayduedate = ""
    txtAmountdue = ""
    txtInstall = ""
    lblBalance = Format(0, "Currency")
    txtNotes = ""
    lblGE.Visible = False
    txtEx_gym.Width = 1695
    lblTE.Visible = False
    txtEx_tan.Width = 1695
    txtLate = "0"
End Sub

Public Sub WriteRecord()
    With mrstGym
        If flag = 1 Then
            !fldMemberID = txtId
            flag = 0
        Else
            .Edit
        End If
        !fldLastName = txtLastName
        !fldFirstName = txtFirstName
        If optM = True Then !fldGender = "M"
        If optF = True Then !fldGender = "F"
        If txtRecommed <> "" Then !fldRecommend = txtRecommed Else !fldRecommend = ""
        If optGym = True Then !fldMemberShip = "Gym"
        If optTanning = True Then !fldMemberShip = "Tanning"
        If optGym_Tanning = True Then !fldMemberShip = "Gym & Tanning"
        If txtEx_gym <> "" Then !fldGymEx = txtEx_gym Else !fldGymEx = Null
        If cboGym_date <> "" Then !fldGymExType = cboGym_date
        If txtEx_tan <> "" Then !fldTanEx = txtEx_tan Else !fldTanEx = Null
        If cboTan_date <> "" Then !fldTanExType = cboTan_date
        !fldStreet = txtStreet
        !fldCity = txtCity
        !fldState = cboState
        !fldZip = txtZip
        !fldDOB = txtDOB
        !fldPhoneNumber = txtPhone
        If txtSS <> "" Then !fldSoc = txtSS
        If txtPayduedate <> "" Then !fldPayDue = txtPayduedate Else !fldPayDue = Null
        If txtAmountdue <> "" Then !fldAmountDue = txtAmountdue Else !fldAmountDue = "0"
        If txtInstall <> "" Then !fldInstallAmount = txtInstall Else !fldInstallAmount = "0"
        !fldBalance = lblBalance
        If txtNotes <> "" Then !fldNotes = txtNotes Else !fldNotes = ""
    End With
End Sub

Private Sub txtId_KeyPress(KeyAscii As Integer)
    If mintFind = 1 Then
        If KeyAscii = 13 Then
            mrstGym.MoveFirst
            Do Until mrstGym.EOF
                If txtId = mrstGym!fldMemberID Then
                    ShowRecord
                    mintFind = 0
                Exit Sub
                Else
                    mrstGym.MoveNext
                End If
            Loop
            MsgBox "Member doesn't exist", vbOKOnly + vbInformation, "Wrong Entry"
            txtId.SelStart = 0
            txtId.SelLength = Len(txtId)
        End If
    End If
End Sub

Private Sub txtLastName_KeyPress(KeyAscii As Integer)
    If mintFind = 1 Then
        If KeyAscii = 13 Then
            mrstGym.MoveFirst
            Do Until mrstGym.EOF
                If txtLastName = mrstGym!fldLastName Then
                    mblnBrow = True
                    Set mrstGym = pdbMembers.OpenRecordset("SELECT * FROM tblMembers WHERE fldLastName = '" & txtLastName & "' ORDER BY fldMemberID")
                    ShowRecord
                    mintFind = 0
                Exit Sub
                Else
                    mrstGym.MoveNext
                End If
            Loop
            MsgBox "Member doesn't exist", vbOKOnly + vbInformation, "Wrong Entry"
            txtLastName.SelStart = 0
            txtLastName.SelLength = Len(txtLastName)
        End If
    End If
End Sub

Public Sub Checktxt()
    If txtId = "" Or txtLastName = "" Or txtFirstName = "" _
    Or txtStreet = "" Or txtCity = "" Or cboState.ListIndex = -1 _
    Or txtZip = "" Or txtDOB = "" Or txtPhone = "" Or txtSS = "" Then
        mblnCheck = True
    End If
End Sub
