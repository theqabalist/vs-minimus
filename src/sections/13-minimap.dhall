-- https://code.visualstudio.com/api/references/theme-color#minimap
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

let highlight =
    {- highlight is a modifier and target, here being used as a target, so we modify a null target -}
      t.highlight t.nil

in    s.minimap
        (   c.blue (t.find (t.match highlight))
          # c.base2 (t.selection highlight)
          # c.unset (t.error highlight)
          # c.unset (t.warning highlight)
        )
    # s.minimapGutter
        (   c.unset (t.added t.background)
          # c.unset (t.modified t.background)
          # c.unset (t.deleted t.background)
        )
