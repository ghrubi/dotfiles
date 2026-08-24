-- Portable personal input preferences. Pointer sensitivity, scroll tuning and
-- device quirks belong to host profiles.
hl.config({
  input = {
    kb_layout = "us",
    kb_options = "compose:caps",
    repeat_rate = 40,
    repeat_delay = 250,
    numlock_by_default = true,
    touchpad = {
      natural_scroll = true,
      clickfinger_behavior = true,
      disable_while_typing = true,
    },
  },
})
