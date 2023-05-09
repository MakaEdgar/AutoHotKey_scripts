# AutoHotKey_scripts

Change layout using `CapsLock`
```
SetCapsLockState, AlwaysOff
+CapsLock::CapsLock

CapsLock::Send, {Alt Down}{Shift Down}{Shift Up}{Alt Up}
return
```

Run Windows Terminal
```
#b::
Run, wt.exe
return
```

Remap keys for MS Sculpt keyboard with German layout
```
; backslash: "Ctrl+/" => "\"
^/::Send {ASC 92} ;\
return

; pipe: "Ctrl+Shift+/" => "|"
^+/::Send {ASC 124} ;|
return

;Remap Media Keys
PrintScreen::Send {Volume_Down}
^PrintScreen::Send {Media_Prev}
ScrollLock::Send {Volume_Up}
^CtrlBreak::Send {Media_Next}
Pause::Send {Media_Play_Pause}
^Pause::Send {Volume_Mute}
return
```

Add Nums to letters with pressed `Ctrl+Shift+Alt`
```
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
```

