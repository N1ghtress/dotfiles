hl.window_rule({
  name = "floating modal",
  match = {
    modal = true
  },
  float = true
})

hl.window_rule({
  name = "floating apps",
  match = {
    class = "KeePass2"
  },
  float = true
})

hl.window_rule({
  name = "workspace 2",
  match = {
    class = "firefox"
  },
  workspace = "2"
})

hl.window_rule({
  name = "workspace 3",
  match = {
    class = "discord"
  },
  workspace = "3"
})

hl.window_rule({
  name = "workspace 4",
  match = {
    class = "steam.*"
  },
  workspace = "4"
})

hl.window_rule({
  name = "no initial focus",
  match = {
    class = "firefox|discord|steam.*"
  },
  no_initial_focus = true
})

hl.window_rule({
  name = "steam apps",
  match = {
    class = ".*(steam_app_[0-9]+).*"
  },
  workspace = "1"
})
