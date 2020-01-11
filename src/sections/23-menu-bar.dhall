-- https://code.visualstudio.com/api/references/theme-color#menu-bar-colors
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall ∧ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.menubar
        (   c.unset (t.selection t.foreground)
          # c.unset (t.selection t.background)
          # c.unset (t.selection t.border)
        )
    # s.menu
        (   c.pointOut t.foreground
          # c.unset t.background
          # c.pointOut (t.selection t.foreground)
          # c.unset (t.selection t.border)
          # c.unset (t.separator t.background)
          # c.unset t.border
        )
