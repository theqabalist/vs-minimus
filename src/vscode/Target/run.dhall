let Target = ./Type.dhall

let Input = ./Input.dhall

in  \(input : Input) -> \(target : Target) -> target input
