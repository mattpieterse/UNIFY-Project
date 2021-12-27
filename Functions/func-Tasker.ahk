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

KeyDisable(enableNumL, enableCapL, enableScrL) {
  ; 1 or On: Turns on the key and removes the AlwaysOn/Off attribute of the key (if present).
  ; 0 or Off: Turns off the key and removes the AlwaysOn/Off attribute of the key (if present).
  ; AlwaysOn: Forces the key to stay on permanently.
  ; AlwaysOff: Forces the key to stay off permanently.
    SetNumlockState, %enableNumL%
    SetCapsLockState, %enableCapL%
    SetScrollLockState, %enableScrL%
    Return
}

KeySwap(isEnabled) {
    if (isEnabled) {
        Return
    }
    Return
}