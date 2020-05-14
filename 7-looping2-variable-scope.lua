math.randomseed(os.time())

-- set position of the hero
player_x, player_y = 400, 300

num_enemies = 0

-- while loop
while num_enemies < 500 do
    enemy_x = math.random(0, 800)
    local enemy_y = math.random(0, 600)

    if(player_x == enemy_x or player_y == enemy_y) then
        print("Enemy and player clashed!")
    else
        -- display enemy coordinates
        print("Enemy #"..(num_enemies + 1).." coordinates: ("..enemy_x..", "..enemy_y..")")

        -- increment enemy count
        num_enemies = num_enemies + 1
    end
end

-- Lua variables all have global scopes by default!
print("I can access enemy_x variable from the while loop above: "..enemy_x)
-- The code below will result in runtime error, since enemy_y is declared as local
print("This code will cause a runtime error: "..enemy_y)