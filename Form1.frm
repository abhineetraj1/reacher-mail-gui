VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00C0FFC0&
   Caption         =   "Reacher mail"
   ClientHeight    =   7245
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12285
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7245
   ScaleWidth      =   12285
   StartUpPosition =   3  'Windows Default
   Begin RichTextLib.RichTextBox RichTextBox2 
      Height          =   735
      Left            =   360
      TabIndex        =   5
      Top             =   4920
      Visible         =   0   'False
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   1296
      _Version        =   393217
      TextRTF         =   $"Form1.frx":1084A
   End
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   4455
      Left            =   3000
      TabIndex        =   4
      Top             =   1440
      Width           =   7095
      _ExtentX        =   12515
      _ExtentY        =   7858
      _Version        =   393217
      Enabled         =   -1  'True
      TextRTF         =   $"Form1.frx":108D5
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Process"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3480
      TabIndex        =   3
      Top             =   6240
      Width           =   4215
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3000
      TabIndex        =   1
      Top             =   600
      Width           =   7095
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Enter email Id(s)"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   1560
      Width           =   2655
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Enter authtoken"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   2655
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
If Text2.Text = "" Then
    MsgBox ("Enter authtoken code")
Else
    frmSplash.Show
    Form1.Hide
    RichTextBox2.SaveFile ("cachex")
    RichTextBox1.SaveFile ("cache")
    Shell ("cmd.exe /c python3 sp.py " + Text2.Text)
End If
End Sub

