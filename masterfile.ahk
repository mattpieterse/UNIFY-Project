#NoEnv
#NoTrayIcon
#SingleInstance, force

SetWorkingDir %A_ScriptDir%

#Include %A_ScriptDir%\Functions\func-Tasker.ahk

#a::
    Shortcut("Autohotkey.lnk")
    Return
#b::
    Shortcut("Bitwarden.lnk")
    Return
#c::
    WinExist("A")
    WinGetPos,,, SizeX, SizeY
    WinMove, (A_ScreenWidth/2)-(SizeX/2), (A_ScreenHeight/2)-(SizeY/2)
    Return
#d::
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
#Esc:: ; WinMinimizeAll - WinMinimizeAllUndo
    ComObjCreate("Shell.Application").ToggleDesktop()
    Return
#Delete::
    FileRecycleEmpty 
    Return