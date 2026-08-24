-- Personal application bindings. Omarchy defaults are unbound explicitly
-- before a key is repurposed.
hl.unbind("SUPER + ALT + F") -- was: Full width
o.bind("SUPER + ALT + F", "Yazi file manager", { tui = "yazi", focus = true })

hl.unbind("SUPER + SHIFT + W") -- was: Omawrite
o.bind("SUPER + SHIFT + W", "Brave", { launch = "brave", focus = "brave-browser" })

o.bind("SUPER + SHIFT + ALT + W", "Thorium", {
  launch = "thorium-browser",
  focus = "Thorium-browser",
})

hl.unbind("SUPER + SHIFT + M") -- was: Spotify
o.bind("SUPER + SHIFT + M", "Pithos", { launch = "pithos", focus = "pithos" })

hl.unbind("SUPER + SHIFT + G") -- was: Signal
o.bind("SUPER + SHIFT + G", "Telegram", {
  launch = "Telegram -startintray",
  focus = "org.telegram.desktop",
})

hl.unbind("SUPER + SHIFT + SLASH") -- was: 1Password
o.bind("SUPER + SHIFT + SLASH", "Bitwarden", {
  launch = "bitwarden-desktop",
  focus = "Bitwarden",
})

-- Close focused window with the Vim-adjacent key used by the previous setup.
o.bind("SUPER + Q", "Close window", hl.dsp.window.close())

-- Vim-style window focus. These replace Quattro's split, keybindings and
-- workspace-layout actions on J, K and L; H was previously unbound.
hl.unbind("SUPER + H")
hl.unbind("SUPER + J") -- was: Toggle window split
hl.unbind("SUPER + K") -- was: Keybindings
hl.unbind("SUPER + L") -- was: Toggle workspace layout

o.bind("SUPER + H", "Focus window left", hl.dsp.focus({ direction = "l" }))
o.bind("SUPER + J", "Focus window down", hl.dsp.focus({ direction = "d" }))
o.bind("SUPER + K", "Focus window up", hl.dsp.focus({ direction = "u" }))
o.bind("SUPER + L", "Focus window right", hl.dsp.focus({ direction = "r" }))

-- Vim-style window swapping. Arrow-key equivalents remain available through
-- Omarchy's defaults.
hl.unbind("SUPER + SHIFT + H")
hl.unbind("SUPER + SHIFT + J")
hl.unbind("SUPER + SHIFT + K")
hl.unbind("SUPER + SHIFT + L")

o.bind("SUPER + SHIFT + H", "Swap window left", hl.dsp.window.swap({ direction = "l" }))
o.bind("SUPER + SHIFT + J", "Swap window down", hl.dsp.window.swap({ direction = "d" }))
o.bind("SUPER + SHIFT + K", "Swap window up", hl.dsp.window.swap({ direction = "u" }))
o.bind("SUPER + SHIFT + L", "Swap window right", hl.dsp.window.swap({ direction = "r" }))

-- Keep the keybinding reference available after SUPER+K is repurposed.
o.bind("SUPER + B", "Keybindings", "omarchy-menu-keybindings")

-- Apple keyboards have no Print key. Quattro's SUPER+CTRL+C Capture menu
-- provides screenshot, screen recording, OCR and color-picking actions.
hl.unbind("PRINT")
hl.unbind("ALT + PRINT")
hl.unbind("SUPER + PRINT")
hl.unbind("SUPER + CTRL + PRINT")

-- Portable screenshot shortcuts for keyboards without a Print key.
o.bind("SUPER + ALT + P", "Screenshot full screen", "omarchy capture screenshot fullscreen")
o.bind("SUPER + ALT + R", "Screenshot region", "omarchy capture screenshot region")
o.bind("SUPER + ALT + W", "Screenshot window", "omarchy capture screenshot windows")
