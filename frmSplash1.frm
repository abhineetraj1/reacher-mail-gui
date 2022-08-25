VERSION 5.00
Begin VB.Form frmSplash1 
   BackColor       =   &H8000000B&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   4245
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   7380
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash1.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4245
   ScaleWidth      =   7380
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Close"
      Height          =   495
      Left            =   4320
      TabIndex        =   2
      Top             =   2880
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Back"
      Height          =   495
      Left            =   1080
      TabIndex        =   1
      Top             =   2880
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackColor       =   &H8000000B&
      Caption         =   "Too many requests this month. Upgrade your plan"
      BeginProperty Font 
         Name            =   "Myanmar Text"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   360
      TabIndex        =   0
      Top             =   960
      Width           =   6735
   End
End
Attribute VB_Name = "frmSplash1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.Show
frmSplash1.Hide
End Sub

Private Sub Command2_Click()
End
End Sub
