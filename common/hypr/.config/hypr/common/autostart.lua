-- Personal applications restored on every machine.
o.launch_on_start("mega-sync")
o.launch_on_start("Telegram -startintray")
o.exec_on_start("omarchy-launch-browser")

-- Start the working session with two terminals. Application window rules
-- place the browser and communications apps on their preferred workspaces.
o.launch_on_start("xdg-terminal-exec")
o.exec_on_start("sleep 2 && " .. o.launch("xdg-terminal-exec"))
