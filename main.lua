local love = require("love")
local utf8 = require("utf8")
local load = require("load")

-- call the load file
load.loadAll(arg)


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
