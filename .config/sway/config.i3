# Sway confe pasted from debian wiki
 input * xkb_layout "us"

# The magic key
set $mod Mod4



### Idle configuration
#
 exec swayidle -w \
          timeout 300 'swaylock -f -c 000000' \
          timeout 600 'swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' \
          before-sleep 'swaylock -f -c 000000'
#
# This will lock your screen after 300 seconds of inactivity, then turn off
# your displays after another 300 seconds, and turn your screens back on when
# resumed. It will also lock your screen before your computer goes to sleep.

# Set background
exec --no-startup-id swaybg -i /usr/share/images/backgrounds/parmitano.jpg

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
font pango:DejaVu Sans Mono 10

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec x-terminal-emulator

# kill focused window
bindsym $mod+Shift+q kill

# Menu
bindsym $mod+d exec --no-startup-id fish -c "wofi --show run"

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
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# switch to workspace
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# Exit sway
bindsym $mod+Shift+e exec swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -B 'Yes, exit sway' 'swaymsg exit'

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

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
# bar {
#         status_command i3status
# }

# Run polybar
exec_always --no-startup-id waybar

# Pulse Audio controls
bindsym XF86AudioRaiseVolume exec pactl set-sink-volume 0 +5% #increase sound volume
bindsym XF86AudioLowerVolume exec pactl set-sink-volume 0 -5% #decrease sound volume
bindsym XF86AudioMute exec pactl set-sink-mute 0 toggle # mute sound

# Enable floating stuff
for_window [floating] resize set 1000 900, move position center
for_window [window_role="pop-up"] floating enable
for_window [window_role="task_dialog"] floating enable


# Awesome lock screen
#set $Locker "i3lock-fancy -p -g -- scrot -z"
set $Locker "swaylock"
bindsym $mod+Mod1+space exec $Locker

# Ensure locking on some events
exec --no-startup-id xss-lock --transfer-sleep-lock -- $Locker

# Screen brightness controls
bindsym XF86MonBrightnessUp exec xbacklight -inc 10 
bindsym XF86MonBrightnessDown exec xbacklight -dec 10

bindsym $mod+g exec "~/bin/gtd"

# If you need to pick an application, try with: 
# xprop | grep CLASS

# Move second monitor to top when plugged in
exec --no-startup-id "~/.screenlayout/default.sh"

# Assign workspaces
workspace 1 output HDMI-0 
workspace 9 output DP-1

# Make xmessage always floating
for_window [class="Xmessage"] floating enable

# Screen captures
# Desktop screenshot
bindsym --release Print exec "scrot ~/tmp/capture/$(date --iso-8601='seconds').png -m -e 'xclip -selection c -t image/png < $f'"
# Choose window
bindsym --release Mod1+Sys_Req exec "import -window `xwininfo | awk '/.*Window id:.*/ {print $4}'` ~/tmp/capture/$(date --iso-8601='seconds').png"
# Selection screenshot
bindsym --release Shift+Print exec "scrot ~/tmp/capture/$(date --iso-8601='seconds').png -s -e 'xclip -selection c -t image/png < $f'"

# Run network-manager at startup
exec --no-startup-id nm-applet

# Run firefox at login
exec --no-startup-id i3-msg 'workspace 1; exec firefox; workspace 1'

# Run slack at login
assign [class="slack"] 9
exec --no-startup-id i3-msg 'workspace 9; exec slack; workspace 9'

