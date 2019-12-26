-- https://code.visualstudio.com/api/references/theme-color#snippets
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.symbolIcon
      (   c.unset (t.breakpoint t.foreground)
        # c.unset (t.breakpoint (t.disabled t.foreground))
        # c.unset (t.breakpoint (t.unverified t.foreground))
        # c.unset (t.breakpoint (t.current (t.stackframe t.foreground)))
        # c.unset (t.breakpoint (t.stackframe t.foreground))
        # c.unset (t.start t.foreground)
        # c.unset (t.pause t.foreground)
        # c.unset (t.stop t.foreground)
        # c.unset (t.disconnect t.foreground)
        # c.unset (t.restart t.foreground)
        # c.unset (t.step (t.over t.foreground))
        # c.unset (t.step (t.into t.foreground))
        # c.unset (t.step (t.out t.foreground))
        # c.unset (t.continue t.foreground)
        # c.unset (t.step (t.back t.foreground))
      )
