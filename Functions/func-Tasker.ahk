#NoEnv
#NoTrayIcon
#SingleInstance, force

SetWorkingDir %A_ScriptDir%

executeHit(Target) {
    Process, Close, %Target%
    Return
} ; Can also target process PID.

executeHitlist(Target) {
  ; The file that is executed will not be included in the repository, please create the file yourself or use the commented code as an example, if you decide to keep the code local to this file opposed to creating another file, do not use 'ExitApp'.
  ; Process, Close, process_name1.exe
  ; Process, Close, process_name2.exe
  ; ExitApp
    Run %A_ScriptDir%\Assets\Development\Hitlist.ahk
    Return
}

Shortcut(Target) {
    Run %A_ScriptDir%\Assets\Shortcuts\%Target%
    Return
}