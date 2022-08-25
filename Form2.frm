VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Form2 
   BackColor       =   &H00C0C0FF&
   Caption         =   "Mails"
   ClientHeight    =   6780
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6825
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   6780
   ScaleWidth      =   6825
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Done"
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
      Left            =   2400
      TabIndex        =   2
      Top             =   6120
      Width           =   1695
   End
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   5295
      Left            =   120
      TabIndex        =   0
      Top             =   720
      Width           =   6615
      _ExtentX        =   11668
      _ExtentY        =   9340
      _Version        =   393217
      Enabled         =   -1  'True
      TextRTF         =   $"Form2.frx":1084A
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Verified emails"
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
      TabIndex        =   1
      Top             =   120
      Width           =   6615
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.Show
Form2.Hide
End Sub

Private Sub Form_Load()
RichTextBox1.FileName = "cache"
End Sub

