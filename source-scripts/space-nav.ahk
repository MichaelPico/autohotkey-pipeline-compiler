; Space-based navigation script
; Hold Space to enable hjkl as arrow keys (with modifier key support)
; Tap Space alone to type a space

spacePressed := false
hjklPressed := false

; When Space is pressed down
$Space::
{
    global spacePressed, hjklPressed
    spacePressed := true
    hjklPressed := false
}

; When Space is released
$Space Up::
{
    global spacePressed, hjklPressed
    spacePressed := false

    ; If hjkl was not pressed while space was held, send a space
    if (!hjklPressed) {
        Send "{Space}"
    }

    hjklPressed := false
}

; h = Left arrow (when space is held)
$h::
{
    global spacePressed, hjklPressed
    if (spacePressed) {
        hjklPressed := true
        ; Build the command with current modifier keys
        mods := ""
        if GetKeyState("Ctrl", "P")
            mods .= "^"
        if GetKeyState("Shift", "P")
            mods .= "+"
        if GetKeyState("Alt", "P")
            mods .= "!"
        Send mods "{Left}"
    } else {
        Send "h"
    }
}

; j = Down arrow (when space is held)
$j::
{
    global spacePressed, hjklPressed
    if (spacePressed) {
        hjklPressed := true
        ; Build the command with current modifier keys
        mods := ""
        if GetKeyState("Ctrl", "P")
            mods .= "^"
        if GetKeyState("Shift", "P")
            mods .= "+"
        if GetKeyState("Alt", "P")
            mods .= "!"
        Send mods "{Down}"
    } else {
        Send "j"
    }
}

; k = Up arrow (when space is held)
$k::
{
    global spacePressed, hjklPressed
    if (spacePressed) {
        hjklPressed := true
        ; Build the command with current modifier keys
        mods := ""
        if GetKeyState("Ctrl", "P")
            mods .= "^"
        if GetKeyState("Shift", "P")
            mods .= "+"
        if GetKeyState("Alt", "P")
            mods .= "!"
        Send mods "{Up}"
    } else {
        Send "k"
    }
}

; l = Right arrow (when space is held)
$l::
{
    global spacePressed, hjklPressed
    if (spacePressed) {
        hjklPressed := true
        ; Build the command with current modifier keys
        mods := ""
        if GetKeyState("Ctrl", "P")
            mods .= "^"
        if GetKeyState("Shift", "P")
            mods .= "+"
        if GetKeyState("Alt", "P")
            mods .= "!"
        Send mods "{Right}"
    } else {
        Send "l"
    }
}
