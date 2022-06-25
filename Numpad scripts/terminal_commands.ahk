; NPM RUN LINT
NumpadDiv::
if (WinActive("ahk_exe Code.exe")) { ; Make the script only run in VScode
PixelGetColor, terminalStatus, 1545, 900, RGB ; Replace the numbers "1545" and "900" if your theme is different then mine
if (terminalStatus = 0x24292E) ; terminal is closed, bring it up (terminal cursor is autoselected upon brining it up)
{
    Send, ^+. ; CTRL + SHIFT + A, selecting all the text
}
else 
{
    MouseGetPos X, Y
    PixelGetColor, cursorPlace, %X%, %Y%, RGB
    if (cursorPlace != 0x1F2428) ; mouse is outside of the terminal, click move mouse and click
    { 
    Click, 1545 900 ; terminal is open, click in it to select
    }
}
Sleep, 200
Send, ^a
Send, {BackSpace}
Sleep, 200
SendInput, npm run lint
Send, {Enter}
return
}

; NPM RUN DEV
NumpadMult::
if (WinActive("ahk_exe Code.exe")) { ; only works in VSCODE
PixelGetColor, terminalStatus, 1545, 900, RGB ; Replace the numbers "1545" and "900" if your theme is different then mine
if (terminalStatus = 0x24292E) ; terminal is closed, bring it up (terminal cursor is autoselected upon brining it up)
{
    Send, ^+. ; CRTL + SHIFT + A
}
else 
{
    MouseGetPos X, Y
    PixelGetColor, cursorPlace, %X%, %Y%, RGB
    if (cursorPlace != 0x1F2428) ; mouse is outside of the terminal, click move mouse and click
    { 
    Click, 1545 900 ; terminal is open, click in it to select
    }
}
Sleep, 200
Send, ^a
Send, {BackSpace}
Sleep, 200
SendInput, npm run dev
Send, {Enter}
return
}