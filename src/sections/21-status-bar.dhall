-- https://code.visualstudio.com/api/references/theme-color#status-bar-colors
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.statusBar
        (   c.base03 t.background
          # c.base01 t.foreground
          # c.unset t.border
          # c.base0 (t.debugging t.background)
          # c.unset (t.debugging t.foreground)
          # c.unset (t.debugging t.border)
          # c.unset (t.no (t.folder t.foreground))
          # c.base0 (t.no (t.folder t.background))
          # c.unset (t.no (t.folder t.border))
        )
    # s.statusBarItem
        (   c.unset (t.active t.background)
          # c.unset (t.hover t.background)
          # c.unset (t.prominent t.foreground)
          # c.unset (t.prominent t.background)
          # c.unset (t.prominent (t.hover t.background))
          # c.unset (t.remote t.background)
          # c.unset (t.remote t.foreground)
        )
