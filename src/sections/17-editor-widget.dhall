-- https://code.visualstudio.com/api/references/theme-color#editor-widget-colors
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.editorWidget
        (   c.unset t.foreground
          # c.base02 t.background
          # c.base03 t.border
          # c.unset (t.resize t.border)
        )
    # s.editorSuggestWidget
        (   c.unset t.background
          # c.unset t.background
          # c.unset t.foreground
          # c.unset (t.highlight t.foreground)
          # c.unset (t.selected t.background)
        )
    # s.editorHoverWidget
        (   c.unset t.foreground
          # c.base02 t.background
          # c.base00 t.border
          # c.unset (t.status (t.bar t.background))
        )
    # s.debugExceptionWidget (c.base03 t.background # c.magenta t.border)
    # s.editorMarkerNavigation (c.abs.base2 t.background)
    # s.editorMarkerNavigationError (c.red t.background)
    # s.editorMarkerNavigationWarning (c.yellow t.background)
    # s.editorMarkerNavigationInfo (c.blue t.background)
