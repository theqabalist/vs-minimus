-- https://code.visualstudio.com/api/references/theme-color#integrated-terminal-colors
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.terminal
      (   c.unset t.background
        # c.unset t.border
        # c.base0 t.foreground
        # c.unset (t.selection t.background)
        # c.base0 (t.ansi t.black)
        # c.blue (t.ansi t.blue)
        # c.base1 (t.ansi (t.bright t.black))
        # c.blue (t.ansi (t.bright t.blue))
        # c.cyan (t.ansi (t.bright t.cyan))
        # c.green (t.ansi (t.bright t.green))
        # c.magenta (t.ansi (t.bright t.magenta))
        # c.red (t.ansi (t.bright t.red))
        # c.base3 (t.ansi (t.bright t.white))
        # c.yellow (t.ansi (t.bright t.yellow))
        # c.cyan (t.ansi t.cyan)
        # c.green (t.ansi t.green)
        # c.magenta (t.ansi t.magenta)
        # c.red (t.ansi t.red)
        # c.base2 (t.ansi t.white)
        # c.yellow (t.ansi t.yellow)
      )
