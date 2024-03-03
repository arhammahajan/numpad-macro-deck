run, E:\Desktop\mainscript.lua

#IfWinActive ahk_exe Zoom.exe
+F13::
Send, ^d
return
;zero numlock off

#IfWinActive 
+F13::
Run, "C:\Users\Arham Mahajan\AppData\Roaming\Zoom\bin\Zoom.exe"
return

#IfWinActive Meet
+F13::
Send, ^d
return
;zero numlock off

#IfWinActive ahk_exe chrome.exe
+F13::
Send, {F11}
return
;zero numlock off

#IfWinActive
+F14::
Send, #+s
return
;point(numlock off)

#IfWinActive
+F15::
run, C:\all codes\obswebsocket\script1.pyw cursor
return
;enter

#IfWinActive Meet 
+F16::
Send, Present
Send, {enter}
Send, {escape}
return

#IfWinActive Classes
+F16::
Run, https://classroom.google.com/u/0/c/MzU4NzYwOTY5NTQ0
return

#IfWinActive Meet 
+F17::
Send, Present(forgot to write earlier)
Send, {enter}
Send, {escape}
return

#IfWinActive Classes
+F17::
Run, https://classroom.google.com/u/0/c/MzU5NDk4MzQyMDkz
return
;2(numlock off)

#IfWinActive ahk_exe Brave.exe
+F17::
Send, {scrolldown}
return
;2(numlock off)

#IfWinActive ahk_exe chrome.exe
+F17::
Send, {down}
return
;2(numlock off)

#IfWinActive ahk_exe Spotify.exe
+F17::
Send, ^{down}
return
;2(numlock off)

#IfWinActive
+F17::
Run, "C:\Program Files\Adobe\Adobe Premiere Pro 2020\Adobe Premiere Pro.exe"
return

#IfWinActive Meet 
+F18::
Send, Present(reconnected)
Send, {enter}
Send, {escape}
return

#IfWinActive Classes
+F18::
Run, https://classroom.google.com/u/0/c/MzU5NDM2MjI4Mjkw
return

#IfWinActive 
+F18::
Run, "C:\Program Files\Streamlabs OBS\Streamlabs OBS.exe"
return

#IfWinActive ahk_exe Brave.exe
+F19::
Send, ^+{tab}
return

#IfWinActive ahk_exe Spotify.exe
+F19::
Send, ^{Left}
return
;4(numlock off)

#IfWinActive ahk_exe chrome.exe
+F19::
Send, ^+{tab}
return
;4(numlock off)

#IfWinActive ahk_exe Spotify.exe
+F20::
Send, {space}
return
;5(numlock off)

#IfWinActive Meet
+F20::
Send, {Ctrl down}{Alt down}c{Ctrl up}{Alt up}
return
;5(numlock off)

#IfWinActive ahk_exe chrome.exe
+F20::
Send, {space}
return
;5(numlock off)

#IfWinActive ahk_exe Brave.exe
+F21::
Send, ^{tab}
return

#IfWinActive ahk_exe Spotify.exe 
+F21::
Send, ^{Right}
return
;6(numlock off)

#IfWinActive ahk_exe chrome.exe
+F21::
Send, ^{tab}
return
;6(numlock off)

#IfWinActive Meet 
+F22::
Send, Yes Ma'am
Send, {enter}
Send, {escape}
return

#IfWinActive Classes
+F22::
Run, https://classroom.google.com/u/0/c/MzU5MzkwMDIyNzE3
return

#IfWinActive Meet 
+F23::
Send, Good Morning Ma'am
Send, {enter}
Send, {escape}
return

#IfWinActive Classes
+F23::
Run, https://classroom.google.com/u/0/c/MzU5MzQxNDc4NjY0
return

#IfWinActive ahk_exe Brave.exe
+F23::
Send, {scrollup}
return
;8(numlock off)

#IfWinActive ahk_exe chrome.exe
+F23::
Send, {up}
return
;8(numlock off)

#IfWinActive ahk_exe Spotify.exe
+F23::
Send, ^{up}
return
;8(numlock off)

#IfWinActive Meet
+F24::
Send, 9
Send, {enter}
Send, {escape}
return
;9(numlock off)

#IfWinActive Classes
+F24::
Run, https://classroom.google.com/u/0/c/MzU4NjI3MTMyNjg4
return
;9(numlock off)

#IfWinActive ahk_exe Brave.exe
^F13::
Send, ^w
return
#IfWinActive 
^F13::
Send, !{F4}
return

#IfWinActive
^F14::
Run, "C:\Users\Arham Mahajan\AppData\Local\WhatsApp\WhatsApp.exe"
return
;plus sign

#IfWinActive ahk_exe Whatsapp.exe 
^F14::
WinMinimize, ahk_exe Whatsapp.exe  
return
;plus sign

#IfWinExist, ahk_exe Whatsapp.exe
^F14::
WinActivate
return
;plus sign

#IfWinActive ahk_exe
^F15::
Send "#+s"
return

#IfWinActive ahk_exe Brave.exe
^F16::
Run, C:\Users\Arham Mahajan\Desktop\period changer.ahk
return
;asterisk

#IfWinExist, ahk_exe Brave.exe 
^F16::
WinActivate
return

#IfWinActive 
^F16::
if (day!="Saturday" or day!="Sunday")
{
	Run, "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
}
else 
{
	Run,www.classroom.google.com
}
return
;asterisk

#IfWInActive all study related stuff
^F17::
WinMinimize, all study related stuff
return
;slash

#IfWinActive 
^F17::
Run, "C:\Users\Arham Mahajan\Desktop\all study related stuff"
return
;slash

#IfWinExist, all study related stuff 
^F17::
WinActivate
return
;slash

#IfWinActive
^F18::
Send, !+m
return

#IfWinExists ahk_exe obs64.exe
^F18::
run, C:\all codes\obswebsocket\script1.pyw rec
return

#IfWinExists ahk_exe obs64.exe
^F19::
run, C:\all codes\obswebsocket\script1.pyw game
return

#IfWinExist, ahk_exe obs64.exe
^F20::
run, C:\all codes\obswebsocket\script1.pyw game
return

#IfWinActive
^F20::
Run, "C:\Users\Arham Mahajan\AppData\Local\Programs\Microsoft VS Code\Code.exe"
return

#IfWinActive ahk_exe Code.exe
^F20::
WinMinimize
return

#IfWinExist, ahk_exe obs64.exe
^F21::
run, C:\all codes\obswebsocket\script1.pyw cam
return

#IfWinActive
^F21::
Run, "C:\Program Files\Adobe\Adobe Premiere Pro 2020\Adobe Premiere Pro.exe"
return

#IfWinActive
^F22::
Run, "C:\Program Files\Streamlabs OBS\Streamlabs OBS.exe"
return

#IfWinActive
^F23::
Run, "C:\Program Files (x86)\Sony\PS Remote Play\RemotePlay.exe"
return

#IfWinActive ahk_exe RemotePlay.exe
^F23::
WinMinimize
return

#IfWinExist, ahk_exe RemotePlay.exe
^F23::
WinActivate
return

#IfWinActive
^F24::
Run, "C:\Users\Arham Mahajan\Desktop\Marshungry (Main) - Chrome.lnk" www.netflix.com
return

#IfWinExist, ahk_exe chrome.exe
^F24::
WinActivate
return

#IfWinActive ahk_exe chrome.exe
^F24::
WinMinimize
return

#IfWinActive
!^F13::
Run, "C:\Windows\System32\calc.exe"
return

#IfWinActive ahk_exe calc.exe
!^F13::
WinMinimize
return

#IfWinExists, ahk_exe calc.exe
!^F13::
WinActivate 
return

#IfWinActive
!^F14::
Send, 7
return

#IfWinActive
!^F15::
Send, 8
return

#IfWinActive
!^F16::
Send, 9
return

#IfWinActive
!^F17::
Send, #
return

#IfWinActive
^!F18::
Send, {volume_up} 
return

