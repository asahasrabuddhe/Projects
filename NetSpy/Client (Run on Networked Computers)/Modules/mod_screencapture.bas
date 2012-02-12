Attribute VB_Name = "mod_screencapture"
Public Declare Function GetTickCount Lib "kernel32" () As Long

'---------------------------------------------------------------------------------------
'''The following is a call to a DLL (DIjpg.dll) developed by disoft (www.disoft.com/about.htm).
'''This Dll allows me to convert a Bitmap image to a Jpeg image with ease.
'''The DILIB project is an opportunity for graphics and media programmers to come together and create a free graphics library to be used by the rest of the Internet programming community.
'''DILIB is an open source project, which means the source code to the library is free to be modified and improved by anyone who wishes to do so.

Private Declare Function DIWriteJpg Lib "DIjpg.dll" (ByVal DestPath As String, ByVal quality As Long, ByVal progressive As Long) As Long
Public RetVal As Long
'---------------------------------------------------------------------------------------


'// HAIL TO THE MASTER: Root/Marcelo
'//
'// Cheers guys, root@ihonline.com.br
'
Public Declare Function GetDesktopWindow Lib "user32" () As Long

Public Declare Function GetDC Lib "user32" (ByVal hwnd As Long) As Long

Private Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long


Public Sub DumpToWindow()
' here i supose u are dumping it to a window/control
' that actually HAS a .hdc property, i mean, tweek it at will.
Dim Desktop As Long
Dim ww As Long
Dim hh As Long

Desktop = GetDC(GetDesktopWindow)

ww = Screen.Width / Screen.TwipsPerPixelX
hh = Screen.Height / Screen.TwipsPerPixelY

frm_client.Picturecapture.Width = Screen.Width + (4 * Screen.TwipsPerPixelX)
frm_client.Picturecapture.Height = Screen.Height + (4 * Screen.TwipsPerPixelY)
frm_client.Picturecapture.AutoRedraw = True

BitBlt frm_client.Picturecapture.hDC, 0, 0, ww, hh, Desktop, 0, 0, &HCC0020

End Sub



'--------------------------------------------------------------------------------
'--------------------------------------------------------------------------------'
Public Sub ConvertToJpeg(jpegfilename As String)

'this dll requires the BMP to be in "c:\tmp.bmp"
'Save to JPEG
RetVal = DIWriteJpg(jpegfilename, 60, 0)

'if retval = 2 the it has FAILED

'Remove temporary file
Kill "c:\tmp.bmp"
End Sub


