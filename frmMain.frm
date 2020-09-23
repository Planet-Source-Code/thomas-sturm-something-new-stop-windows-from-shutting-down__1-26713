VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "Stop Shutdown"
   ClientHeight    =   660
   ClientLeft      =   36
   ClientTop       =   324
   ClientWidth     =   3228
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   660
   ScaleWidth      =   3228
   Begin VB.Label lblSDs 
      AutoSize        =   -1  'True
      Caption         =   "0 Time(s)."
      Height          =   192
      Left            =   1920
      TabIndex        =   1
      Top             =   360
      Width           =   708
   End
   Begin VB.Label lblStaticText 
      AutoSize        =   -1  'True
      Caption         =   "Windows attempted to shutdown "
      Height          =   192
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2328
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
SDAttempted = 0
Me.Width = Screen.Width
lblStaticText.Left = Me.Width / 2 - lblStaticText.Width / 2
lblSDs.Left = Me.Width / 2 - lblSDs.Width / 2
gHW = Me.hwnd
Hook
End Sub

Private Sub Form_Unload(Cancel As Integer)
Unhook
End Sub
