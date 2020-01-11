-- https://code.visualstudio.com/api/references/theme-color#lists-and-trees
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall ∧ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.list
        (   c.adjust (t.active (t.selection t.background))
          # c.base1 (t.active (t.selection t.foreground))
          # c.unset (t.drop t.background)
          # c.adjust-slight (t.focus t.background)
          # c.base1 (t.focus t.foreground)
          # c.yellow (t.highlight t.foreground)
          # c.adjust (t.hover t.background)
          # c.base1 (t.hover t.foreground)
          # c.adjust-slight (t.inactive (t.selection t.background))
          # c.base1 (t.inactive (t.selection t.foreground))
          # c.unset (t.inactive (t.focus t.background))
          # c.unset (t.invalid (t.item t.foreground))
          # c.unset (t.error t.foreground)
          # c.unset (t.warning t.foreground)
        )
    # s.listFilterWidget
        (   c.unset t.background
          # c.unset t.outline
          # c.unset (t.no (t.matches t.outline))
        )
    # s.list
        (   c.unset (t.filter (t.match t.background))
          # c.unset (t.filter (t.match t.border))
        )
    # s.tree (c.unset (t.indent (t.guides t.stroke)))
