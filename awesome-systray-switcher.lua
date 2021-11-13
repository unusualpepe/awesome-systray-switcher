-- Watch the focused screen and move the systray there
local focused_screen = awful.screen.focused()
wibox.widget.systray().set_screen(focused_screen)
gears.timer {
    timeout = 0.5,
    call_now = true,
    autostart = true,
    callback = function()
        if focused_screen.index ~= awful.screen.focused().index then
            focused_screen = awful.screen.focused()
            wibox.widget.systray().set_screen(focused_screen)
        end
    end
}
