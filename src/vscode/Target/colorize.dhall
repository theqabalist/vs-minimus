let Target = ./Type.dhall

let Color/new = ../Color/new.dhall

in  \(color : Optional Text) -> \(target : Target) -> Color/new target color
