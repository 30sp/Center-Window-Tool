#SingleInstance force

shiftCount := 0
shiftTimeout := 5000

~LShift::
    shiftCount++
    SetTimer, ResetShiftCount, %shiftTimeout%
    if (shiftCount >= 3) {
        CenterWindow()
        shiftCount := 0
    }
return

ResetShiftCount:
    shiftCount := 0
return

CenterWindow() {
    WinGetPos, winX, winY, winWidth, winHeight, A
    SysGet, screenWidth, 78
    SysGet, screenHeight, 79
    centerX := (screenWidth - winWidth) // 2
    centerY := (screenHeight - winHeight) // 2 - 60 // 2 ; 60 is the height of the taskbar
    WinMove, A, , centerX, centerY
}
