sub init()
    m.top.setFocus(true)

    'init colors
    m.colors = colors()

    'Find nodes
    m.myLabel = m.top.findNode("myLabel")
    m.myLabelUnder = m.top.findNode("myLabelUnder")
    m.rectangleUp = m.top.findNode("rectangleUp")
    m.rectangleDown = m.top.findNode("rectangleDown")

    'Set the font size
    m.myLabel.font.size = 99
    m.myLabelUnder.font.size = 70

    'Set the color to light blue
    m.myLabel.color = m.colors.yellow
    m.myLabelUnder.color = m.colors.blue

    'Set value for onKeyEvent
    m.changeUPAWas = true

end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if press then
        if key = "up"
            m.myLabel.text = "Up pressed"
        else if key = "down"
            m.myLabel.text = "Down pressed"
        else if key = "OK"
            'Set the flag of Ukraine to UPA
            if m.changeUPAWas
                m.rectangleUp.color = m.colors.red
                m.rectangleDown.color = m.colors.black
                m.myLabel.color = m.colors.red
                m.myLabelUnder.color = m.colors.black
                m.changeUPAWas = false
            else
            'Set the flag of UPA to Ukraine
                m.rectangleUp.color = m.colors.yellow
                m.rectangleDown.color = m.colors.blue
                m.myLabel.color = m.colors.yellow
                m.myLabelUnder.color = m.colors.blue
                m.changeUPAWas = true
            end if
        end if
    end if
        return true
end function
