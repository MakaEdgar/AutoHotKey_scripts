#InstallKeybdHook


; "Menu"/Application key -> right click
vk5d::
    Click, right
return


; Left Alt + number row => F1..F12
LAlt::return ; Use Left Alt as a custom prefix and suppress its default menu behavior
LAlt & 1::Send {F1}
LAlt & 2::Send {F2}
LAlt & 3::Send {F3}
LAlt & 4::Send {F4}
LAlt & 5::Send {F5}
LAlt & 6::Send {F6}
LAlt & 7::Send {F7}
LAlt & 8::Send {F8}
LAlt & 9::Send {F9}
LAlt & 0::Send {F10}
LAlt & -::Send {F11}
LAlt & =::Send {F12}



#InstallKeybdHook
#UseHook

; --- Right-click on short tap of Left Ctrl; normal Ctrl on hold/chord ---
*LControl::
    ; Capture one non-modifier key within 180 ms (no 'V' -> it won't leak to the app)
    Input, key, L1 T0.18, {LControl}{RControl}{LShift}{RShift}{LAlt}{RAlt}{LWin}{RWin}{AppsKey}

    if (ErrorLevel = "Timeout") {
        ; No other key pressed in window
        if !GetKeyState("LControl","P") {
            ; Short tap -> right click
            Click, right
            return
        }
        ; Still holding -> behave like a real Ctrl until release
        SendInput {Blind}{LControl down}
        KeyWait, LControl
        SendInput {Blind}{LControl up}
        return
    } else {
        ; Got a non-modifier key quickly -> emit Ctrl+that key
        ; 'key' holds the captured keystroke (e.g., "a", "{F5}", etc.)
        SendInput {Blind}{LControl down}%key%{LControl up}
        ; Swallow until physical Ctrl is released (avoids stray effects)
        KeyWait, LControl
        return
    }
return


; --- Ctrl + Left Click -> Middle Click (open in new tab) ---
#If ( GetKeyState("LControl","P") )
*LButton::           ; intercept LButton while Ctrl is physically down
    ; Replace the left click with a middle click
    SendInput {MButton}
return
#If
