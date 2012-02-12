Attribute VB_Name = "mod_getdsysdata"
Option Explicit

Public Declare Function GetVersionExA Lib "kernel32" (lpVersionInformation As OSVERSIONINFO) As Integer

 
    Public Type OSVERSIONINFO
        dwOSVersionInfoSize As Long
        dwMajorVersion As Long
        dwMinorVersion As Long
        dwBuildNumber As Long
        dwPlatformId As Long
        szCSDVersion As String * 128
    End Type
            
Declare Function GetUserName Lib "advapi32.dll" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long


Private Declare Function w32_GetComputerName Lib "kernel32" Alias "GetComputerNameA" ( _
    ByVal lpBuffer As String, _
    nSize As Long) As Long


Private Declare Function w32_SetComputerName Lib "kernel32" Alias "SetComputerNameA" ( _
    ByVal lpComputerName As String) As Long
    
    Public Const MAX_WSADescription As Long = 256
    Public Const MAX_WSASYSStatus As Long = 128
    Public Const ERROR_SUCCESS As Long = 0
    Public Const WS_VERSION_REQD As Long = &H101
    Public Const WS_VERSION_MAJOR As Long = WS_VERSION_REQD \ &H100 And &HFF&
    Public Const WS_VERSION_MINOR As Long = WS_VERSION_REQD And &HFF&
    Public Const MIN_SOCKETS_REQD As Long = 1
    Public Const SOCKET_ERROR As Long = -1
   
Public Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (hpvDest As Any, ByVal hpvSource As Long, ByVal bCopy As Long)

'''''''_______________________________________
'''''''
'''''''GET COMPUTER NAME

Public Function GetComputerName(rpsComputerName) As String

    Dim sComputerName As String
    Dim lComputerNameLen As Long
    Dim lResult As Long
    Dim fRV As Boolean
    
    lComputerNameLen = 256
    sComputerName = Space(lComputerNameLen)
    
    lResult = w32_GetComputerName(sComputerName, lComputerNameLen)

    rpsComputerName = Left$(sComputerName, lComputerNameLen)
    
    GetComputerName = rpsComputerName

    
End Function

'''_________________
'''Get username

Public Function GetWinUserName(winusername) As String

Dim username As String  ' receives name of the user
Dim slength As Long  ' length of the string
Dim retval As Long  ' return value


' Create room in the buffer to receive the returned string.
username = Space(255)  ' room for 255 characters
slength = 255  ' initialize the size of the string

' Get the user's name and display it.
retval = GetUserName(username, slength)  ' slength is now the length of the returned string
winusername = Left(username, slength - 1)  ' extract the returned info from the buffer
GetWinUserName = winusername

End Function

'''___________________
'''Get OS Version
 
Public Function getVersion() As String
        Dim osinfo As OSVERSIONINFO
        Dim retvalue As Integer
 
        osinfo.dwOSVersionInfoSize = 148
        osinfo.szCSDVersion = Space$(128)
        retvalue = GetVersionExA(osinfo)
 
        With osinfo
        Select Case .dwPlatformId
 
        Case 1
                
            Select Case .dwMinorVersion
                Case 0
                    getVersion = "Windows 95"
                Case 10
                    getVersion = "Windows 98"
                Case 90
                    getVersion = "Windows Millenium"
            End Select
    
        Case 2
            Select Case .dwMajorVersion
                
                Case 3
                    getVersion = "Windows NT 3.51"
                Case 4
                    getVersion = "Windows NT 4.0"
                Case 5
                    If .dwMinorVersion = 0 Then
                        getVersion = "Windows 2000"
                    Else
                        getVersion = "Windows XP"
                    End If
            
            End Select
    
        Case Else
            getVersion = "Failed"
    End Select
 
        End With
End Function


