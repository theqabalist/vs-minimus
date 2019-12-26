-- https://code.visualstudio.com/api/references/theme-color#badge
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.badge (c.base1 t.background # c.pointOut t.foreground)
