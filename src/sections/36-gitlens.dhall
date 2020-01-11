-- https://code.visualstudio.com/api/references/theme-color#snippets
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall ∧ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.gitlens
      (   c.unset (t.gutter t.backgroundColor)
        # c.unset (t.gutter t.foregroundColor)
        # c.unset (t.gutter (t.uncommitted t.foregroundColor))
        # c.unset (t.line (t.highlight t.backgroundColor))
        # c.unset (t.line (t.highlight (t.overview t.rulerColor)))
      )
