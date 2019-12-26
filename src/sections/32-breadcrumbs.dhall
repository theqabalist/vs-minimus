-- https://code.visualstudio.com/api/references/theme-color#breadcrumbs
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.breadcrumb
        (   c.blue t.foreground
          # c.base03 t.background
          # c.orange (t.focus t.foreground)
          # c.base01 (t.active (t.selection t.foreground))
        )
    # s.breadcrumbPicker (c.base02 t.background)
