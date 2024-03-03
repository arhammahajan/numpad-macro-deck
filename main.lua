lmc_device_set_name('streamdeck','884B96C3')
lmc_print_devices()
lmc_set_handler('streamdeck', function(button,direction)
  if (direction == 1) then return end
    if (button == 13) then
     lmc_send_keys('+{F15}', 50)

    elseif (button == 97) then
     lmc_send_keys('^{F20}', 50)

    elseif (button == 98) then
     lmc_send_keys('^{F21}', 50)

    elseif (button == 99) then
     lmc_send_keys('^{F22}', 50)

    elseif (button == 100) then
     lmc_send_keys('^{F23}', 50)

    elseif (button == 101) then
     lmc_send_keys('^{F24}', 50)

    elseif (button == 102) then
     lmc_send_keys('^%{F13}', 50)

    elseif (button == 103) then
     lmc_send_keys('^%{F14}', 50)

    elseif (button == 104) then
     lmc_send_keys('^%{F15}', 50)

    elseif (button == 105) then
     lmc_send_keys('^%{F16}', 50)

    elseif (button == 111) then
     lmc_send_keys('^{F17}', 50)

    elseif (button == 106) then
     lmc_send_keys('^{F16}', 50)

    elseif (button == 109) then
     lmc_send_keys('^{F15}', 50)

    elseif (button == 107) then
     lmc_send_keys('^{F14}', 50)

    elseif (button == 8) then
     lmc_send_keys('^{F13}', 50)

    elseif (button == 110) then
     lmc_send_keys('^{F19}', 50)

    elseif (button == 96) then
     lmc_send_keys('^{F18}', 50)
    elseif (button == 12) then
     lmc_send_keys('+{F20}', 50)
    elseif (button == 46) then
     lmc_send_keys('+{F14}', 50)
    elseif (button == 40) then
     lmc_send_keys('+{F17}', 50)
    elseif (button == 35) then
     lmc_send_keys('+{F16}', 50)
    elseif (button == 13) then
     lmc_send_keys('+{F15}', 50)
    elseif (button == 36) then
     lmc_send_keys('+{F22}', 50)
    elseif (button == 45) then
     lmc_send_keys('+{F13}', 50)
    elseif (button == 37) then
     lmc_send_keys('+{F19}', 50)
    elseif (button == 96) then
     lmc_send_keys('^{F18}', 50)
    elseif (button == 34) then
     lmc_send_keys('+{F18}', 50)
    elseif (button == 33) then
     lmc_send_keys('+{F24}', 50)
    elseif (button == 39) then
     lmc_send_keys('+{F21}', 50)
    elseif (button == 38) then
     lmc_send_keys('+{F23}', 50)
  end
end
)
