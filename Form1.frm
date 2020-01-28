VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6255
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8085
   LinkTopic       =   "Form1"
   ScaleHeight     =   6255
   ScaleWidth      =   8085
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer3 
      Interval        =   1
      Left            =   960
      Top             =   600
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   2
      Left            =   1320
      Top             =   1800
   End
   Begin VB.Timer Timer1 
      Interval        =   2
      Left            =   600
      Top             =   1800
   End
   Begin VB.Shape Shape4 
      BackColor       =   &H80000001&
      BackStyle       =   1  'Opaque
      Height          =   255
      Left            =   4800
      Shape           =   3  'Circle
      Top             =   6000
      Width           =   375
   End
   Begin VB.Line Line10 
      BorderWidth     =   3
      X1              =   0
      X2              =   8040
      Y1              =   240
      Y2              =   240
   End
   Begin VB.Shape Shape10 
      BackColor       =   &H80000002&
      BackStyle       =   1  'Opaque
      BorderStyle     =   5  'Dash-Dot-Dot
      BorderWidth     =   3
      FillStyle       =   7  'Diagonal Cross
      Height          =   375
      Left            =   3480
      Top             =   480
      Width           =   2175
   End
   Begin VB.Line Line9 
      BorderWidth     =   3
      X1              =   0
      X2              =   8040
      Y1              =   840
      Y2              =   840
   End
   Begin VB.Shape Shape9 
      BackColor       =   &H80000002&
      BackStyle       =   1  'Opaque
      BorderWidth     =   3
      FillStyle       =   7  'Diagonal Cross
      Height          =   375
      Left            =   600
      Top             =   1080
      Width           =   2175
   End
   Begin VB.Line Line8 
      BorderColor     =   &H80000001&
      BorderWidth     =   3
      X1              =   8040
      X2              =   0
      Y1              =   1440
      Y2              =   1440
   End
   Begin VB.Shape Shape8 
      BackColor       =   &H80000002&
      BackStyle       =   1  'Opaque
      BorderWidth     =   3
      FillStyle       =   7  'Diagonal Cross
      Height          =   375
      Left            =   5760
      Top             =   1680
      Width           =   2175
   End
   Begin VB.Line Line7 
      BorderWidth     =   3
      X1              =   0
      X2              =   8040
      Y1              =   2040
      Y2              =   2040
   End
   Begin VB.Shape Shape7 
      BackColor       =   &H80000002&
      BackStyle       =   1  'Opaque
      BorderWidth     =   3
      FillStyle       =   7  'Diagonal Cross
      Height          =   375
      Left            =   3240
      Top             =   2280
      Width           =   2175
   End
   Begin VB.Line Line6 
      BorderWidth     =   3
      X1              =   0
      X2              =   8040
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Shape Shape6 
      BackColor       =   &H80000002&
      BackStyle       =   1  'Opaque
      BorderWidth     =   3
      FillStyle       =   7  'Diagonal Cross
      Height          =   375
      Left            =   240
      Top             =   2880
      Width           =   2175
   End
   Begin VB.Line Line5 
      BorderWidth     =   3
      X1              =   0
      X2              =   8040
      Y1              =   3240
      Y2              =   3240
   End
   Begin VB.Shape Shape5 
      BackColor       =   &H80000002&
      BackStyle       =   1  'Opaque
      BorderWidth     =   3
      FillStyle       =   7  'Diagonal Cross
      Height          =   375
      Left            =   5160
      Top             =   3480
      Width           =   2175
   End
   Begin VB.Line Line4 
      BorderWidth     =   3
      X1              =   0
      X2              =   8040
      Y1              =   3840
      Y2              =   3840
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H80000002&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H80000001&
      BorderWidth     =   3
      FillStyle       =   7  'Diagonal Cross
      Height          =   375
      Left            =   1560
      Top             =   4080
      Width           =   2175
   End
   Begin VB.Line Line3 
      BorderWidth     =   3
      X1              =   0
      X2              =   8160
      Y1              =   4440
      Y2              =   4440
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000002&
      BackStyle       =   1  'Opaque
      BorderWidth     =   3
      FillStyle       =   7  'Diagonal Cross
      Height          =   375
      Left            =   4920
      Top             =   4680
      Width           =   2175
   End
   Begin VB.Line Line2 
      BorderWidth     =   3
      X1              =   0
      X2              =   8040
      Y1              =   5040
      Y2              =   5040
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H80000002&
      BackStyle       =   1  'Opaque
      BorderWidth     =   3
      FillStyle       =   7  'Diagonal Cross
      Height          =   375
      Left            =   2160
      Top             =   5280
      Width           =   2175
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000001&
      BorderWidth     =   3
      X1              =   0
      X2              =   8040
      Y1              =   5640
      Y2              =   5640
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyA Then
    Shape4.Left = Shape4.Left - 100
End If
If KeyCode = vbKeyW Then
    Shape4.Top = Shape4.Top - 600
End If
If KeyCode = vbKeyD Then
    Shape4.Left = Shape4.Left + 100
End If
End Sub

Private Sub Timer1_Timer()
   Shape1.Left = Shape1.Left + 100
   If Shape1.Left + Shape1.Width >= Form1.Width Then
           Timer1.Enabled = False
           Timer2.Enabled = True
   End If
End Sub

Private Sub Timer2_Timer()
     Shape1.Left = Shape1.Left - 100
     If Shape1.Left <= 0 Then
         Timer2.Enabled = False
         Timer1.Enabled = True
     End If
End Sub

Private Sub Timer3_Timer()
If Shape1.Left >= Shape4.Left And Shape1.Top = Shape4.Top - 120 Or Shape1.Left + Shape1.Width <= Shape1.Left And Shape1.Top = Shape4.Top - 120 Then
   End
End If
End Sub
