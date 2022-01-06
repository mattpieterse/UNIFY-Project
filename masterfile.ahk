#NoEnv
#NoTrayIcon
#SingleInstance, Force

SetWorkingDir %A_ScriptDir%

/*  Created: Matthew Pieterse
 *  Version: Pre-release
 */

; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#Include %A_ScriptDir%\Functions\func-Tasker.ahk

; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

KeySwap(false)         ; Read documentation for more information on this function and its use.
KeyDisable(x, x, x)    ; Read documentation for more information on this function and its use.

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
    Return
    
#b::
    Return
    
#c::
; Center the active window to the active monitor.
; https://www.autohotkey.com/boards/viewtopic.php?t=15501#:~:text=2016%2C%2011%3A52-,Code%3A,-Select%20all%20%2D%20Expand
    winHandle := WinExist("A")
    monHandle := DllCall("MonitorFromWindow", "Ptr", winHandle, "UInt", 0x2)
    VarSetCapacity(monitorInfo, 40), NumPut(40, monitorInfo)
    DllCall("GetMonitorInfo", "Ptr", monHandle, "Ptr", &monitorInfo)
    workT := NumGet(monitorInfo, 24, "Int") ; Get monitor bounding for top.
    workL := NumGet(monitorInfo, 20, "Int") ; Get monitor bounding for left.
    workR := NumGet(monitorInfo, 28, "Int") ; Get monitor bounding for right.
    workB := NumGet(monitorInfo, 32, "Int") ; Get monitor bounding for bottom.
    WinRestore, A                                       ; Restore the active window.
    WinGetPos, PosX, PosY, SizeX, SizeY, A              ; Save window co-ordinates to variables.
    WinMove, A,                                         ; Relocate the window to the new position.
        , workL + (workR - workL) // 2 - SizeX // 2     ; Calculate window co-ordinates.
        , workT + (workB - workT) // 2 - SizeY // 2     ; Calculate window co-ordinates.
    ;   WinMove, (A_ScreenWidth/2)-(SizeX/2), (A_ScreenHeight/2)-(SizeY/2)
    Return
    
#d::
    Return
    
#e::
    Return
    
#f::
    Return
    
#g::
    Return
    
#h::
    Return
    
#i::
    Return
    
#j::
    Return
    
#k::
    Return
    
#l::
    Return
    
#m::
    Return
    
#n::
    Return
    
#o::
    Return
    
#p::
    Return
    
#q::
    Return
    
#r::
    Return
    
#s::
    Return
    
#t::
    Return
    
#u::
    Return
    
#v::
    Return
    
#w::
    Return
    
#x::
    Return
    
#y::
    Return
    
#z::
    Return
    
#Esc::
; Toggle between desktop and windows.
    ComObjCreate("Shell.Application").ToggleDesktop()
    Return
    
#End::
; Reload the current script at this location.
    Reload
    Return
    
#Delete::
; Clear the system recycle bin.
    FileRecycleEmpty 
    Return
    