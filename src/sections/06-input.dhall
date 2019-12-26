-- https://code.visualstudio.com/api/references/theme-color#input-control
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.input
        (   c.base02 t.background
          # c.unset t.border
          # c.base1 t.foreground
          # c.base01 (t.placeholder t.foreground)
        )
    # s.inputOption
        (c.unset (t.active t.background) # c.pointOut (t.active t.border))
    # s.inputValidation
        (   c.unset (t.error t.background)
          # c.unset (t.error t.foreground)
          # c.unset (t.error t.border)
          # c.unset (t.info t.background)
          # c.unset (t.info t.foreground)
          # c.unset (t.info t.border)
        )
