#NoEnv
#NoTrayIcon
#SingleInstance, force

SetWorkingDir %A_ScriptDir%

#Include, %A_ScriptDir%\Functions\func-KillProcess.ahk

#a::
    Run %A_ScriptDir%\Assets\Shortcuts\Autohotkey.lnk
    Return
#b::
    Run %A_ScriptDir%\Assets\Shortcuts\Bitwarden.lnk
    Return
#c::
    Return
#d::
    Return
#e::
    Run %A_ScriptDir%\Assets\Shortcuts\Explorer.lnk
    Return
#f::
    Run %A_ScriptDir%\Assets\Shortcuts\Firefox.lnk
    Return
#g::
    Return
#h::
    Return
#i::
    Run %A_ScriptDir%\Assets\Shortcuts\Settings.lnk
    Return
#j::
    Return
#k::
    Run %A_ScriptDir%\Assets\Shortcuts\Manager.lnk
    Return
#l::
    Return
#m::
    Run %A_ScriptDir%\Assets\Shortcuts\Spotify.lnk
    Return
#n::
    Run %A_ScriptDir%\Assets\Shortcuts\Code.lnk
    Return
#o::
    Run %A_ScriptDir%\Assets\Shortcuts\OBS.lnk
    Return
#p::
    Return
#q::
    Run %A_ScriptDir%\Assets\Shortcuts\Toggl.lnk
    Return
#r::
    Run %A_ScriptDir%\Assets\Shortcuts\Run.lnk
    Return
#s::
    Run %A_ScriptDir%\Assets\Shortcuts\Everything.lnk
    Return
#t::
    Run %A_ScriptDir%\Assets\Shortcuts\Cmder.lnk
    Return
#u::
    Return
#v::
    Return
#w::
    Run %A_ScriptDir%\Assets\Shortcuts\Spy.lnk
    Return
#x::
    Return
#y::
    Return
#z::
    Return
#Delete::
    FileRecycleEmpty 
    Return