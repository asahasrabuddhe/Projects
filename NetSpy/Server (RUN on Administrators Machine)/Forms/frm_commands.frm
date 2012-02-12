VERSION 5.00
Begin VB.Form frm_commands 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Commands"
   ClientHeight    =   3975
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5295
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3975
   ScaleWidth      =   5295
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Caption         =   "Description"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1320
      TabIndex        =   21
      Top             =   240
      Width           =   3735
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "Command"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   20
      Top             =   240
      Width           =   975
   End
   Begin VB.Line Line9 
      DrawMode        =   6  'Mask Pen Not
      X1              =   1200
      X2              =   1200
      Y1              =   480
      Y2              =   120
   End
   Begin VB.Line Line8 
      DrawMode        =   6  'Mask Pen Not
      X1              =   120
      X2              =   5160
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line Line7 
      DrawMode        =   6  'Mask Pen Not
      X1              =   5160
      X2              =   5160
      Y1              =   480
      Y2              =   120
   End
   Begin VB.Line Line6 
      DrawMode        =   6  'Mask Pen Not
      X1              =   120
      X2              =   120
      Y1              =   120
      Y2              =   480
   End
   Begin VB.Line Line1 
      DrawMode        =   6  'Mask Pen Not
      X1              =   1200
      X2              =   1200
      Y1              =   480
      Y2              =   2880
   End
   Begin VB.Line Line5 
      DrawMode        =   6  'Mask Pen Not
      X1              =   120
      X2              =   120
      Y1              =   2880
      Y2              =   480
   End
   Begin VB.Line Line4 
      DrawMode        =   6  'Mask Pen Not
      X1              =   120
      X2              =   5160
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Line Line3 
      DrawMode        =   6  'Mask Pen Not
      X1              =   5160
      X2              =   5160
      Y1              =   480
      Y2              =   2880
   End
   Begin VB.Line Line2 
      BorderStyle     =   6  'Inside Solid
      DrawMode        =   6  'Mask Pen Not
      X1              =   120
      X2              =   5160
      Y1              =   2880
      Y2              =   2880
   End
   Begin VB.Label Label8 
      Caption         =   "Sends a message (displayed for approx. 10 seconds)"
      ForeColor       =   &H8000000D&
      Height          =   255
      Index           =   8
      Left            =   1320
      TabIndex        =   19
      Top             =   840
      Width           =   3735
   End
   Begin VB.Label Label8 
      Caption         =   "Performs a screen capture of the client machine"
      ForeColor       =   &H8000000D&
      Height          =   255
      Index           =   7
      Left            =   1320
      TabIndex        =   18
      Top             =   600
      Width           =   3615
   End
   Begin VB.Label Label8 
      Caption         =   "Ends the client NetMan Software"
      ForeColor       =   &H8000000D&
      Height          =   255
      Index           =   6
      Left            =   1320
      TabIndex        =   17
      Top             =   2520
      Width           =   3615
   End
   Begin VB.Label Label8 
      Caption         =   "Hides the client NetMan Software (once shown)"
      ForeColor       =   &H8000000D&
      Height          =   255
      Index           =   5
      Left            =   1320
      TabIndex        =   16
      Top             =   2280
      Width           =   3615
   End
   Begin VB.Label Label8 
      Caption         =   "Shows the client NetMan Software"
      ForeColor       =   &H8000000D&
      Height          =   255
      Index           =   4
      Left            =   1320
      TabIndex        =   15
      Top             =   2040
      Width           =   3375
   End
   Begin VB.Label Label8 
      Caption         =   "Allows usage of the client machine (after freezing) "
      ForeColor       =   &H8000000D&
      Height          =   255
      Index           =   3
      Left            =   1320
      TabIndex        =   14
      Top             =   1320
      Width           =   3615
   End
   Begin VB.Label Label8 
      Caption         =   "Prevents usage of the client machine"
      ForeColor       =   &H8000000D&
      Height          =   255
      Index           =   2
      Left            =   1320
      TabIndex        =   13
      Top             =   1080
      Width           =   3735
   End
   Begin VB.Label Label8 
      Caption         =   "Logs-off windows"
      ForeColor       =   &H8000000D&
      Height          =   255
      Index           =   1
      Left            =   1320
      TabIndex        =   12
      Top             =   1560
      Width           =   1695
   End
   Begin VB.Label Label8 
      Caption         =   "Shuts-down windows"
      ForeColor       =   &H8000000D&
      Height          =   255
      Index           =   0
      Left            =   1320
      TabIndex        =   11
      Top             =   1800
      Width           =   1695
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   $"frm_commands.frx":0000
      Height          =   615
      Left            =   120
      TabIndex        =   10
      Top             =   3000
      Width           =   5055
   End
   Begin VB.Label Label6 
      Caption         =   "- message"
      Height          =   255
      Index           =   2
      Left            =   240
      TabIndex        =   9
      Top             =   840
      Width           =   975
   End
   Begin VB.Label Label6 
      Caption         =   "- capture"
      Height          =   255
      Index           =   1
      Left            =   240
      TabIndex        =   8
      Top             =   600
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "<command> <clientname/IP>"
      ForeColor       =   &H80000002&
      Height          =   255
      Left            =   1560
      TabIndex        =   7
      Top             =   3720
      Width           =   2175
   End
   Begin VB.Label Label3 
      Caption         =   "- shutdown"
      Height          =   255
      Left            =   240
      TabIndex        =   6
      Top             =   1800
      Width           =   975
   End
   Begin VB.Label Label13 
      Caption         =   "- logoff"
      Height          =   255
      Left            =   240
      TabIndex        =   5
      Top             =   1560
      Width           =   975
   End
   Begin VB.Label Label4 
      Caption         =   "- freeze"
      Height          =   255
      Left            =   240
      TabIndex        =   4
      Top             =   1080
      Width           =   975
   End
   Begin VB.Label Label5 
      Caption         =   "- unfreeze"
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   1320
      Width           =   975
   End
   Begin VB.Label Label6 
      Caption         =   "- showclient"
      Height          =   255
      Index           =   0
      Left            =   240
      TabIndex        =   2
      Top             =   2040
      Width           =   975
   End
   Begin VB.Label Label7 
      Caption         =   "- hideclient "
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   2280
      Width           =   975
   End
   Begin VB.Label Label15 
      Caption         =   "- endclient"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   2520
      Width           =   855
   End
End
Attribute VB_Name = "frm_commands"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
