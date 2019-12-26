-- https://code.visualstudio.com/api/references/theme-color#text-colors
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.textBlockQuote (c.unset t.background # c.unset t.border)
    # s.textBlockQuote (c.unset t.border)
    # s.textCodeBlock (c.unset t.background)
    # s.textLink (c.unset (t.active t.foreground) # c.unset t.foreground)
    # s.textPreformat (c.unset t.foreground)
    # s.textSeparator (c.unset t.foreground)
