import ahk,os,mouse
from pynput import keyboard
#obs
from obswebsocket import obsws, requests
host = "localhost"
port = 4444
password = ""
ws = obsws(host, port, password)
ws.connect()

#ahk
from ahk import AHK,Hotkey
from ahk.window import Window
ahk=AHK()

#hotekey
current=set()
enter=[{keyboard.Key.shift, keyboard.Key.f15}]
def on_press(key):
    if any([key in combo for combo in enter]):
        current.add(key)
        if any(all(k in current for k in combo)for combo in enter):
            if 'Brave' in str(ahk.active_window.title):
                (X,Y)=mouse.get_position()
                if X<1920:
                    mouse.move(2880,540)
                else:
                    mouse.move(960,540,-100)
            elif 'Visual Studio Code' in str(ahk.active_window.title):
                print("hello")
def on_release(key):
    if any([key in COMBO for COMBO in enter]):
        current.remove(key)

with keyboard.Listener(on_press=on_press,on_release=on_release) as l:
    l.join()
l.start()

#https://www.youtube.com/watch?v=XCwXWOe6VcU
#https://www.youtube.com/watch?v=kgiEF1frHQ8
#https://github.com/me2d13/luamacros