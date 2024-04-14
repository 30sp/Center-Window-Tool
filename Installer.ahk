centerWindowPath := A_ScriptDir . "\assets\Center Window.exe"
startupFolderPath := A_Startup . "\Center Window Tool.exe"

FileCopy, %centerWindowPath%, %startupFolderPath%, 1
Run, %startupFolderPath%, , Hide

MsgBox, Center Window Tool has been added to Startup folder. Press Left Shift three times to center the active window.