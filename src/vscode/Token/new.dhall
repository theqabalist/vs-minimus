let Optional/fold = https://prelude.dhall-lang.org/Optional/fold

let Scope = ./Scope.dhall

let Settings = ./Settings.dhall

let Token = ./Type.dhall

in  \(color : Optional Text) ->
    \(name : Optional Text) ->
    \(scope : Scope) ->
        [ { name
          , scope
          , settings =
              Optional/fold
                Text
                color
                Settings
                ( \(color : Text) ->
                    [ { mapKey = "foreground", mapValue = color } ]
                )
                ([] : Settings)
          }
        ]
      : Token
