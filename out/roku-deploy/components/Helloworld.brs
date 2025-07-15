sub init()
    m.top.setFocus(true)
    m.myLabel = m.top.findNode("myLabel")
    
    'Set the font size
    m.myLabel.font.size=99

    'Set the color to light blue
    m.myLabel.color="0x72D7FFFF"

    '**
    '** The full list of editable attributes can be located at:
    '** http://sdkdocs.roku.com/display/sdkdoc/Label#Label-Fields
    '**

    print "Hello, Yulii!!!"
end sub

sub printNumber(nuber as integer)
    print "-- number = "; nuber
    ?">>>>>> printNumber() = ddd"
end sub