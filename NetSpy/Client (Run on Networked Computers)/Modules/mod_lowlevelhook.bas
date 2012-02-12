Attribute VB_Name = "mod_lowlevelhook"
''''For Windows NT SP3 (or higher), Microsoft introduced a new hook: WH_KEYBOARD_LL. This hook is called the low-level hook because it is notified of keystrokes just after the user enters them and before the system gets a chance to process them. This hook has a serious drawback: the thread processing the hook filter function could enter an infinite loop or hang. If this happens, then the system will no longer process keystrokes properly and the user will become incredibly frustrated. To alleviate this situation, Microsoft places a time limit on low-level hooks. When the system sends a notification to a low-level keyboard hook’s filter function, the system allows that function a fixed amount of time to execute. If the function does not return in the allotted time, the system ignores the hook filter function and processes the keystroke normally. The amount of time allowed (in milliseconds) is set via the LowLevelHooksTimeout value under the following registry subkey: HKEY_CURRENT_USER\Control Panel\Desktop.
''''The program (VB) is disabling some of these combinations (ALT-TAB, CTRL-ESC and ALT-ESC) as long as the option is checked.
' By: Ovidiu Crisan
'(http://vbwork.4mg.com)
'
' Inputs:None
'
' Returns:None
'
'Assumes:None
'
'Side Effects:None
'This code is copyrighted and has limite
'     d warranties.
'Please see http://www.Planet-Source-Cod
'     e.com/xq/ASP/txtCodeId.13106/lngWId.1/qx
'     /vb/scripts/ShowCode.htm
'for details.



'**************************************'***********************************
'Windows API/Global Declarations for :Di
'     sable Low Level Keys
'**************************************
Option Explicit


Public Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" _
        (Destination As Any, Source As Any, ByVal Length As Long)


Public Declare Function GetKeyState Lib "user32" _
        (ByVal nVirtKey As Long) As Integer


Public Declare Function SetWindowsHookEx Lib "user32" Alias "SetWindowsHookExA" _
        (ByVal idHook As Long, ByVal lpfn As Long, ByVal hmod As Long, ByVal dwThreadId As Long) As Long


Public Declare Function CallNextHookEx Lib "user32" _
        (ByVal hHook As Long, ByVal nCode As Long, ByVal wParam As Long, lParam As Any) As Long


Public Declare Function UnhookWindowsHookEx Lib "user32" _
        (ByVal hHook As Long) As Long
    Public Const HC_ACTION = 0
    Public Const WM_KEYDOWN = &H100
    Public Const WM_KEYUP = &H101
    Public Const WM_SYSKEYDOWN = &H104
    Public Const WM_SYSKEYUP = &H105
    Public Const VK_TAB = &H9
    Public Const VK_CONTROL = &H11
    Public Const VK_ESCAPE = &H1B
    Public Const WH_KEYBOARD_LL = 13
    Public Const LLKHF_ALTDOWN = &H20


Public Type KBDLLHOOKSTRUCT
    vkCode As Long
    scanCode As Long
    flags As Long
    time As Long
    dwExtraInfo As Long
    End Type
    Dim p As KBDLLHOOKSTRUCT

Public hhkLowLevelKybd As Long

Public Function LowLevelKeyboardProc(ByVal nCode As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
    Dim fEatKeystroke As Boolean


    If (nCode = HC_ACTION) Then


        If wParam = WM_KEYDOWN Or wParam = WM_SYSKEYDOWN Or wParam = WM_KEYUP Or wParam = WM_SYSKEYUP Then
            CopyMemory p, ByVal lParam, Len(p)
            fEatKeystroke = _
            ((p.vkCode = VK_TAB) And ((p.flags And LLKHF_ALTDOWN) <> 0)) Or _
            ((p.vkCode = VK_ESCAPE) And ((p.flags And LLKHF_ALTDOWN) <> 0)) Or _
            ((p.vkCode = VK_ESCAPE) And ((GetKeyState(VK_CONTROL) And &H8000) <> 0))
        End If
    End If


    If fEatKeystroke Then
        LowLevelKeyboardProc = -1
    Else
        LowLevelKeyboardProc = CallNextHookEx(0, nCode, wParam, ByVal lParam)
    End If
End Function
'''''''''''''''''''''''''''''''''''''''''''''''''''''''

Public Sub Hook()
hhkLowLevelKybd = SetWindowsHookEx(WH_KEYBOARD_LL, AddressOf LowLevelKeyboardProc, App.hInstance, 0)
End Sub
Public Sub UnHook()
UnhookWindowsHookEx hhkLowLevelKybd
hhkLowLevelKybd = 0
End Sub



