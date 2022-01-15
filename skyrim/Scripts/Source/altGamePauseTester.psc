Scriptname altGamePauseTester extends Quest
{test menu}

; code

event OnInit()
    registerforkey(26)
endEvent

event OnKeyDown(int keycode)
    if keycode == 26
        UI.OpenCustomMenu("alternativePauseMenu")
    endif
endEvent