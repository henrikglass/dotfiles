SetCapsLockState, AlwaysOff

; Caps lock + ijkl => arrow keys
#If GetKeyState("CapsLock", "P")
i::Up
j::Left
k::Down
l::Right
#If

; RWIN + Backspace => delete
RWin & Backspace::Delete

;*CapsLock::
;KeyWait, CapsLock
;IF A_ThisHotkey = *CapsLock
;	Send, {Backspace}
;Return
