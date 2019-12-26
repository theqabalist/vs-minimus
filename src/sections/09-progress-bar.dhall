-- https://code.visualstudio.com/api/references/theme-color#progress-bar
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.progressBar (c.yellow t.background)
