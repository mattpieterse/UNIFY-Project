#NoEnv
#NoTrayIcon
#SingleInstance, Force

SetWorkingDir %A_ScriptDir%

#Include %A_ScriptDir%\Functions\func-Tasker.ahk

IniFile := A_ScriptDir . "\config.ini"

if !(FileExist(IniFile)) {
    MsgBox, 262160, Unexpected Error, The configuration file could not be found.`n`n"%A_ScriptDir%\config.ini"
    ExitApp
} else {
    IniRead, I_Active, % IniFile, Settings, DelayStartup    ; Interprets values to variable.
    IniRead, I_Delay, % IniFile, Settings, DelayAmmount     ; Interprets values to variable.
    I_Delay := I_Delay > 5000 ? 5000 : I_Delay              ; Ternary operation to cap the delay.
    if (I_Active == "true")
        Sleep I_Delay
    ExecuteHitlist(x)
    Run %A_ScriptDir%\masterfile.ahk
    ExitApp
}