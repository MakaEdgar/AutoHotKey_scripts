; AutoHotkey v1 script for French special characters: "Ctrl+Alt+[Shift]+..."

^!q::Send {u+00e0}  ; à
^!w::Send {u+00e1}  ; á
^!e::Send {u+00e2}  ; â
^!+a::Send {u+00e6} ; æ

^!1::Send {u+00e8}  ; è
^!2::Send {u+00e9}  ; é
^!3::Send {u+00ea}  ; ê
^!+e::Send {u+00eb} ; ë

!o::Send {u+00f3}   ; ó
^!o::Send {u+00f4}  ; ô
^!+o::Send {u+0153} ; œ

^!c::Send {u+00e7}  ; ç

^!i::Send {u+00ee}  ; î
^!+i::Send {u+00ef} ; ï

^!u::Send {u+00f9}  ; ù
^!+u::Send {u+00fc} ; ü
