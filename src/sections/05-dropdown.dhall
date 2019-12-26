-- https://code.visualstudio.com/api/references/theme-color#dropdown-control
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.dropdown
      (   c.base02 t.background
        # c.base0 t.border
        # c.unset (t.list t.background)
        # c.base1 t.foreground
      )
