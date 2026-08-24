-- Compact window treatment shared across machines.
hl.config({
  general = {
    gaps_in = 3,
    gaps_out = 6,
    border_size = 1,
  },
  decoration = {
    rounding = 3,
  },
})

-- Remove gaps around a workspace containing exactly one tiled window, and
-- around a workspace containing a fullscreen window.
for _, selector in ipairs({ "w[t1]", "f[1]" }) do
  hl.workspace_rule({
    workspace = selector,
    gaps_out = 0,
    gaps_in = 0,
  })

  hl.window_rule({
    match = {
      float = false,
      workspace = selector,
    },
    border_size = 0,
    rounding = 0,
  })
end
