-- https://code.visualstudio.com/api/references/theme-color#window-border
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.window (c.unset (t.active t.border) # c.unset (t.inactive t.border))
