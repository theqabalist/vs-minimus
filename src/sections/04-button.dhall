-- https://code.visualstudio.com/api/references/theme-color#button-control
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.button
        (   c.base03 t.background
          # c.base1 t.foreground
          # c.adjust (t.hover t.background)
        )
    # s.checkbox
        (c.unset t.background # c.unset t.foreground # c.unset t.border)
