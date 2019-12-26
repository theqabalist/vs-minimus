let Target/new = ./Target/new.dhall

let b = Target/new "b" "B"

let c = Target/new "c" "C"

let f = Target/new "f" "F"

let g = Target/new "g" "G"

let i = Target/new "i" "I"

let m = Target/new "m" "M"

let o = Target/new "o" "O"

let r = Target/new "r" "R"

let s = Target/new "s" "S"

let w = Target/new "w" "W"

let y = Target/new "y" "Y"

in  { background = b "ackground"
    , black = b "lack"
    , blue = b "lue"
    , border = b "order"
    , borderTop = b "orderTop"
    , cyan = c "yan"
    , foreground = f "oreground"
    , green = g "reen"
    , indicator = i "ndicator"
    , magenta = m "agenta"
    , outline = o "utline"
    , opacity = o "pacity"
    , red = r "ed"
    , shadow = s "hadow"
    , stroke = s "troke"
    , white = w "hite"
    , yellow = y "ellow"
    , nil = Target/new "" "" ""
    }
