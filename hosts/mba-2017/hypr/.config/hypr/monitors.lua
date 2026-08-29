-- MacBook Air 2017: use the panel's preferred mode at native scale. This
-- explicit root rule is also read by Omarchy's clamshell/monitor watcher.
hl.env("GDK_SCALE", "1")
hl.monitor({ output = "eDP-1", mode = "preferred", position = "auto", scale = 1 })
