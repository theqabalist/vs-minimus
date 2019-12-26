-- https://code.visualstudio.com/api/references/theme-color#contrast-colors
let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  c.unset (t.contrast (t.active t.border)) # c.unset (t.contrast t.border)
