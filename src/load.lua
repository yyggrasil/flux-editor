load = {}

function load.loadAll(arg)

    function love.load()
        if Filename ~= nil then
            File = io.open(Filename)
        end
        
        
        -- variaveis estaticas
        Font = "assests/Fonts/SourceCodePro-Italic-VariableFont_wght.ttf"

        love.graphics.setNewFont(Font, 25) 

        love.graphics.setBackgroundColor(0,0,0.5) 


        if File ~= nil then
            Text = File:read("a")
        else
            Text = " "
        end
    end
end




return load
