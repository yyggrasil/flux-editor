local love = require("love")
local utf8 = require("utf8")


function love.load()
    local file = io.open("aleatorio.txt")


    -- variaveis estaticas
    love.graphics.setNewFont("assests/Fonts/SourceCodePro-Italic-VariableFont_wght.ttf", 25) 

    love.graphics.setBackgroundColor(0,0,0)
   
    
    local icon = love.image.newImageData("assests/imgs/icon.png")
    if icon ~= nil then
        love.window.setIcon(icon)
    end
    


    if file ~= nil then
        Text = file:read("a")
    else
        Text = "New file..."
    end
end



function love.textinput(t)
   Text =  Text .. t
   
   -- enable to repeat letter if key is hold down 
   love.keyboard.setKeyRepeat(true)
end

function love.keypressed(key)
    if key == "backspace" then
        local byteoffset = utf8.offset(Text, -1)

        if byteoffset then
            Text =  string.sub(Text, 1, byteoffset-1)
        end
    end
end

-- loop repetida pelo delta.time(dt)
function love.update(dt)

end


function love.draw()
    love.graphics.printf(Text,0,0, love.graphics.getWidth())
end
