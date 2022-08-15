let c = ../palette/palette.dhall

let Target/colorize = ./Target/colorize.dhall

let Color = ./Color/Type.dhall

in      { base03 = Target/colorize (Some c.base03)
        , base02 = Target/colorize (Some c.base02)
        , base01 = Target/colorize (Some c.base01)
        , base00 = Target/colorize (Some c.base00)
        , base0 = Target/colorize (Some c.base0)
        , base1 = Target/colorize (Some c.base1)
        , base2 = Target/colorize (Some c.base2)
        , base3 = Target/colorize (Some c.base3)
        , adjust-slight = Target/colorize (Some c.adjust-slight)
        , adjust = Target/colorize (Some c.adjust)
        , adjust-more = Target/colorize (Some c.adjust-more)
        , red = Target/colorize (Some c.red)
        , orange = Target/colorize (Some c.orange)
        , yellow = Target/colorize (Some c.yellow)
        , green = Target/colorize (Some c.green)
        , cyan = Target/colorize (Some c.cyan)
        , blue = Target/colorize (Some c.blue)
        , magenta = Target/colorize (Some c.magenta)
        , violet = Target/colorize (Some c.violet)
        , pointOut = Target/colorize (Some "#FFFF00")
        , pointOut2 = Target/colorize (Some "#00FF00")
        , unset = Target/colorize (None Text)
        }
    /\  { abs =
          { base03 = Target/colorize (Some c.base03)
          , base02 = Target/colorize (Some c.abs.base02)
          , base01 = Target/colorize (Some c.abs.base01)
          , base00 = Target/colorize (Some c.abs.base00)
          , base0 = Target/colorize (Some c.abs.base0)
          , base1 = Target/colorize (Some c.abs.base1)
          , base2 = Target/colorize (Some c.abs.base2)
          , base3 = Target/colorize (Some c.abs.base3)
          }
        }
