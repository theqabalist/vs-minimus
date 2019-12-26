-- https://code.visualstudio.com/api/references/theme-color#panel-colors
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.panel
        (   c.unset t.background
          # c.base01 t.border
          # c.unset (t.drop t.background)
        )
    # s.panelTitle
        (   c.unset (t.active t.border)
          # c.unset (t.active t.foreground)
          # c.unset (t.inactive t.foreground)
        )
    # s.panelInput (c.unset t.border)
    # s.imagePreview (c.unset t.border)
