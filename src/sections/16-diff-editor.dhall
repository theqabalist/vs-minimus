-- https://code.visualstudio.com/api/references/theme-color#diff-editor-colors
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.diffEditor
      (   c.unset (t.inserted (t.text t.background))
        # c.unset (t.inserted (t.text t.border))
        # c.unset (t.removed (t.text t.background))
        # c.unset (t.removed (t.text t.border))
        # c.unset t.border
      )
