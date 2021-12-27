#NoEnv
#NoTrayIcon
#SingleInstance, Force

SetWorkingDir %A_ScriptDir%

/*  Created: Matthew Pieterse
 *  Version: pre-release
 */

; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#Include %A_ScriptDir%\Functions\func-Tasker.ahk

; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

 #F1::Return
 #F2::Return
 #F3::Return
 #F4::Return
 #F5::Return
 #F6::Return
 #F7::Return
 #F8::Return
 #F9::Return
#F10::Return
#F11::Return
#F12::Return
#F13::Return
#F14::Return
#F15::Return
#F16::Return
#F17::Return
#F18::Return
#F19::Return
#F20::Return
#F21::Return
#F22::Return
#F23::Return
#F24::Return

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#1::Return
#2::Return
#3::Return
#4::Return
#5::Return
#6::Return
#7::Return
#8::Return
#9::Return
#0::Return

; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#a::
    Shortcut("Autohotkey.lnk")
    Return
#b::
    Shortcut("Bitwarden.lnk")
    Return
#c::
; Center the active window to the primary monitor.
    WinExist("A")                                                           ; Detect the active window.
    WinRestore, A                                                           ; Restore the active window.
    WinGetPos, PosX, PosY, SizeX, SizeY                                     ; Save window co-ordinates to variables.
    WinMove, (A_ScreenWidth/2)-(SizeX/2), (A_ScreenHeight/2)-(SizeY/2)      ; Relocate the window to the new position.
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
