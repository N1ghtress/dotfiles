require("colors")
require("environment")
require("autostart")
require("window_rules")
require("monitor_workspaces")
require("bindings")
require("animations")

hl.config({
  animations = {
    enabled = true,
  },
  cursor = {
    no_warps = true,
  },
  decoration = {
    blur = {
      enabled = false
    },
    shadow = {
      enabled = false
    }
  },
  dwindle = {
    preserve_split = true,    
  },
  general = {
    gaps_in = 0,
    gaps_out = 10,
    border_size = 2
  },
  input = {
    follow_mouse = false,
    kb_layout = "fr",
    kb_variant = "azerty",
  },
  binds = {
    drag_threshold = 10
  }
})
