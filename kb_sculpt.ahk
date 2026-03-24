; backslash: "Ctrl+/" => "\"
^]::Send \
return

; pipe: "Ctrl+Shift+/" => "|"
^+]::Send |
return

; slash: "Ctrl+Shift+Alt+/" => "/"
^+!]::Send /
return


;Remap Media Keys
PrintScreen::Send {Volume_Down}
^PrintScreen::Send {Media_Prev}
ScrollLock::Send {Volume_Up}
^CtrlBreak::Send {Media_Next}
Pause::Send {Media_Play_Pause}
^Pause::Send {Volume_Mute}
return


;Add Nums to letters with pressed `Ctrl+Shift+Alt`
^+!m::Send 0
^+!,::Send 0
^+!.::Send .
^+!j::Send 1
^+!k::Send 2
^+!l::Send 3
^+!u::Send 4
^+!i::Send 5
^+!o::Send 6
^+!7::Send 7
^+!8::Send 8
^+!9::Send 9
return

; Mouse wheel control for volume up-down
^+WheelUp::Send {Volume_Up}
^+WheelDown::Send {Volume_Down}
XButton1 & WheelUp::Send {Volume_Up}
XButton1 & WheelDown::Send {Volume_Down}
return
