-- https://code.visualstudio.com/api/references/theme-color#editor-groups-tabs
let s = ../vscode/scopes.dhall

let t = ../vscode/targets.dhall /\ ../vscode/modifiers.dhall

let c = ../vscode/colors.dhall

in    s.editor (c.base03 t.background # c.base1 t.foreground)
    # s.editorLineNumber
        (c.base01 t.foreground # c.base00 (t.active t.foreground))
    # s.editorCursor (c.unset t.background # c.base00 t.foreground)
    # s.editor
        (   c.base02 (t.selection t.background)
          # c.unset (t.selection t.foreground)
          # c.unset (t.inactive (t.selection t.background))
          # c.unset (t.selection (t.highlight t.background))
          # c.unset (t.selection (t.highlight t.border))
          # c.unset (t.word (t.highlight t.background))
          # c.unset (t.word (t.highlight t.border))
          # c.unset (t.word (t.highlight (t.strong t.background)))
          # c.unset (t.word (t.highlight (t.strong t.border)))
          # c.base00 (t.find (t.match t.background))
          # c.base01 (t.find (t.match (t.highlight t.background)))
          # c.unset (t.find (t.range (t.highlight t.border)))
        )
    # s.searchEditor
        (   c.unset (t.find (t.match t.background))
          # c.unset (t.find (t.match t.border))
        )
    # s.editor
        (   c.unset (t.hover (t.highlight t.background))
          # c.base02 (t.line (t.highlight t.background))
          # c.unset (t.line (t.highlight t.border))
        )
    # s.editorLink (c.unset (t.active t.foreground))
    # s.editor
        (   c.base01 (t.range (t.highlight t.background))
          # c.unset (t.range (t.highlight t.border))
          # c.unset (t.symbol (t.highlight t.background))
          # c.unset (t.symbol (t.highlight t.border))
        )
    # s.editorWhitespace (c.unset t.foreground)
    # s.editorIndentGuide
        (c.base02 t.background # c.base01 (t.active t.background))
    # s.editorRuler (c.base02 t.foreground)
    # s.editorCodeLens (c.unset t.foreground)
    # s.editorLightBulb (c.unset t.foreground)
    # s.editorLightBulbAutoFix (c.unset t.foreground)
    # s.editorBracketMatch (c.unset t.background # c.base01 t.border)
    # s.editorOverviewRuler
        (   c.unset t.border
          # c.unset (t.find (t.match t.foreground))
          # c.unset (t.range (t.highlight t.foreground))
          # c.unset (t.selection (t.highlight t.foreground))
          # c.unset (t.word (t.highlight t.foreground))
          # c.unset (t.word (t.highlight (t.strong t.foreground)))
          # c.unset (t.modified t.foreground)
          # c.unset (t.added t.foreground)
          # c.unset (t.deleted t.foreground)
          # c.unset (t.error t.foreground)
          # c.unset (t.warning t.foreground)
          # c.unset (t.info t.foreground)
          # c.unset (t.bracket (t.match t.foreground))
        )
    # s.editorError (c.unset t.foreground # c.unset t.border)
    # s.editorWarning (c.unset t.foreground # c.unset t.border)
    # s.editorInfo (c.unset t.foreground # c.unset t.border)
    # s.editorHint (c.unset t.foreground # c.unset t.border)
    # s.problemsErrorIcon (c.unset t.foreground)
    # s.problemsWarningIcon (c.unset t.foreground)
    # s.problemsInfoIcon (c.unset t.foreground)
    # s.editorUnnecessaryCode
        (c.unset t.border # c.unset t.opacity # c.unset t.border)
    # s.editorGutter
        (   c.unset t.background
          # c.yellow (t.modified t.background)
          # c.green (t.added t.background)
          # c.red (t.deleted t.background)
          # c.blue (t.comment (t.range t.foreground))
        )
