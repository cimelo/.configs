## 	CMDS								Description:
wal -R &								## Wallpaper and color scheme set
sxhkd -r /dev/null &							## Keybindings
transmission-daemon &							## Yooohooohooooooooooooooooooo
xbacklight =` cat .cache/lastsession/backlight ` &			## Use last session backlight value
picom &									## Transparency
mousepad_start.sh &							## Mousepad defaults
as_start.sh &								## Alsa startup
monitor_selection.sh d &
udiskie &								## Disk mounting daemon	
ibus-daemon &								## Daemon for ibus processes
keylayout.sh &								## Swap Escape and Caps, Menu as Second Super key
twmnd &									## Daemon for nofity-send
dwmblocks &								## Startus bar
exec dwm
