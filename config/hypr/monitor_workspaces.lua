hl.monitor({ output = "DP-2", mode = "preferred", position = "0x0", scale = 1 })
hl.monitor({ output = "HDMI-A-2", mode = "preferred", position = "1920x0", scale = 1 })

hl.workspace_rule({ workspace = "1", monitor = "DP-2" })
hl.workspace_rule({ workspace = "r[2-4]", monitor = "HDMI-A-2" })

