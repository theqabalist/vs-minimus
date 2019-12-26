let Input = ./Input.dhall

let Entry = https://prelude.dhall-lang.org/Map/Entry

in      \(plain : Text)
    ->  \(modified : Text)
    ->  \(base : Text)
    ->  \(run : Input)
    ->  merge
          { Prefix =
              \(p : Text) -> { mapKey = p ++ modified ++ base, mapValue = "" }
          , Color = \(c : Text) -> { mapKey = plain ++ base, mapValue = c }
          }
          run
        : Entry Text Text
