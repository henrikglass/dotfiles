SetCapsLockState, AlwaysOff

#If GetKeyState("CapsLock", "P")
i::Up
j::Left
k::Down
l::Right
#If

;*CapsLock::
;KeyWait, CapsLock
;IF A_ThisHotkey = *CapsLock
;	Send, {Backspace}
;Return
