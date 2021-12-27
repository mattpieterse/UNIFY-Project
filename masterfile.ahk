#NoEnv
#NoTrayIcon
#SingleInstance, Force

SetWorkingDir %A_ScriptDir%

#Include %A_ScriptDir%\Functions\func-Tasker.ahk

wc_occurence := 0

#a::
    Shortcut("Autohotkey.lnk")
    Return
#b::
    Shortcut("Bitwarden.lnk")
    Return
#c::
; Center the active window to the primary monitor.
    WinExist("A")                                                           ; Detect the active window.
    if (wc_occurence = 0) {
        WinMaximize, A                                                      ; Lazy fix for bugs.
        WinRestore, A                                                       ; Restore the acive window if fullscreen.
        wc_occurence++
    } else {
        WinRestore, A                                                       ; Lazy fix for bugs.
        WinMaximize, A                                                      ; Maximize the current window if restored.
        wc_occurence := 0
    }
    WinGetPos, PosX, PosY, SizeX, SizeY                                     ; Save window co-ordinates to variables.
    WinMove, (A_ScreenWidth/2)-(SizeX/2), (A_ScreenHeight/2)-(SizeY/2)      ; Move the window to the new position.
    Return
#d:: 
; Open the ditto clipboard manager dialog.
    BlockInput On
    Send #^+!=
    BlockInput Off
    Return
#e::
    Shortcut("Explorer.lnk")
    Return
#f::
    Shortcut("Firefox.lnk")
    Return
#g::
    Return
#h::
    Return
#i::
    Shortcut("Settings.lnk")
    Return
#j::
    Return
#k::
    Shortcut("Manager.lnk")
    Return
#l::
    Return
#m::
    Shortcut("Spotify.lnk")
    Return
#n::
    Shortcut("Code.lnk")
    Return
#o::
    Shortcut("OBS.lnk")
    Return
#p::
    Return
#q::
    Shortcut("Toggl.lnk")
    Return
#r::
    Shortcut("Run.lnk")
    Return
#s::
    Shortcut("Everything.lnk")
    Return
#t::
    Shortcut("Cmder.lnk")
    Return
#u::
    Return
#v::
    Return
#w::
    Shortcut("Spy.lnk")
    Return
#x::
    Return
#y::
    Return
#z::
    Return
#Esc::
; Toggle between desktop.
    ComObjCreate("Shell.Application").ToggleDesktop()
    Return
#End::
; Reload the script on this file.
    Reload
    Return
#Delete::
; Clear the system bin.
    FileRecycleEmpty 
    Return
