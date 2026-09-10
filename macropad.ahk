#Requires AutoHotkey v2.0
#SingleInstance Force

; Global actions -------------------------------------------------------------

^F15::Send "#+s"  ; NumPad Subtract: open Windows screen snipping.

; Num Lock off: invoke configured monitor-profile shortcuts.
+F13::Send "^!0"  ; NumPad Insert: single monitor.
+F16::Send "^!1"  ; NumPad End: primary monitor.
+F17::Send "^!2"  ; NumPad Down: extended monitors.

; Browser actions ------------------------------------------------------------

#HotIf WinActive("ahk_exe brave.exe")
+F19::Send "^+{Tab}"  ; NumPad Left: previous tab.
+F20::Send "^w"       ; NumPad Clear: close tab.
+F21::Send "^{Tab}"   ; NumPad Right: next tab.

; SpaceClaim actions ---------------------------------------------------------

#HotIf WinActive("ahk_exe spaceclaim.exe")
^F20::Send "1"
^F21::Send "2"
^F22::Send "3"
^F23::Send "4"
^F24::Send "5"
^!F13::Send "6"
^!F14::Send "7"
^!F15::Send "8"
^!F16::Send "9"
^F19::Send "."

; Fallback actions -----------------------------------------------------------

#HotIf
+F20::Send "{Media_Play_Pause}"  ; NumPad Clear with Num Lock off.
