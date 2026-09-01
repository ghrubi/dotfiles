-- Nice fixed size
local standard_width = "80%"
local standard_height = "75%"
local standard_opacity = "0.8 0.7"

-- Yazi
hl.window_rule({
  match = {
    class = "org.omarchy.yazi",
  },
  float = true,
  size = { standard_width, standard_height },
  center = true,
})
