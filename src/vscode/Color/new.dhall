let Optional/fold = https://prelude.dhall-lang.org/Optional/fold

let Target = ../Target/Type.dhall

let Color = ../Color/Type.dhall

let Target/run = ../Target/run.dhall

let Input = ../Target/Input.dhall

in  \(target : Target) ->
    \(color : Optional Text) ->
      Optional/fold
        Text
        color
        Color
        (\(c : Text) -> [ Target/run (Input.Color c) target ])
        ([] : Color)
