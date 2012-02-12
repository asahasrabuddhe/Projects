Attribute VB_Name = "Module1"
Public gblnRec As Boolean
Public gblnPriv As Boolean
Public gblnCK As Boolean
Public gsngPer As Single
Public gstrAllProduct As String
Public gstrAllRec As String
Public gstrAllMem As String
Public gstrProName As String
Public pdbMembers As Database
Public mrstGym As Recordset
Global Const winding = 2
Global Const alternate = 1
Global Const rgn_or = 2

Type pointapi
   X As Long
   Y As Long
End Type

Declare Function CreatePolygonRgn Lib "gdi32" (lpPoint As pointapi, ByVal nCount As Long, ByVal nPolyfillMode As Long) As Long
Declare Function CreateRoundRectRgn Lib "gdi32" (ByVal x1 As Long, ByVal y1 As Long, ByVal x2 As Long, ByVal y2 As Long, ByVal x3 As Long, ByVal y3 As Long) As Long
Declare Function CombineRgn Lib "gdi32" (ByVal hDestRgn As Long, ByVal hSrcRgn1 As Long, ByVal hSrcRgn2 As Long, ByVal nCombineMode As Long) As Long
Declare Function SetWindowRgn Lib "user32" (ByVal hWnd As Long, ByVal hRgn As Long, ByVal bRedraw As Boolean) As Long
Declare Function DeleteObject Lib "gdi32" (ByVal hObject As Long) As Long

Public Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long

