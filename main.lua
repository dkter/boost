require "shallowcopy"
require "levels"

ground = {}
char = {}
map = {}

currentLevel = lv1
currentLevel.orig_boosts = deepcopy(currentLevel.boosts)

boost_colour = {243, 156, 18}

function love.load()
    char.w = 50
    char.h = 50
    char.x = love.graphics.getWidth() / 2 - char.w / 2
    char.y = love.graphics.getHeight() / 2 - char.h
    char.colour = {52, 152, 219}
    char.speed = 2
    char.jump_height = -300
    char.gravity = -500
    char.y_vel = 0
    char.ground = char.y

    ground.x = 0
    ground.y = love.graphics.getHeight() / 2
    ground.w = love.graphics.getWidth()
    ground.h = love.graphics.getHeight()
    ground.colour = {52, 73, 94}

    map.x = 0

    big_font = love.graphics.newFont("lato_light.ttf", 26)
    small_font = love.graphics.newFont("lato_light.ttf", 16)

    love.window.setTitle("")
end

function love.update(dt)
    map.x = map.x + char.speed

    if love.keyboard.isDown('space') or love.keyboard.isDown('up') then
        if char.y_vel == 0 then
            char.y_vel = char.jump_height
        end
    end

    if love.keyboard.isDown('6') then
        lv_id = 6
        currentLevel = lv6
    end

    if char.y_vel ~= 0 then
        char.y = char.y + char.y_vel * dt
        char.y_vel = char.y_vel - char.gravity * dt
    end

    if char.y > char.ground then
        char.y_vel = 0
        char.y = char.ground
    end
end

function check_range(x, tolerance, comp_x)
    return (x - tolerance <= comp_x and
            x + tolerance >= comp_x)
end

function love.draw()
    love.graphics.setBackgroundColor(255, 255, 255, 1.0)

    love.graphics.setColor(unpack(char.colour))
    love.graphics.rectangle('fill', char.x, char.y, char.w, char.h)

    love.graphics.setColor(unpack(ground.colour))
    love.graphics.rectangle('fill', ground.x, ground.y, ground.w, ground.h)

    -- splash
    if lv_id == 0 then
        love.graphics.setFont(big_font)
        love.graphics.print("boost", 100, 100)
        love.graphics.setFont(small_font)
        love.graphics.print("press <a> to begin", 100, 150)
        char.speed = 0
        char.jump_height = 0
        if love.keyboard.isDown('a') then
            map.x = 0
            char.speed = 2
            char.jump_height = -300
            lv_id = 1
            currentLevel = levels[lv_id]
            currentLevel.orig_boosts = deepcopy(currentLevel.boosts)
        end
    end

    -- boost HUD
    num_boosts = (char.speed - 2) / 2
    if lv_id > 2 then
        
        love.graphics.setFont(big_font)
        love.graphics.print(string.format("boosts: %d/%d", num_boosts, currentLevel.required_boosts), 100, 10, 0)
    end

    love.graphics.setFont(small_font)

    -- spikes
    for i, spike in ipairs(currentLevel.spikes) do
        local triangle_x = spike - map.x
        love.graphics.polygon('fill', triangle_x - 25, ground.y, triangle_x + 25, ground.y, triangle_x, ground.y - 40)

        if check_range(triangle_x, 22 + char.w / 2, love.graphics.getWidth() / 2 - 2) then
            if char.y > ground.y - 20 - char.h then
                love.graphics.print("you died :( press <a> to restart", 100, 200)
                char.speed = 0
                char.jump_height = 0
                if love.keyboard.isDown('a') then
                    map.x = 0
                    char.speed = 2
                    char.jump_height = -300
                    currentLevel.boosts = deepcopy(currentLevel.orig_boosts)
                end
            end
        end
    end

    -- helpful text
    for i, text in ipairs(currentLevel.text) do
        if (text.location < map.x + love.graphics.getWidth() and 
            text.location > map.x) then
            love.graphics.print(text.text, 100, 100)
        end
    end

    -- boosts
    love.graphics.setColor(unpack(boost_colour))
    for i, boost in ipairs(currentLevel.boosts) do
        local boost_x = boost - map.x
        love.graphics.circle('fill', boost_x, ground.y - 22, 20)

        if check_range(boost_x, 20, love.graphics.getWidth() / 2 + char.w / 2) then
            if char.y > ground.y - 40 - char.h then
                table.remove(currentLevel.boosts, i)
                char.speed = char.speed + 2
            end
        end
    end

    -- next level
    if map.x >= currentLevel.finish then
        if num_boosts >= currentLevel.required_boosts then
            love.graphics.print("you beat the level! press <a> to continue", 100, 100)
            if love.keyboard.isDown('a') then
                map.x = 0
                char.speed = 2
                lv_id = lv_id + 1
                currentLevel = levels[lv_id]
                currentLevel.orig_boosts = deepcopy(currentLevel.boosts)
            end
        else
            love.graphics.print("you don't have enough boosts! press <a> to restart", 100, 100)
            if love.keyboard.isDown('a') then
                map.x = 0
                char.speed = 2
                currentLevel.boosts = deepcopy(currentLevel.orig_boosts)
            end
        end
    end
end