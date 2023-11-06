#Include %A_ScriptDir%\GetConstant.ahk

!u:: ; Alt + u
    Send, % GetConstant("university_mail")
return

!g:: ; Alt + g
    Send, % GetConstant("personal_mail")
return

!n:: ; Alt + n
    Send, % GetConstant("full_name")
return

; ------------------ Remap keys ------------------

; Remap Esc to Capslock
Esc::Capslock

; Remap Alt + Bloc. mayús to Capslock
!Capslock::Capslock

; Remap 'Alt + m' to delete backward
!m::Send {Backspace}

; Remap 'Alt + ,' to delete forward
!,::Send {Delete}

; Remap 'Alt + ;' to delete all the word
!;::Send ^+{Left}{Delete}

; Remap 'Alt + Shift + ;' to delete all the line
!+;:: 
Send, {Home}{Shift Down}{End}{Shift Up}{Delete}
return

; Mapear Alt + i a Home
!i::Send {Home}

; Mapear Alt + o a End
!o::Send {End}

; Mapear Alt + c a Alt + F4
!c::Send !{F4}

; Remapear teclas de navegación como en vim
!h::Send {Left}
!j::Send {Down}
!k::Send {Up}
!l::Send {Right}

!+h::Send ^{Left}	; Alt + Shift + h -> Ctrl + Left
!+l::Send ^{Right}	; Alt + Shift + l -> Ctrl + Right

!e::Send #{Up} 	; Alt + e 	  -> Win + Up		(Maximizar)
!w::Send #{Down}	; Alt + w	  -> Win + Down         (Minimizar)
!q::Send #{Left}	; Alt + q	  -> Win + Left         (Ventana a la izquierda)
!r::Send #{Right}	; Alt + r	  -> Win + Right        (Ventana a la derecha)

; ------------ EMOJIS ------------
::1313::😏
::007::😎
::heart::💙
::ok::👌🏼
::check::✅
::cross::❌
::wink::😉
::sad::😥
::relax::😌

; Numpad0 & Numpad1::
; MsgBox, You pressed Numpad1 while holding down Numpad0.
; return

; Win + i
; #i::
; Run, https://www.google.com/
; return

; Alt + Shift + c
; !+c::
; Run, "Control Panel\Hardware and Sound\Power Options\System Settings"
; return

