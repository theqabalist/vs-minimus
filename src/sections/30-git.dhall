-- https://code.visualstudio.com/api/references/theme-color#git-colors
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.gitDecoration
      (   c.green (t.added (t.resource t.foreground))
        # c.yellow (t.modified (t.resource t.foreground))
        # c.base03 (t.deleted (t.resource t.foreground))
        # c.cyan (t.untracked (t.resource t.foreground))
        # c.base0 (t.ignored (t.resource t.foreground))
        # c.red (t.conflicting (t.resource t.foreground))
        # c.violet (t.submodule (t.resource t.foreground))
      )
