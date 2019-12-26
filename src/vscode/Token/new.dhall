let Scope = ./Scope.dhall

let Settings = ./Settings.dhall

let Token = ./Type.dhall

in      \(color : Optional Text)
    ->  \(name : Optional Text)
    ->  \(scope : Scope)
    ->    [ { name = name
            , scope = scope
            , settings =
                Optional/fold
                  Text
                  color
                  Settings
                  (     \(color : Text)
                    ->  [ { mapKey = "foreground", mapValue = color } ]
                  )
                  ([] : Settings)
            }
          ]
        : Token
