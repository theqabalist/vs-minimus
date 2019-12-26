-- https://code.visualstudio.com/api/references/theme-color#quick-picker
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.pickerGroup (c.cyan t.border # c.cyan t.foreground)
    # s.quickInput (c.unset t.background # c.unset t.foreground)
