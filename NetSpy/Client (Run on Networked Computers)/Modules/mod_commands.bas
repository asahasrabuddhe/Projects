Attribute VB_Name = "mod_commands"
'Declare public variables
Public WinVersionID As Integer
Public temp, temp1, temp2 As String

'Keyboard Simulation
Public Declare Sub keybd_event Lib "user32" (ByVal bVk As Byte, ByVal bScan As Byte, _
ByVal dwFlags As Long, ByVal dwExtraInfo As Long)

Private Const KEYEVENTF_EXTENDEDKEY = &H1
Private Const KEYEVENTF_KEYUP = &H2
Private Const VK_SHIFT = &H10

'Mouse Movement
Public Declare Function SetCursorPos Lib "user32" (ByVal X As Long, ByVal Y As Long) As Long
Public Declare Sub mouse_event Lib "user32" (ByVal dwFlags As Long, ByVal dx As Long, ByVal dy As Long, ByVal cButtons As Long, ByVal dwExtraInfo As Long)
Public Const MOUSEEVENTF_MOVE = 1
Public Const MOUSEEVENTF_LEFTDOWN = 2
Public Const MOUSEEVENTF_LEFTUP = 4
Public Const MOUSEEVENTF_RIGHTDOWN = 8
Public Const MOUSEEVENTF_RIGHTUP = 16
Public Const MOUSEEVENTF_MIDDLEDOWN = 32
Public Const MOUSEEVENTF_MIDDLEUP = 64
Public Const MOUSEEVENTF_WHEEL = 2040
Public Const MOUSEEVENTF_ABSOLUTE = 32768

'set freeze form topmost
Public Declare Function SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal _
hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx _
As Long, ByVal cy As Long, ByVal wFlags As Long) As Long

Public Const HWND_TOPMOST = -1
Public Const SWP_NOMOVE = &H2
Public Const SWP_NOSIZE = &H1
Public Const SWP_NOZORDER = &H8

'Make cursor invisible
Public Declare Function ShowCursor& Lib "user32" (ByVal bShow As Long)

'Disable CAD Win98
Public Declare Function SystemParametersInfo Lib _
"user32" Alias "SystemParametersInfoA" (ByVal uAction _
As Long, ByVal uParam As Long, ByVal lpvParam As Any, _
ByVal fuWinIni As Long) As Long

'Remove from CAD Win98
Public Declare Function GetCurrentProcessId Lib "kernel32" () As Long
Public Declare Function GetCurrentProcess Lib "kernel32" () As Long
Public Declare Function RegisterServiceProcess Lib "kernel32" (ByVal dwProcessID As Long, ByVal dwType As Long) As Long
Public Const RSP_SIMPLE_SERVICE = 1
Public Const RSP_UNREGISTER_SERVICE = 0

'Sleep
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

'Shutdown XP
Public Declare Function ExitWindowsEx Lib "user32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long
Public Const EWX_LOGOFF As Long = 0
Public Const EWX_SHUTDOWN As Long = 1
Public Const EWX_REBOOT As Long = 2
Public Const EWX_FORCE As Long = 4
Public Const EWX_POWEROFF As Long = 5

Public Declare Function OpenProcessToken Lib "advapi32" (ByVal _
    ProcessHandle As Long, _
    ByVal DesiredAccess As Long, TokenHandle As Long) As Long
Public Declare Function LookupPrivilegeValue Lib "advapi32" _
    Alias "LookupPrivilegeValueA" _
    (ByVal lpSystemName As String, ByVal lpName As String, lpLuid _
    As LUID) As Long
Public Declare Function AdjustTokenPrivileges Lib "advapi32" _
    (ByVal TokenHandle As Long, _
    ByVal DisableAllPrivileges As Long, NewState As TOKEN_PRIVILEGES _
    , ByVal BufferLength As Long, _
    PreviousState As TOKEN_PRIVILEGES, ReturnLength As Long) As Long

Public Type LUID
    UsedPart As Long
    IgnoredForNowHigh32BitPart As Long
End Type

Public Type TOKEN_PRIVILEGES
    PrivilegeCount As Long
    TheLuid As LUID
    Attributes As Long
End Type

Public Sub AdjustToken()   ' Adjusts Privelages of program to allow shutdown XP using ExitWindowsEX Api Call (not needed for LogOff)
    Const TOKEN_ADJUST_PRIVILEGES = &H20
    Const TOKEN_QUERY = &H8
    Const SE_PRIVILEGE_ENABLED = &H2
    Dim hdlProcessHandle As Long
    Dim hdlTokenHandle As Long
    Dim tmpLuid As LUID
    Dim tkp As TOKEN_PRIVILEGES
    Dim tkpNewButIgnored As TOKEN_PRIVILEGES
    Dim lBufferNeeded As Long

    hdlProcessHandle = GetCurrentProcess()
    OpenProcessToken hdlProcessHandle, (TOKEN_ADJUST_PRIVILEGES Or _
    TOKEN_QUERY), hdlTokenHandle

    ' Get the LUID for shutdown privilege.
    LookupPrivilegeValue "", "SeShutdownPrivilege", tmpLuid

    tkp.PrivilegeCount = 1    ' One privilege to set
    tkp.TheLuid = tmpLuid
    tkp.Attributes = SE_PRIVILEGE_ENABLED

  ' Enable the shutdown privilege in the access token of this process.
    AdjustTokenPrivileges hdlTokenHandle, False, _
    tkp, Len(tkpNewButIgnored), tkpNewButIgnored, lBufferNeeded

End Sub

Public Sub TypeData(data As String)
Dim temp As String
Dim HoldKey As Byte

Do Until data = ""
    temp = Left(data, InStr(data, ":") - 1)
    
    If Left(temp, 1) = "~" Then
        HoldKey = CByte(Right(temp, Len(temp) - 1))
        keybd_event VK_SHIFT, 0, 0, 0
        keybd_event HoldKey, 0, 0, 0
        keybd_event HoldKey, 0, KEYEVENTF_KEYUP, 0
        keybd_event VK_SHIFT, 0, KEYEVENTF_KEYUP, 0
    Else:
        HoldKey = CByte(temp)
        keybd_event HoldKey, 0, 0, 0
        keybd_event HoldKey, 0, KEYEVENTF_KEYUP, 0
    End If
        
    data = Right(data, Len(data) - (Len(temp) + 1))
Loop

End Sub


