SetCapsLockState, AlwaysOff

; Makes any keyboard behave like a Vortex Pok3r. At least this includes
; the mappings that I often use.

; caps lock + ijkl = arrow keys.
; caps lock + 1,2,3..,9,0,+,´ = F-keys.
; caps lock + u, o = pgup and pgdn 
; caps lock + backspace = delete
#If GetKeyState("CapsLock", "P")
i::Up
j::Left
k::Down
l::Right
1::F1
2::F2
3::F3
4::F4
5::F5
6::F6
7::F7
8::F8
9::F9
0::F10
+::F11
´::F12
u::PgUp
o::PgDn
Backspace::Delete
#If

; Same for right win key (uh..)
RWin & i::Up
RWin & j::Left
RWin & k::Down
RWin & l::Right
RWin & 1::F1
RWin & 2::F2
RWin & 3::F3
RWin & 4::F4
RWin & 5::F5
RWin & 6::F6
RWin & 7::F7
RWin & 8::F8
RWin & 9::F9
RWin & 0::F10
RWin & +::F11
RWin & ´::F12
Rwin & u::PgUp
RWin & o::PgDn
RWin & Backspace::Delete

; old stuff
;*CapsLock::
;KeyWait, CapsLock
;IF A_ThisHotkey = *CapsLock
;	Send, {Backspace}
;Return
