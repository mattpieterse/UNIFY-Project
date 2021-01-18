#NoEnv
#NoTrayIcon
#SingleInstance, force

SetWorkingDir %A_ScriptDir%

#Include %A_ScriptDir%\Functions\func-Tasker.ahk

IniFile := A_ScriptDir . "\config.ini"

if !(FileExist(IniFile)) {
    MsgBox, 262160, Unexpected Error, The configuration file could not be found.`n`n"%A_ScriptDir%\config.ini"
    ExitApp
} else {
    IniRead, I_Active, % IniFile, Settings, DelayStartup
    IniRead, I_Delay, % IniFile, Settings, DelayAmmount
    if (I_Active == "true")
        Sleep I_Delay
    ExecuteHitlist(x)
    Run %A_ScriptDir%\masterfile.ahk
    ExitApp
}