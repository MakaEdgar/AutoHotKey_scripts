; Map Right Alt to Super (Windows key)
RAlt::LWin

; Remap Alt+Tab to override android shortcut
; RAlt & j::AltTab
; RAlt & k::ShiftAltTab
; LCtrl & Tab::AltTab ; shift not needed: use arrows 
LAlt & `::AltTab

; Suppress pause key
Pause::Return

; Fix backslash key for Parsec - map to apostrophe (EN) and э (RU)
; Using scan code SC02B to capture physical key

LAlt & SC02B::Send, \

SC02B::
    if (GetKeyboardLayout() = 0x04190419)
        Send, {U+044D}
    else
        Send, '
    return

GetKeyboardLayout() {
    WinGet, WinID,, A
    ThreadID := DllCall("GetWindowThreadProcessId", "Int", WinID, "Int", 0)
    return DllCall("GetKeyboardLayout", "Int", ThreadID, "UInt")
}
