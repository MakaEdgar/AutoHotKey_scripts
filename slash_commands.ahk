#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force  ; Allows only one instance of the script to run.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

; Ctrl+Alt+M -> type "/model"
^!m::
    SendInput, {Text}/model
return

; Ctrl+Alt+U -> type "/usage"
^!u::
    SendInput, {Text}/usage
return
