let mod =
      if    (./env.dhall).light-mode
      then  ./palette/light.dhall
      else  ./palette/dark.dhall

let c = ./vscode/tokens.dhall

let Scope = ./vscode/token/Scope.dhall

in  { name = mod.name
    , `$schema` = "vscode://schemas/color-theme"
    , type = mod.type
    , colors =
          ./sections/00-contrast.dhall
        # ./sections/01-base.dhall
        # ./sections/02-window.dhall
        # ./sections/03-text.dhall
        # ./sections/04-button.dhall
        # ./sections/05-dropdown.dhall
        # ./sections/06-input.dhall
        # ./sections/07-scrollbar.dhall
        # ./sections/08-badge.dhall
        # ./sections/09-progress-bar.dhall
        # ./sections/10-lists-trees.dhall
        # ./sections/11-activity-bar.dhall
        # ./sections/12-side-bar.dhall
        # ./sections/13-minimap.dhall
        # ./sections/14-editor-groups-tabs.dhall
        # ./sections/15-editor.dhall
        # ./sections/16-diff-editor.dhall
        # ./sections/17-editor-widget.dhall
        # ./sections/18-peek-view.dhall
        # ./sections/19-merge.dhall
        # ./sections/20-panel.dhall
        # ./sections/21-status-bar.dhall
        # ./sections/22-title-bar.dhall
        # ./sections/23-menu-bar.dhall
        # ./sections/24-notification.dhall
        # ./sections/25-extensions.dhall
        # ./sections/26-quick-picker.dhall
        # ./sections/27-terminal.dhall
        # ./sections/28-debug.dhall
        # ./sections/29-welcome.dhall
        # ./sections/30-git.dhall
        # ./sections/31-settings-editor.dhall
        # ./sections/32-breadcrumbs.dhall
        # ./sections/33-snippets.dhall
        # ./sections/34-symbol-icons.dhall
        # ./sections/35-debug-icons.dhall
        # ./sections/36-gitlens.dhall
    , tokenColors =
          c.base1
            (None Text)
            (Scope.List [ "meta.embedded", "source.groovy.embedded" ])
        # c.blue (Some "Comment") (Scope.Single "comment")
        # c.base1 (Some "String") (Scope.Single "string")
        # c.base1 (Some "Regexp") (Scope.Single "string.regexp")
        # c.base1 (Some "Number") (Scope.Single "constant.numeric")
        # c.base1
            (Some "Variable")
            (Scope.List [ "variable.language", "variable.other" ])
        # c.base1 (Some "Keyword") (Scope.Single "keyword")
        # c.base1 (Some "Storage") (Scope.Single "storage")
        # c.base1
            (Some "Class name")
            ( Scope.List
                [ "entity.name.class"
                , "entity.name.type"
                , "entity.name.namespace"
                , "entity.name.scope-resolution"
                ]
            )
        # c.base1 (Some "Function name") (Scope.Single "entity.name.function")
        # c.base1 (Some "Variable start") (Scope.Single "entity.name.function")
        # c.base1
            (Some "Embedded code markers")
            ( Scope.List
                [ "punctuation.section.embedded.begin"
                , "punctuation.section.embedded.end"
                ]
            )
        # c.base1
            (Some "Built-in constant")
            (Scope.List [ "constant.language", "meta.preprocessor" ])
        # c.base1
            (Some "Support.construct")
            (Scope.List [ "support.function.construct", "keyword.other.new" ])
        # c.base1
            (Some "User-defined constant")
            (Scope.List [ "constant.character", "constant.other" ])
        # c.unset
            (Some "Inherited class")
            (Scope.Single "entity.other.inherited-class")
        # c.unset (Some "Function argument") (Scope.Single "variable.parameter")
        # c.base1 (Some "Tag name") (Scope.Single "entity.name.tag")
        # c.base1
            (Some "Tag start/end")
            ( Scope.List
                [ "punctuation.definition.tag.begin"
                , "punctuation.definition.tag.end"
                ]
            )
        # c.base1
            (Some "Tag attribute")
            (Scope.Single "entity.other.attribute-name")
        # c.base1 (Some "Library function") (Scope.Single "support.function")
        # c.base1
            (Some "Continuation")
            (Scope.Single "punctuation.separator.continuation")
        # c.base1 (Some "Library constant") (Scope.Single "support.constant")
        # c.unset (Some "Library constant") (Scope.Single "support.constant")
        # c.base1
            (Some "Library class/type")
            (Scope.List [ "support.type", "support.class" ])
        # c.base1
            (Some "Library class/type")
            (Scope.List [ "support.type", "support.class" ])
        # c.base1
            (Some "Library Exception")
            (Scope.Single "support.type.exception")
        # c.unset
            (Some "Library variable")
            (Scope.Single "support.other.variable")
        # c.unset (Some "Invalid") (Scope.Single "invalid")
        # c.blue
            (Some "diff: header")
            (Scope.List [ "meta.diff", "meta.diff.header" ])
        # c.red (Some "diff: deleted") (Scope.Single "markup.deleted")
        # c.orange (Some "diff: changed") (Scope.Single "markup.changed")
        # c.cyan (Some "diff: inserted") (Scope.Single "markup.inserted")
        # c.green (Some "Markup Quote") (Scope.Single "markup.quote")
        # c.yellow (Some "Markup Lists") (Scope.Single "markup.list")
        # c.base1
            (Some "Markup Styling")
            (Scope.List [ "markup.bold", "markup.italic" ])
        # c.base1 (Some "Markup Inline") (Scope.Single "markup.inline.raw")
        # c.base1 (Some "Markup Headings") (Scope.Single "markup.heading")
        # c.base01
            (Some "Markup Setext Header")
            (Scope.Single "markup.heading.setext")
        # c.green (None Text) (Scope.Single "token.info-token")
        # c.yellow (None Text) (Scope.Single "token.warn-token")
        # c.red (None Text) (Scope.Single "token.error-token")
        # c.violet (None Text) (Scope.Single "token.debug-token")
    }
