#   ██████╗ ████████╗██╗██╗     ███████╗
#  ██╔═══██╗╚══██╔══╝██║██║     ██╔════╝
#  ██║   ██║   ██║   ██║██║     █████╗  
#  ██║▄▄ ██║   ██║   ██║██║     ██╔══╝  
#  ╚██████╔╝   ██║   ██║███████╗███████╗
#   ╚══▀▀═╝    ╚═╝   ╚═╝╚══════╝╚══════╝
# qtile configuration
# Check marcosdly/dotfiles on GitHub

from typing import List  # noqa: F401

from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

import os
import subprocess

from libqtile import hook

mod = "mod4"
terminal = "kitty"

keys = [
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(),
        desc="Move window focus to other window"),

    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(),
        desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(),
        desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(),
        desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(),
        desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(),
        desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(),
        desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack"),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),

    Key([mod, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "d", lazy.spawn("rofi -show drun -show-icons"),
        desc="Spawn a command using a prompt widget"),
    Key([mod, "shift"], "d", lazy.spawn("bash -c \"$(rofi -dmenu -p \'Run any command\')\""),
        desc="Spawn a command using a prompt widget"),

]

groups = [
    Group(
        name="1",
        label="Web",
        matches=[
            Match(wm_class=["brave-browser"]),
            Match(wm_class=["librewolf"]),
            Match(wm_class=["firefox"])
        ]
    ),
    Group(
        name="2",
        label="CLI",
        matches=[
            Match(wm_class=["kitty"]),
            Match(wm_class=["alacritty"]),
            Match(wm_class=["xfce4-terminal"])
        ]
    ),
    Group(
        name="3",
        label="Dev",
        matches=[
            Match(wm_class=["vscodium"]),
            Match(wm_class=["rstudio"])
        ]
    ),
    Group(
        name="4",
        label="Doc",
        matches=[
            Match(wm_class=["libreoffice"]),
            Match(wm_class=["tm"]),
            Match(wm_class=["pr"]),
            Match(wm_class=["pm"])
        ]
    ),
    Group(
        name="5",
        label="Media",
        matches=[
            Match(wm_class=["spotify"]),
            Match(wm_class=["vlc"])
        ]
    ),
    Group(
        name="6",
        label="Social",
        matches=[
            Match(wm_class=["discord"])
        ]
    ),
    Group(
        name="7",
        label="Game",
        matches=[
            Match(wm_class=["Steam"])
        ]
    ),
    Group(
        name="8",
        label="Other"
    )
]

for i in groups:
    keys.extend([
        # mod1 + letter of group = switch to group
        Key([mod], i.name, lazy.group[i.name].toscreen(),
            desc="Switch to group {}".format(i.name)),

        # mod1 + shift + letter of group = switch to & move focused window to group
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
            desc="Switch to & move focused window to group {}".format(i.name)),
        # Or, use below if you prefer not to switch to that group.
        # # mod1 + shift + letter of group = move focused window to group
        # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
        #     desc="move focused window to group {}".format(i.name)),
    ])

layouts = [
    layout.Columns( 
        border_focus='#35d12a',
        border_width=2
    ),
    layout.Max(),
    # layout.Slice(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    layout.Matrix(
        border_focus='35d12a',
        border_width=2
    )
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy()
]

screens = [
    Screen(
        bottom=bar.Bar(
            [
                widget.Sep(),
                widget.GroupBox(
                    borderwidth=2,
                    disable_drag=True,
                    other_current_screen_border='747821',
                    fmt='{label}'
                ),
                widget.Sep(),
                widget.CurrentLayout(),
                widget.Sep(),
                widget.WindowCount(
                    show_zero=True,
                    text_format='{num} Windows'
                ),
                widget.Spacer(length=bar.STRETCH),
                widget.Systray(),
                widget.Sep(),
                widget.Net(),
                #widget.Sep(),
                #widget.Backlight(
                #    backlight_name='intel_backlight',
                #    brightness_file='/sys/class/backlight/intel_backlight/actual_brightness',
                #    max_brightness_file='/sys/class/backlight/intel_backlight/max_brightness',
                #    format='BRIGHT {percent:2.0%}'
                #    font="monospace"
                #),
                widget.Sep(),
                widget.CPU(),
                widget.Sep(),
                widget.Memory(
                    format='RAM {MemUsed:.0f}{mm}/{MemTotal:.0f}{mm}'
                ),
                widget.Sep(),
                widget.Clock(format='%a %m/%d/%Y %I:%M %p'),
                widget.Sep()
            ],
            20,
        ),
        top=bar.Bar(
            [            
                widget.TaskList(
                    icon_size=0,
                    highlight_method='block',
                    rounded=False,
                    urgent_alert_method='block',
                    urgent_border='782121',
                    title_width_method='uniform',
                    margin=0,
                    padding=0,
                    padding_x=3,
                    padding_y=2,
                    fontsize=11
                )
            ],
            20,
        ),
    ),
]


# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = True
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='galculator'),
    Match(wm_class='featherpad')
])
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

@hook.subscribe.startup_once
def startup_once():
    programs = [
        ['xsetroot', '-cursor_name', 'left_ptr'],
        ['setxkbmap', 'br'],
        ['xset', '-dpms', 's', 'off'],
        ['picom'],
        ['lxsession'],
        ['sxhkd', '-c', '~/.config/sxhkd/qtile'],
        ['nm-applet'],
        ['volctl'],
        ['cbatticon', '-u', '20', '-i', 'standard', '-l', '30', '-r', '15', 'BAT0'],
        ['pamac-tray']
    ]
    for command in programs:
        subprocess.Popen(command)

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "qtile"
