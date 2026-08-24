-- MacBook Air 2017: use the panel's preferred mode at native scale. Avoid
-- pinning the historical 59.996 Hz mode when Hyprland can select it correctly.
hl.env("GDK_SCALE", "1")
hl.monitor({ output = "eDP-1", mode = "preferred", position = "auto", scale = 1 })
