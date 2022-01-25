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

Center(winActive) {
    winHandle := WinExist("A")
    monHandle := DllCall("MonitorFromWindow", "Ptr", winHandle, "UInt", 0x2)
    VarSetCapacity(monitorInfo, 40), NumPut(40, monitorInfo)
    DllCall("GetMonitorInfo", "Ptr", monHandle, "Ptr", &monitorInfo)
    workT := NumGet(monitorInfo, 24, "Int")
    workL := NumGet(monitorInfo, 20, "Int")
    workR := NumGet(monitorInfo, 28, "Int")
    workB := NumGet(monitorInfo, 32, "Int")
    WinRestore, A
    WinGetPos, PosX, PosY, SizeX, SizeY, A
    if (winActive) { ; Center active window to active monitor.
        WinMove, A,
        , workL + (workR - workL) // 2 - SizeX // 2
        , workT + (workB - workT) // 2 - SizeY // 2
        Return
    } else { ; Center active window to the primary monitor.
        WinMove, (A_ScreenWidth/2)-(SizeX/2), (A_ScreenHeight/2)-(SizeY/2)
        Return
    }
    Return
}

Resolution(Screen_Width := 1920, Screen_Height := 1080, Color_Depth := 32)
{
	VarSetCapacity(Device_Mode, 156, 0)
	NumPut(156, Device_Mode, 36)
	DllCall("EnumDisplaySettingsA", UInt, 0, UInt, -1, UInt, &Device_Mode)
	NumPut(0x5c0000, Device_Mode, 40)
	NumPut(Color_Depth, Device_Mode, 104)
	NumPut(Screen_Width, Device_Mode, 108)
	NumPut(Screen_Height, Device_Mode, 112)
	Return DllCall("ChangeDisplaySettingsA", UInt, &Device_Mode, UInt, 0)
}

Brightness(ByRef brightness := 50, timeout = 1) {
; https://www.autohotkey.com/boards/viewtopic.php?t=83382#:~:text=resets%20the%20brightness.-,Code%3A,-Select%20all%20%2D%20Collapse
    Increments := 10
    For property in ComObjGet("winmgmts:\\.\root\WMI").ExecQuery("SELECT * FROM WmiMonitorBrightness")
	    currentBrightness := property.CurrentBrightness
    if (brightness >= 0 && brightness <= 100) {
		For property in ComObjGet("winmgmts:\\.\root\WMI").ExecQuery("SELECT * FROM WmiMonitorBrightnessMethods")
			property.WmiSetBrightness(timeout, brightness)	
	} else if (brightness > 100) {
 		brightness := 100
    } else if (brightness < 0) {
 		brightness := 0
 	}
    Return
}

KeyDisable(enableNumL, enableCapL, enableScrL) {
  ; 1 or On:   Turns on the key and removes the AlwaysOn/Off attribute of the key (if present).
  ; 0 or Off:  Turns off the key and removes the AlwaysOn/Off attribute of the key (if present).
  ; AlwaysOn:  Forces the key to stay on permanently.
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