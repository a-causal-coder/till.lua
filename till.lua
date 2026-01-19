local till = {}
--local loop
--local oldUpdate

--[[function till.wait_till(key, how_long, on_end) 
    loop = { key = key,
        limit = how_long, 
        end_msg = on_end, 
        time = 0, 
        running = true, 
        started = false
    } 
    oldUpdate = love.update 
    function love.update(dt) 
        if oldUpdate then oldUpdate(dt) end
        if not loop.running then return end 
        loop.time = loop.time + dt
        if loop.time >= loop.limit or love.keyboard.isDown(loop.key) then 
            print(loop.end_msg) loop.running = false 
        end 
    end
end --]]

function till.wait_till(key, how_long, on_end)
    if key == "space" then 
        key = " "
    elseif key == "escape" then
        key = "^["
    end
    local input
    local time = 0
    while input ~= key or  time > how_long do
        input = io.read()
        time = time + 1
    end
    print(on_end)
end

till.wait_till("a", 1, "it worked")

return till