Attribute VB_Name = "mod_lockXP"
'disable Start menu
Public Declare Function EnableWindow& Lib "user32" (ByVal hWnd As Long, ByVal fEnable As Long)
Public Declare Function FindWindow& Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String)

'Disable Taskbar
Private Declare Function ShowWindow Lib "user32" (ByVal hWnd As Long, _
    ByVal nCmdShow As Long) As Long
Public Const SW_SHOW = 5
Public Const SW_HIDE = 0

'disable TaskMan (EDIT REGISTRY) and get reg values
Type FILETIME
    lLowDateTime    As Long
    lHighDateTime   As Long
End Type
 
Declare Function RegCloseKey Lib "advapi32.dll" (ByVal Hkey As Long) As Long
Declare Function RegCreateKey Lib "advapi32.dll" Alias "RegCreateKeyA" (ByVal Hkey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
Declare Function RegDeleteKey Lib "advapi32.dll" Alias "RegDeleteKeyA" (ByVal Hkey As Long, ByVal lpSubKey As String) As Long
Declare Function RegDeleteValue Lib "advapi32.dll" Alias "RegDeleteValueA" (ByVal Hkey As Long, ByVal lpValueName As String) As Long
Declare Function RegOpenKey Lib "advapi32.dll" Alias "RegOpenKeyA" (ByVal Hkey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
Declare Function RegQueryValueEx Lib "advapi32.dll" Alias "RegQueryValueExA" (ByVal Hkey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long
Declare Function RegSetValueEx Lib "advapi32.dll" Alias "RegSetValueExA" (ByVal Hkey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long
Public Const HKEY_CLASSES_ROOT = &H80000000
Public Const HKEY_CURRENT_USER = &H80000001
Public Const HKEY_LOCAL_MACHINE = &H80000002
Public Const HKEY_USERS = &H80000003
Public Const HKEY_PERFORMANCE_DATA = &H80000004
Public Const ERROR_SUCCESS = 0&
Public Const REG_SZ = 1 ' Unicode nul terminated string
Public Const REG_DWORD = 4 ' 32-bit number

Function SaveDword(ByVal Hkey As Long, ByVal strPath As String, ByVal strValueName As String, ByVal lData As Long)
   Dim lResult As Long
    Dim keyhand As Long
    Dim r As Long
    r = RegCreateKey(Hkey, strPath, keyhand)
    lResult = RegSetValueEx(keyhand, strValueName, 0&, REG_DWORD, lData, 4)
    r = RegCloseKey(keyhand)
End Function

'EnableStartbar Cont:::
Public Sub ShowStartBar(ByVal bVisible As Boolean)
    Dim hWnd_StartBar As Long
    hWnd_StartBar = FindWindow("Shell_TrayWnd", "")
    If bVisible Then
        ShowWindow hWnd_StartBar, SW_SHOW
    Else
        ShowWindow hWnd_StartBar, SW_HIDE
    End If
End Sub

Public Sub EnableStartBar(ByVal bEnable As Boolean)
    Dim hWnd_StartBar As Long
    hWnd_StartBar = FindWindow("Shell_TrayWnd", "")
    If bEnable Then
        EnableWindow hWnd_StartBar, True
    Else
        EnableWindow hWnd_StartBar, False
    End If
End Sub

Public Function Diswin(ByVal WindowName As String, EnabOrDisab&)
'This function will disable given window name, by value 0 and 1
Dim JigsHwnd As Long
Dim lDisEnWnd As Long

JigsHwnd = FindWindow(vbNullString, WindowName)
lDisEnWnd = EnableWindow(JigsHwnd, ByVal EnabOrDisab&)
                                            
End Function


