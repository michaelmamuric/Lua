math.randomseed(os.time())

-- Player position in the middle of the screen (assuming resolution is 800 x 600)
local player_x, player_y = 400, 300
-- Initialize Enemy position
local enemy_x, enemy_y = 0, 0

local user_option = 0

while user_option ~= 4 do
    print("------------------------------------------")
    print("Welcome! The time and date is "..os.date())
    print("1. Generate random enemy position")
    print("2. Distance from enemy to player")
    print("3. Get angle from enemy to player")
    print("4. Exit")
    print("------------------------------------------")

    -- ask user for input
    print("Please select an option: ")
    -- prompts user for input
    -- *n -> a number value is expected
    user_option = io.read("*n")

    -- Option 1: Generate random enemy position
    if user_option == 1 then
        enemy_x = math.random(0, 800)
        enemy_y = math.random(0, 600)
        print("New enemy position: "..enemy_x..", "..enemy_y)
    end

    -- Option 2: Distance from enemy to player
    -- Needs a little trigonometry!
    -- We need to calculate the hypotenuse of the triangle to determine the distance of enemy to player
    -- Hypotenuse^2 = adjacent^2 + opposite^2, or Hypotenuse = square root of (adjacent + opposite)
    -- Adjacent = enemy_x - player_x
    -- Opposite = enemy_y - player_y
    if user_option == 2 then
        local distance = math.sqrt((enemy_x - player_x)^2 + (enemy_y - player_y)^2)
        print("Distance from enemy to player: "..distance)
    end

    -- Option 3: Get angle from enemy to player
    -- Needs more trigonometry!
    if user_option == 3 then
        -- this will return value in radians, not the actual degre
        local angle = math.atan2((enemy_y - player_y), (enemy_x - player_x))
        -- convert from radians to degrees
        local degree = math.deg(angle)
        print("Angle between enemy and player: "..degree)        
    end
end

print("Thank you for visiting. See you again!")