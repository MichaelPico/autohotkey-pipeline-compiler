; Space-based navigation script
; Hold Space to enable hjkl as arrow keys
; Tap Space alone to type a space

spacePressed := false
hjklPressed := false

; When Space is pressed down
$Space::
{
    global spacePressed, hjklPressed
    spacePressed := true
    hjklPressed := false
    return
}

; When Space is released
$Space Up::
{
    global spacePressed, hjklPressed
    spacePressed := false

    ; If hjkl was not pressed while space was held, send a space
    if (!hjklPressed) {
        Send {Space}
    }

    hjklPressed := false
    return
}

; h = Left arrow (when space is held)
$h::
{
    global spacePressed, hjklPressed
    if (spacePressed) {
        hjklPressed := true
        Send {Left}
    } else {
        Send h
    }
    return
}

; j = Down arrow (when space is held)
$j::
{
    global spacePressed, hjklPressed
    if (spacePressed) {
        hjklPressed := true
        Send {Down}
    } else {
        Send j
    }
    return
}

; k = Up arrow (when space is held)
$k::
{
    global spacePressed, hjklPressed
    if (spacePressed) {
        hjklPressed := true
        Send {Up}
    } else {
        Send k
    }
    return
}

; l = Right arrow (when space is held)
$l::
{
    global spacePressed, hjklPressed
    if (spacePressed) {
        hjklPressed := true
        Send {Right}
    } else {
        Send l
    }
    return
}
