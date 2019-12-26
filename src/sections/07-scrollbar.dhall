-- https://code.visualstudio.com/api/references/theme-color#scrollbar-control
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.scrollbar (c.unset t.shadow)
    # s.scrollbarSlider
        (   c.unset (t.active t.background)
          # c.unset t.background
          # c.unset (t.hover t.background)
        )
