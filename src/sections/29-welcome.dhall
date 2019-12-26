-- https://code.visualstudio.com/api/references/theme-color#welcome-page
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.welcomePage
        (   c.unset t.background
          # c.unset (t.button t.background)
          # c.unset (t.button (t.hover t.background))
        )
    # s.walkThrough (c.unset (t.embedded (t.editor t.background)))
