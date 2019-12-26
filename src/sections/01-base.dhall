-- https://code.visualstudio.com/api/references/theme-color#base-colors
let Target/colorize = ../vscode/Target/colorize.dhall

let op = ../palette/opacity.dhall

let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    c.base00 (t.focus t.border)
    # c.base1 t.foreground
    # s.widget (Target/colorize (Some (op.op25 "#000000")) t.shadow)
    # s.selection (c.base2 t.background)
    # c.pointOut (t.description t.foreground)
    # c.unset (t.error t.foreground)
    # s.icon (c.base1 t.foreground)
