let mod = if (../env.dhall).light-mode then ./light.dhall else ./dark.dhall

let adjust = if (../env.dhall).light-mode then "#000000" else "#FFFFFF"

let op = ./opacity.dhall

let accents =
      { red = "#dc322f"
      , orange = "#cb4b16"
      , yellow = "#b58900"
      , green = "#859900"
      , cyan = "#2aa198"
      , blue = "#268bd2"
      , violet = "#6c71c4"
      , magenta = "#d33682"
      , adjust-slight = op.op03 adjust
      , adjust = op.op09 adjust
      , adjust-more = op.op15 adjust
      }

in  mod.bases /\ accents /\ { abs = (./dark.dhall).bases }
