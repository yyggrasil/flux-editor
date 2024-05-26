load = {}

function load.loadAll(arg)
    print(arg[2])
    if arg ~= nil then
        Filename = arg[2]
    else
        Filename = "testFile.txt"
    end



    function love.load()

        File = io.open(Filename)
        Font = "assests/Fonts/SourceCodePro-Italic-VariableFont_wght.ttf"

        -- variaveis estaticas
        love.graphics.setNewFont(Font, 25) 

        love.graphics.setBackgroundColor(0,0,0)

        --[[ failed to set new icon
        local icon = love.image.newImageData("assests/imgs/icon.png")
        if icon ~= nil then
            sucess = love.window.setIcon(icon)
            print(sucess)
        end
       ]] 


        if File ~= nil then
            Text = File:read("a")
        else
            Text = ""
        end
    end
end




return load
