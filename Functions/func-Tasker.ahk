#NoEnv
#NoTrayIcon
#SingleInstance, Force

SetWorkingDir %A_ScriptDir%

Shortcut(Target) {
    Run %A_ScriptDir%\Assets\Shortcuts\%Target%
    Return
} ; Include the filetype extension.

ExecuteHit(Target) {
    Process, Close, %Target%
    Return
} ; Can also target process PID. (standard syntax 'process_name.exe')

ExecuteHitlist(Target) {
  ; The file that is executed will not be included in the repository, please create the file yourself or use the commented code as an example.
  ; If you decide to keep the code local to this file opposed to creating another file, remove the run command line and do not use 'ExitApp'.
  ; ---
  ; Process, Close, process_name1.exe
  ; Process, Close, process_name2.exe
  ; ExitApp
    Run %A_ScriptDir%\Assets\Development\Hitlist.ahk
    Return
}