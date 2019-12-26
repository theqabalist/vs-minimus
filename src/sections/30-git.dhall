-- https://code.visualstudio.com/api/references/theme-color#git-colors
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.gitDecoration
      (   c.unset (t.added (t.resource t.foreground))
        # c.unset (t.modified (t.resource t.foreground))
        # c.unset (t.deleted (t.resource t.foreground))
        # c.unset (t.untracked (t.resource t.foreground))
        # c.unset (t.ignored (t.resource t.foreground))
        # c.unset (t.conflicting (t.resource t.foreground))
        # c.unset (t.submodule (t.resource t.foreground))
      )
