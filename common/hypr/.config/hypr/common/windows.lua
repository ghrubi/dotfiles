-- Preferred application workspaces. These rules express workflow only; stock
-- Omarchy continues to own general application behavior and appearance.
o.window("^(org\\.telegram\\.desktop|slack)$", { workspace = "2" })
o.window({ title = "^(Microsoft Teams).*" }, { workspace = "2" })

o.window("^(Bitwarden)$", { workspace = "3", float = true })
o.window("^(beekeeper-studio|Postman)$", { workspace = "3" })

o.window("^(code)$", { workspace = "4" })
o.window("^(brave-browser|Thorium-browser)$", { workspace = "5" })
o.window("^(chromium)$", { workspace = "6 silent" })
o.window("^(org\\.gitfourchette\\.gitfourchette)$", { workspace = "10" })
