-- https://code.visualstudio.com/api/references/theme-color#settings-editor-colors
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.settings
      (   c.unset (t.header t.foreground)
        # c.unset (t.modified (t.item t.indicator))
        # c.unset (t.dropdown t.background)
        # c.unset (t.dropdown t.foreground)
        # c.unset (t.dropdown t.border)
        # c.unset (t.dropdown (t.list t.border))
        # c.unset (t.checkbox t.background)
        # c.unset (t.checkbox t.foreground)
        # c.unset (t.checkbox t.border)
        # c.unset (t.text (t.input t.background))
        # c.unset (t.text (t.input t.foreground))
        # c.unset (t.text (t.input t.border))
        # c.unset (t.number (t.input t.background))
        # c.unset (t.number (t.input t.foreground))
        # c.unset (t.number (t.input t.border))
      )
