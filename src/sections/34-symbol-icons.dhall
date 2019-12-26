-- https://code.visualstudio.com/api/references/theme-color#snippets
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in  s.symbolIcon
      (   c.unset (t.array t.foreground)
        # c.unset (t.boolean t.foreground)
        # c.unset (t.class t.foreground)
        # c.unset (t.color t.foreground)
        # c.unset (t.constant t.foreground)
        # c.unset (t.constructor t.foreground)
        # c.unset (t.enumerator t.foreground)
        # c.unset (t.enumeratorMember t.foreground)
        # c.unset (t.event t.foreground)
        # c.unset (t.field t.foreground)
        # c.unset (t.file t.foreground)
        # c.unset (t.folder t.foreground)
        # c.unset (t.function t.foreground)
        # c.unset (t.interface t.foreground)
        # c.unset (t.key t.foreground)
        # c.unset (t.keyword t.foreground)
        # c.unset (t.method t.foreground)
        # c.unset (t.module t.foreground)
        # c.unset (t.namespace t.foreground)
        # c.unset (t.null t.foreground)
        # c.unset (t.number t.foreground)
        # c.unset (t.object t.foreground)
        # c.unset (t.operator t.foreground)
        # c.unset (t.package t.foreground)
        # c.unset (t.property t.foreground)
        # c.unset (t.reference t.foreground)
        # c.unset (t.snippet t.foreground)
        # c.unset (t.string t.foreground)
        # c.unset (t.struct t.foreground)
        # c.unset (t.text t.foreground)
        # c.unset (t.typeParameter t.foreground)
        # c.unset (t.unit t.foreground)
        # c.unset (t.variable t.foreground)
      )
