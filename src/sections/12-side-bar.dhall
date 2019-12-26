-- https://code.visualstudio.com/api/references/theme-color#activity-bar
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.sideBar
        (   c.base02 t.background
          # c.unset t.foreground
          # c.base03 t.border
          # c.unset (t.drop t.background)
        )
    # s.sideBarTitle (c.base01 t.foreground)
    # s.sideBarSectionHeader
        (c.unset t.background # c.unset t.foreground # c.unset t.border)
