#Requires AutoHotkey v2.0

CapsLock::
{
    KeyWait "CapsLock"
    if (A_TimeSinceThisHotkey > 500)
    {
        if (GetKeyState("CapsLock", "T") == 0) {
            SetCapsLockState("On")
        } else {
            SetCapsLockState("Off")
        }
    }
    else
    {
        Send("{Ctrl Down}{Space Down}{Ctrl Up}{Space Up}")
    }
}

#q::Send "^#{Left}"

#e::Send "^#{Right}"