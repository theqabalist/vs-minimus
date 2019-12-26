-- https://code.visualstudio.com/api/references/theme-color#title-bar-colors
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.titleBar
      (   c.base2 (t.active t.background)
        # c.unset (t.active t.foreground)
        # c.unset (t.inactive t.background)
        # c.unset (t.inactive t.foreground)
        # c.unset t.border
      )
