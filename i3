# This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod4

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
#font pango:monospace 9
font pango:System San Francisco Display 10

# thin borders
hide_edge_borders both

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec termite

# kill focused window
bindsym $mod+Shift+q kill

# start dmenu (a program launcher)
# bindsym $mod+d exec dmenu_run
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
bindsym $mod+d exec rofi -show run

# change focus
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+u split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+Shift+s layout stacking
bindsym $mod+Shift+w layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

set $ws1 "1: "
set $ws2 "2: "
set $ws3 "3: "
set $ws4 "4: "


# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10

assign [class="Firefox"] $ws1
for_window [class="Spotify"] move to workspace $ws2
assign [class="Steam"] $ws4
# reload the configuration file
bindsym $mod+Shift+c reload

# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart

# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Log out' 'i3-msg exit' -b 'Shut down' 'poweroff' -b 'Restart' 'reboot'"

# lock
bindsym $mod+Shift+x exec i3lock --color 475263

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
        bindsym ntilde resize grow width 10 px or 10 ppt

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

set $bg-color            #2f343f
set $inactive-bg-color   #2f343f
set $text-color          #f3f4f5
set $inactive-text-color #676e7d
set $urgent-bg-color     #e53935
set $indicator-color     #a0a0a0

# set window colors
#                       border             background         text                 indicator
client.focused          $bg-color          $bg-color          $text-color          $indicator-color
client.unfocused        $inactive-bg-color $inactive-bg-color $inactive-text-color $indicator-color
client.focused_inactive $inactive-bg-color $inactive-bg-color $inactive-text-color $indicator-color
client.urgent           $urgent-bg-color   $urgent-bg-color   $text-color          $indicator-color


# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
	status_command i3status
	font pango:San Fransisco Display 9
        
	colors {
		background $bg-color
	    	separator #757575
		#                  border             background         text
		focused_workspace  $bg-color          $bg-color          $text-color
		inactive_workspace $inactive-bg-color $inactive-bg-color $inactive-text-color
		urgent_workspace   $urgent-bg-color   $urgent-bg-color   $text-color
	}
}

# floating windows
for_window [class="Pavucontrol"] floating enable
for_window [class="Kalu"] floating enable
for_window [class="Thunar"] floating enable
for_window [class="File-roller"] floating enable


# Multimedia Keys

# volume
bindsym XF86AudioRaiseVolume exec amixer -D pulse sset Master 5%+ && pkill -RTMIN+1 i3blocks
bindsym XF86AudioLowerVolume exec amixer -D pulse sset Master 5%- && pkill -RTMIN+1 i3blocks

# granular volume control
bindsym $mod+XF86AudioRaiseVolume exec amixer -D pulse sset Master 1%+ && pkill -RTMIN+1 i3blocks
bindsym $mod+XF86AudioLowerVolume exec amixer -D pulse sset Master 1%- && pkill -RTMIN+1 i3blocks

# mute
bindsym XF86AudioMute exec amixer sset Master toggle && killall -USR1 i3blocks

bindsym XF86AudioPlay exec playerctl play-pause
bindsym XF86AudioNext exec playerctl next
bindsym XF86AudioPrev exec playerctl previous

#bindsym XF86AudioPlay exec mocp --toggle-pause
#bindsym XF86AudioPause exec mocp --toggle-pause
#bindsym XF86AudioStop exec mocp --togle-pause
#bindsym XF86AudioNext exec mocp --next
#bindsym XF86AudioPrev exec mocp --previous

bindsym $mod+F5 exec mocp --toggle-pause
bindsym $mod+F6 exec mocp --stop
bindsym $mod+F7 exec mocp --previous
bindsym $mod+F8 exec mocp --next

# App shortcuts
bindsym $mod+w exec "/usr/bin/firefox"
bindsym $mod+n exec "/usr/bin/thunar"

# Floating windows
for_window [class="File-Roller"] floating enable
# Redirect sound to headphones
bindsym $mod+m exec "/usr/local/bin/switch-audio-port"
# Autostart workspaces
exec firefox
exec spotify
exec steam
# Autostart apps
exec --no-startup-id /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
exec --no-startup-id "compton -b"
exec_always feh --bg-scale /home/arseni/Pictures/wallpapers/wallpaper.jpg
exec --no-startup-id nm-applet
exec xset r rate 500 25
exec redshift 5500:2000
exec imwheel
exec --no-startup-id "nitrogen --restore"
exec --no-startup-id "sleep 5s && kalu"
exec xmodmap -e "pointer = 3 2 1"
exec setxkbmap -option compose:ralt
