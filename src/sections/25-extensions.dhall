-- https://code.visualstudio.com/api/references/theme-color#extensions
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.extensionButton
      (   c.unset (t.prominent t.foreground)
        # c.yellow (t.prominent t.background)
        # c.pointOut (t.prominent (t.hover t.background))
        # c.unset (t.remote t.background)
        # c.unset (t.remote t.foreground)
      )
