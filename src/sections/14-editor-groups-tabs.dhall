-- https://code.visualstudio.com/api/references/theme-color#editor-groups-tabs
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.editorGroup (c.base1 t.border # c.base01 (t.drop t.background))
    # s.editorGroupHeader
        (   c.unset (t.no (t.tabs t.background))
          # c.base02 (t.tabs t.background)
          # c.unset (t.tabs t.border)
        )
    # s.editorGroup
        (   c.unset (t.empty t.background)
          # c.unset (t.focused (t.empty t.border))
        )
    # s.tab
        (   c.base03 (t.active t.background)
          # c.unset (t.unfocused (t.active t.background))
          # c.base1 (t.active t.foreground)
          # c.base02 t.border
          # c.unset (t.active t.border)
          # c.unset (t.unfocused (t.active t.border))
          # c.unset (t.active t.borderTop)
          # c.unset (t.unfocused (t.active t.borderTop))
          # c.base02 (t.inactive t.background)
          # c.base01 (t.inactive t.foreground)
          # c.unset (t.unfocused (t.active t.foreground))
          # c.unset (t.unfocused (t.inactive t.foreground))
          # c.unset (t.hover t.background)
          # c.unset (t.unfocused (t.hover t.border))
          # c.unset (t.active (t.modified t.border))
          # c.unset (t.inactive (t.modified t.border))
          # c.unset (t.unfocused (t.active (t.modified t.border)))
          # c.unset (t.unfocused (t.inactive (t.modified t.border)))
        )
    # s.editorPane (c.unset t.background)
