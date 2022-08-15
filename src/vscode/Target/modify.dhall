let Target = ./Type.dhall

let Target/run = ./run.dhall

let Target/new = ./new.dhall

let Input = ./Input.dhall

let Function/compose = https://prelude.dhall-lang.org/Function/compose

let modify =
      \(plain : Text) ->
      \(modified : Text) ->
      \(base : Text) ->
      \(target : Target) ->
        Target/new
          (Target/run (Input.Prefix (plain ++ base)) target).mapKey
          (Target/run (Input.Prefix (modified ++ base)) target).mapKey
          ""

in  modify
