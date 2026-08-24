-- Monitor configuration is hardware-specific. A host profile supplies this
-- module; Omarchy's automatic monitor configuration remains the fallback.
local loaded = pcall(require, "hypr.host.monitors")

if not loaded then
  local omarchy_gdk_scale = 2
  local omarchy_monitor_scale = "auto"

  hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))
  hl.monitor({ output = "", mode = "preferred", position = "auto", scale = omarchy_monitor_scale })
end
