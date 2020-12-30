#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
DetectHiddenWindows, On
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetBatchLines -1
ListLines Off

; avoid bad state of CAPS pressed when not down
if GetKeyState("CapsLock","T")
{
  Suspend On
  SetCapsLockState, off
  Send {CapsLock Up}
  return
}

SetCapsLockState, AlwaysOff

Suspend On

h::Left
j::Down
k::Up
l::Right
f::Ctrl
a::Alt
Space::Shift


CapsLock::Suspend Off
~*CapsLock Up::Suspend On
return