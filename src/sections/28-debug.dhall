-- https://code.visualstudio.com/api/references/theme-color#debug
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.debugToolBar (c.base03 t.background # c.unset t.border)
    # s.editor
        (   c.unset (t.stackFrame (t.highlight t.background))
          # c.unset (t.focused (t.stackFrame (t.highlight t.background)))
        )
