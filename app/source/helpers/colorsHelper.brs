' sub initColors()
'     m.global.addField("colors", "assocarray", true)
'     m.global.colors = {
'     yellow: "0xFFFF00FF",
'     blue:   "0x0000FFFF",
'     red:    "0xFF0000FF",
'     black:  "0x000000FF"
'     }
' end sub 

function colors() as object
    return {
    yellow: "0xFFFF00FF",
    blue:   "0x0000FFFF",
    red:    "0xFF0000FF",
    black:  "0x000000FF"
    }
end function