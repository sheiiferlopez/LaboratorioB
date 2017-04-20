VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H8000000A&
   Caption         =   "Form1"
   ClientHeight    =   7335
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9705
   LinkTopic       =   "Form1"
   ScaleHeight     =   7335
   ScaleWidth      =   9705
   StartUpPosition =   3  'Windows Default
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   ""
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   615
      Left            =   2640
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   ""
      Top             =   5520
      Width           =   3015
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Anterior Resgistro"
      Height          =   495
      Left            =   6720
      TabIndex        =   18
      Top             =   4320
      Width           =   1215
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Siguiente Registro"
      Height          =   495
      Left            =   4800
      TabIndex        =   17
      Top             =   4320
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Guardar Registro"
      Height          =   495
      Left            =   6120
      TabIndex        =   16
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Eliminar Registro"
      Height          =   495
      Left            =   7080
      TabIndex        =   15
      Top             =   1200
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Agregar Registro"
      Height          =   495
      Left            =   5160
      TabIndex        =   14
      Top             =   1200
      Width           =   1215
   End
   Begin VB.TextBox Text7 
      Height          =   495
      Left            =   2640
      TabIndex        =   13
      Top             =   4680
      Width           =   1695
   End
   Begin VB.TextBox Text6 
      Height          =   495
      Left            =   2640
      TabIndex        =   12
      Top             =   3960
      Width           =   1695
   End
   Begin VB.TextBox Text5 
      Height          =   495
      Left            =   2640
      TabIndex        =   11
      Top             =   3240
      Width           =   1695
   End
   Begin VB.TextBox Text4 
      Height          =   495
      Left            =   2640
      TabIndex        =   3
      Top             =   2520
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   2640
      TabIndex        =   2
      Top             =   1800
      Width           =   1695
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   2640
      TabIndex        =   1
      Top             =   1080
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   2640
      TabIndex        =   0
      Top             =   360
      Width           =   1695
   End
   Begin VB.Label Label7 
      Caption         =   "Foto"
      Height          =   495
      Left            =   960
      TabIndex        =   10
      Top             =   4680
      Width           =   1215
   End
   Begin VB.Label Label6 
      Caption         =   "Semestre"
      Height          =   495
      Left            =   960
      TabIndex        =   9
      Top             =   3960
      Width           =   1215
   End
   Begin VB.Label Label5 
      Caption         =   "Facultad"
      Height          =   495
      Left            =   960
      TabIndex        =   8
      Top             =   3240
      Width           =   1215
   End
   Begin VB.Label Label4 
      Caption         =   "Edad"
      Height          =   495
      Left            =   960
      TabIndex        =   7
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "Apellidos"
      Height          =   495
      Left            =   960
      TabIndex        =   6
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Nombre"
      Height          =   495
      Left            =   960
      TabIndex        =   5
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Carne"
      Height          =   495
      Left            =   960
      TabIndex        =   4
      Top             =   360
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Data1.Recordset.addnew
End Sub

Private Sub Command2_Click()
Data1.Recordset.Delete
End Sub

Private Sub Command3_Click()
Data1.Recordset.upload
End Sub

Private Sub Command4_Click()
Data1.Recordset.movenext
If Data1.Recordset.movenext Then
Data1.Recordset.moveprevius
End If
End Sub

Private Sub Command5_Click()
Data1.Recordset.moveprevius
If Data1.Recordset.moveprevius Then
Data1.Recordset.movenext
End If
End Sub

