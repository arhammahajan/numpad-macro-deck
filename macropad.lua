-- Route key releases from a dedicated numpad to uncommon shortcuts.
-- Replace this value with the device identifier printed by LuaMacros.
local DEVICE_NAME = "macro_pad"
local DEVICE_ID = "REPLACE_WITH_DEVICE_ID"
local KEY_UP = 0
local SEND_DELAY_MS = 50

-- Virtual-key codes vary with Num Lock. Keeping both sets gives the pad two
-- useful layers without changing the normal keyboard's behavior.
local shortcuts = {
    -- Keys that do not change with Num Lock.
    [8] = "^{F13}",       -- Backspace
    [13] = "+{F15}",     -- Enter

    -- Num Lock on.
    [96] = "^{F18}",     -- 0
    [97] = "^{F20}",     -- 1
    [98] = "^{F21}",     -- 2
    [99] = "^{F22}",     -- 3
    [100] = "^{F23}",    -- 4
    [101] = "^{F24}",    -- 5
    [102] = "^%{F13}",   -- 6
    [103] = "^%{F14}",   -- 7
    [104] = "^%{F15}",   -- 8
    [105] = "^%{F16}",   -- 9
    [106] = "^{F16}",    -- Multiply
    [107] = "^{F14}",    -- Add
    [109] = "^{F15}",    -- Subtract
    [110] = "^{F19}",    -- Decimal
    [111] = "^{F17}",    -- Divide

    -- Num Lock off.
    [12] = "+{F20}",     -- Clear (5)
    [33] = "+{F24}",     -- Page Up (9)
    [34] = "+{F18}",     -- Page Down (3)
    [35] = "+{F16}",     -- End (1)
    [36] = "+{F22}",     -- Home (7)
    [37] = "+{F19}",     -- Left (4)
    [38] = "+{F23}",     -- Up (8)
    [39] = "+{F21}",     -- Right (6)
    [40] = "+{F17}",     -- Down (2)
    [45] = "+{F13}",     -- Insert (0)
    [46] = "+{F14}",     -- Delete (decimal)
}

lmc_print_devices()
lmc_device_set_name(DEVICE_NAME, DEVICE_ID)

lmc_set_handler(DEVICE_NAME, function(button, direction)
    if direction ~= KEY_UP then
        return
    end

    local shortcut = shortcuts[button]
    if shortcut then
        lmc_send_keys(shortcut, SEND_DELAY_MS)
    end
end)
