-- https://code.visualstudio.com/api/references/theme-color#editor-widget-colors
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.peekView (c.yellow t.border)
    # s.peekViewEditor (c.unset t.background)
    # s.peekViewEditorGutter (c.unset t.background)
    # s.peekView
        (   c.unset (t.match (t.highlight t.background))
          # c.unset (t.match (t.highlight t.border))
        )
    # s.peekViewResult
        (   c.base2 t.background
          # c.unset (t.file t.foreground)
          # c.unset (t.line t.foreground)
          # c.unset (t.match (t.highlight t.background))
          # c.unset (t.selection t.background)
          # c.unset (t.selection t.foreground)
        )
    # s.peekViewTitle (c.base2 t.background)
    # s.peekViewTitleDescription (c.unset t.foreground)
    # s.peekViewTitleLabel (c.unset t.foreground)
