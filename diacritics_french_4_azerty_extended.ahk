; AutoHotkey v1 script (! is Alt, ^ is Ctrl, + is Shift)
; Add missing French symbols for default AZERTY(fr) layout

!+2::Send {u+00c9}  ; É
!+8::Send {u+00c8}  ; È
!+9::Send {u+00c7}  ; Ç
!+0::Send {u+00c0}  ; À
!a::Send {u+00e6}   ; æ
!+a::Send {u+00c6}  ; Æ
!o::Send {u+0153}   ; œ
!+o::Send {u+0152}  ; Œ
