#NoEnv
#SingleInstance Force
SendMode Input
SetCapsLockState, AlwaysOff
SetStoreCapsLockMode, Off

; ----------------------------
; KEYBOARD LAYOUT CODES
; EN (US) = 00000409
; RU      = 00000419
; FR      = 0000040C
; ----------------------------

LANG_EN := "00000409"
LANG_RU := "00000419"
LANG_FR := "0000040C"

; CapsLock -> toggle RU/EN
CapsLock::
    current := GetCurrentLayout()
    if (current = LANG_EN)
        SwitchToLayout(LANG_RU)
    else
        SwitchToLayout(LANG_EN)
return

; Extra language: CapsLock + F -> French
CapsLock & f::
    SwitchToLayout(LANG_FR)
return

; Real Caps Lock via Shift + CapsLock
+CapsLock::
    GetKeyState, state, CapsLock, T
    if (state = "D")
        SetCapsLockState, Off
    else
        SetCapsLockState, On
return

GetCurrentLayout() {
    WinGet, WinID, ID, A
    ThreadID := DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
    HKL := DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
    return Format("{:08X}", HKL & 0xFFFF)
}

SwitchToLayout(layoutID) {
    HKL := DllCall("LoadKeyboardLayout", "Str", layoutID, "UInt", 1, "UInt")
    WinGet, WinID, ID, A
    PostMessage, 0x0050, 0, %HKL%, , ahk_id %WinID%
}