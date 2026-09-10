# Numpad Macro Deck

Turn a spare USB numpad or keyboard into a Windows macro pad. LuaMacros listens
to one specific device and converts its keys into uncommon shortcuts; AutoHotkey
then turns those shortcuts into global or app-specific actions. This keeps the
extra keyboard independent from your main keyboard.

The included configuration provides two layers using Num Lock, with shortcuts
for browser navigation, Windows screen snipping, monitor profiles, media control,
and numeric input in SpaceClaim. Every action is intended to be customized.

## How it works

```text
Dedicated numpad -> LuaMacros -> F13-F24 shortcut -> AutoHotkey -> action
```

`macropad.lua` owns the device selection and key-to-shortcut routing.
`macropad.ahk` owns the actions. `obs_control.py` is an optional helper for OBS
Studio; the default configuration does not invoke it.

## Requirements

- Windows and a separate USB keyboard or numpad
- [LuaMacros](https://github.com/me2d13/luamacros) (download the binary linked
  from its README)
- [AutoHotkey v2](https://www.autohotkey.com/)
- Optional: Python 3.10+ and OBS Studio 28+ for the OBS helper

LuaMacros is experimental, Windows-only software whose maintainer warns that it
is difficult to use and has known bugs. Read its project notes before relying on
this setup for important workflows.

## Setup and run

1. Clone the repository and open the folder:

   ```powershell
   git clone https://github.com/arhammahajan/numpad-macro-deck.git
   cd numpad-macro-deck
   ```

2. Install AutoHotkey v2 and download and extract LuaMacros.

3. Find the identifier of the numpad. Open LuaMacros, load `macropad.lua`, and
   press the triangular **Play** button. The `lmc_print_devices()` output lists
   connected devices. Copy the identifier for the extra keyboard into
   `DEVICE_ID` near the top of `macropad.lua`.

4. Double-click `macropad.ahk` to start the AutoHotkey action layer. Its green
   **H** tray icon indicates that the script is running.

5. Load `macropad.lua` in LuaMacros again and press **Play**. Test the extra
   numpad. Keep both AutoHotkey and LuaMacros running while using the pad.

If LuaMacros cannot distinguish the devices, unplug the extra keyboard, run
`lmc_print_devices()`, reconnect it, and compare the two device lists.

## Default actions

| Numpad key | Num Lock | Context | Action |
| --- | --- | --- | --- |
| Subtract | On | Any app | Open Windows screen snipping |
| 0 / 1 / 2 | Off | Any app | Single / primary / extended monitor shortcut |
| 4 / 5 / 6 | Off | Brave | Previous tab / close tab / next tab |
| 5 | Off | Any other app | Play or pause media |
| 1-9 and decimal | On | SpaceClaim | Type the matching number or decimal point |

The monitor actions send `Ctrl+Alt+0/1/2`. Configure those shortcuts in your
display manager, or change or remove the three rules in `macropad.ahk`.

## Customize the pad

Edit the action associated with a routed shortcut in `macropad.ahk`. AutoHotkey
modifier symbols are `^` for Ctrl, `+` for Shift, `!` for Alt, and `#` for the
Windows key. Use `#HotIf WinActive("ahk_exe app.exe")` to limit actions to one
application. Reload the script from its tray icon after editing it.

To add a physical key, press it while the LuaMacros device list/log is visible,
note its virtual-key code, and add it to the `shortcuts` table in `macropad.lua`.
Route it to an unused F13-F24 combination, then define that combination in
`macropad.ahk`.

## Optional OBS helper

OBS Studio 28 and newer include obs-websocket. Enable the WebSocket server under
**Tools > WebSocket Server Settings**, then install the Python dependency:

```powershell
py -m venv .venv
.venv\Scripts\Activate.ps1
py -m pip install -r requirements.txt
```

Set connection details for the current PowerShell session and run a command:

```powershell
$env:OBS_PASSWORD = "your-websocket-password"
py obs_control.py toggle-recording
py obs_control.py scene "Camera"
```

`OBS_HOST` defaults to `localhost` and `OBS_PORT` defaults to `4455`. An
AutoHotkey action can invoke the helper with `Run`, for example:

```ahk
^F18::Run 'py "' A_ScriptDir '\obs_control.py" toggle-recording', A_ScriptDir
```

Do not put the OBS password in a committed script; provide it through the
`OBS_PASSWORD` environment variable.

## Troubleshooting

- If the normal keyboard triggers macros, `DEVICE_ID` points to the wrong device.
- If LuaMacros logs keys but no action occurs, confirm `macropad.ahk` is running
  under AutoHotkey v2 and that both scripts use the same routed shortcut.
- If an action works globally but not in a specific app, check the executable
  name with AutoHotkey Window Spy and update the relevant `#HotIf` rule.
- If an elevated app ignores macros, run both LuaMacros and AutoHotkey at the
  same privilege level as that app.
- If OBS commands fail, verify its WebSocket server, port, and password.

## Project status

This is a small personal automation template rather than a plug-and-play Stream
Deck replacement. Hardware identifiers and application bindings are deliberately
local configuration, so review both scripts before using them.

## License

Licensed under the [MIT License](LICENSE).
