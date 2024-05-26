load = {}

function load.loadAll()
    function love.load()
    local file = io.open("aleatorio.txt")


    -- variaveis estaticas
    love.graphics.setNewFont("assests/Fonts/SourceCodePro-Italic-VariableFont_wght.ttf", 25) 

    love.graphics.setBackgroundColor(0,0,0)
   
    --[[ failed to set new icon
    local icon = love.image.newImageData("assests/imgs/icon.png")
    if icon ~= nil then
        sucess = love.window.setIcon(icon)
        print(sucess)
    end
   ]] 


    if file ~= nil then
        Text = file:read("a")
    else
        Text = "New file..."
    end
end

end

return load
