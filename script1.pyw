import sys,os,mouse
from obswebsocket import obsws, requests
host = "localhost"
port = 4444
password = ""
ws = obsws(host, port, password)
ws.connect()

n = len(sys.argv)

if sys.argv[1]=="cursor":
    (X,Y)=mouse.get_position()
    if X<1920:
        mouse.move(2880,540)
    else:
        mouse.move(960,540,-100)
elif sys.argv[1]=="rec":
    ws.call(requests.StartStopRecording())
elif sys.argv[1]=="game":
    ws.call(requests.SetCurrentScene("game"))
elif sys.argv[1]=="cam":
    ws.call(requests.SetCurrentScene("cam"))