-- https://code.visualstudio.com/api/references/theme-color#snippets
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.editor
      (   c.unset (t.snippet (t.tabstop (t.highlight t.background)))
        # c.unset (t.snippet (t.tabstop (t.highlight t.border)))
        # c.unset (t.snippet (t.final (t.tabstop (t.highlight t.background))))
        # c.unset (t.snippet (t.final (t.tabstop (t.highlight t.border))))
      )
