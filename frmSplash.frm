VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form frmSplash 
   BackColor       =   &H8000000B&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   3045
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   8280
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3045
   ScaleWidth      =   8280
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   1215
      Left            =   3360
      TabIndex        =   1
      Top             =   1800
      Visible         =   0   'False
      Width           =   3495
      _ExtentX        =   6165
      _ExtentY        =   2143
      _Version        =   393217
      TextRTF         =   $"frmSplash.frx":000C
   End
   Begin VB.Timer Timer1 
      Interval        =   5000
      Left            =   1800
      Top             =   2160
   End
   Begin VB.Label Label1 
      BackColor       =   &H8000000B&
      Caption         =   "Wait until the processing is done."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   360
      TabIndex        =   0
      Top             =   1080
      Width           =   7455
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Timer1_Timer()
Dim a, doff As String
RichTextBox1.FileName = "cachex"
a = RichTextBox1.Text
If a = "" Then
    frmSplash.Timer1.Enabled = False
    frmSplash.Hide
    Form2.Show
ElseIf a = "Too many requests this month. Upgrade your plan" Then
    frmSplash.Hide
    frmSplash1.Show
Else
    doff = ""
End If
End Sub
