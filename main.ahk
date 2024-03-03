^F15:: Send "#S" ;global hotkey for taking a screenshot(same across both layers)
+F16:: Send "^!1" ;global hotkey for switching to the primary monitor profile(only in the standard layer)
+F17:: Send "^!2" ;global hotkey for switching to the extended monitor profile(only in the standard layer)
+F13:: Send "^!0" ;global hotkey for switching to the single monitor profile(only in the standard layer)

;hotkeys when brave is active
#HotIf WinActive("ahk_exe brave.exe")
+F19:: Send "^+{tab}" ;move one tab to the left(only in the standard layer)
+F21:: Send "^{tab}" ;move one tab to the right(only in the standard layer)
+F20:: Send "^w" ;close the current tab(only in the standard layer)

#HotIf WinActive("ahk_exe spaceclaim.exe")
^F20:: Send "1" ;send the number 1(only in numpad layer)
^F21:: Send "2" ;send the number 2(only in numpad layer)
^F22:: Send "3" ;send the number 3(only in numpad layer)
^F23:: Send "4" ;send the number 4(only in numpad layer)
^F24:: Send "5" ;send the number 5(only in numpad layer)
^!F13:: Send "6" ;send the number 6(only in numpad layer)
^!F14:: Send "7" ;send the number 7(only in numpad layer)
^!F15:: Send "8" ;send the number 8(only in numpad layer)
^!F16:: Send "9" ;send the number 9(only in numpad layer)
^F19:: Send "." ;send .(only in numpad layer)
;+F15:: Send "{Enter}" ;send enter(only in numpad layer)
;^F13:: Send "{BS down}{BS up}" ;send backspace(only in numpad layer)

#HotIf
+F20:: Send "{Media_Play_Pause}"