-- https://code.visualstudio.com/api/references/theme-color#activity-bar
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.activityBar
        (   c.base03 t.background
          # c.base03 (t.drop t.background)
          # c.base00 t.foreground
          # c.pointOut (t.inactive t.foreground)
          # c.unset t.border
        )
    # s.activityBarBadge (c.yellow t.background # c.pointOut t.foreground)
    # s.activityBar
        (   c.pointOut (t.active t.border)
          # c.unset (t.active t.background)
          # c.unset (t.active (t.focus t.border))
        )
