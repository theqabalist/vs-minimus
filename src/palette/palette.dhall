let mod = if (../env.dhall).light-mode then ./light.dhall else ./dark.dhall

let accents =
      { red = "#dc322f"
      , orange = "#cb4b16"
      , yellow = "#b58900"
      , green = "#859900"
      , cyan = "#2aa198"
      , blue = "#268bd2"
      , violet = "#6c71c4"
      , magenta = "#d33682"
      }

in  mod.bases /\ accents /\ { abs = (./dark.dhall).bases }
