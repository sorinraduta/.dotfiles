#   _  __         _    _         _    
#  | |/ /___ _  _| |__(_)_ _  __| |___
#  | ' </ -_) || | '_ \ | ' \/ _` (_-<
#  |_|\_\___|\_, |_.__/_|_||_\__,_/__/
#            |__/                     

# Mod key
set $mod Mod4

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
# bindsym $mod+Return exec i3-sensible-terminal
bindsym $mod+Return exec kitty

# kill focused window
bindsym $mod+w kill

# start dmenu (a program launcher)
bindsym $mod+space exec rofi -show drun -show-icons
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+t layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
# bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# reload the configuration file
bindsym $mod+Shift+c reload

# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart

# http://ubuntuhandbook.org/index.php/2017/03/install-sopcast-player-ubuntu-16-04-16-10/
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# https://faq.i3wm.org/question/3747/enabling-multimedia-keys/?answer=3759#post-id-3759
# http://wiki.linuxquestions.org/wiki/XF86_keyboard_symbols
# Pulse Audio controls
bindsym XF86AudioRaiseVolume exec --no-startup-id ~/.scripts/volnoti.sh up
bindsym XF86AudioLowerVolume exec --no-startup-id ~/.scripts/volnoti.sh down
bindsym XF86AudioMute exec --no-startup-id ~/.scripts/volnoti.sh mute-toggle

# Sreen brightness controls
bindsym XF86MonBrightnessUp exec --no-startup-id xbacklight -inc 20 # increase screen brightness
bindsym XF86MonBrightnessDown exec --no-startup-id xbacklight -dec 20 # decrease screen brightness

# Touchpad controls
bindsym XF86TouchpadToggle exec --no-startup-id ~/.toggletouchpad.sh # toggle touchpad

# Media player controls
#bindsym XF86AudioPlay exec playerctl play
#bindsym XF86AudioPause exec playerctl pause
bindsym XF86AudioPlay exec --no-startup-id playerctl play-pause
bindsym XF86AudioPause exec --no-startup-id playerctl play-pause
bindsym XF86AudioNext exec --no-startup-id playerctl next
bindsym XF86AudioPrev exec --no-startup-id playerctl previous

# lockscreen
bindsym $mod+Escape exec --no-startup-id dm-tool lock

# screenshot
bindsym $mod+p exec --no-startup-id ~/.scripts/screenshot.sh
bindsym $mod+Print exec --no-startup-id ~/.scripts/screenshot.sh
bindsym Print exec --no-startup-id ~/.scripts/screenshot.sh

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"