let c = ../palette/palette.dhall

let Token/new = ./Token/new.dhall

let Color = ./Color/Type.dhall

in  { base03 = Token/new (Some c.base03)
    , base02 = Token/new (Some c.base02)
    , base01 = Token/new (Some c.base01)
    , base00 = Token/new (Some c.base00)
    , base0 = Token/new (Some c.base0)
    , base1 = Token/new (Some c.base1)
    , base2 = Token/new (Some c.base2)
    , base3 = Token/new (Some c.base3)
    , red = Token/new (Some c.red)
    , orange = Token/new (Some c.orange)
    , yellow = Token/new (Some c.yellow)
    , green = Token/new (Some c.green)
    , cyan = Token/new (Some c.cyan)
    , blue = Token/new (Some c.blue)
    , magenta = Token/new (Some c.magenta)
    , violet = Token/new (Some c.violet)
    , pointOut = Token/new (Some "#FFFF00")
    , pointOut2 = Token/new (Some "#00FF00")
    , unset = Token/new (None Text)
    }
