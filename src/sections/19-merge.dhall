-- https://code.visualstudio.com/api/references/theme-color#merge-conflicts
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.merge
        (   c.unset (t.current (t.header t.background))
          # c.unset (t.current (t.content t.background))
          # c.unset (t.incoming (t.header t.background))
          # c.unset (t.incoming (t.content t.background))
          # c.unset t.border
          # c.unset (t.common (t.header t.background))
          # c.unset (t.common (t.content t.background))
        )
    # s.editorOverviewRuler
        (   c.unset (t.current (t.content t.foreground))
          # c.unset (t.incoming (t.content t.foreground))
          # c.unset (t.common (t.content t.foreground))
        )
