math.randomseed(os.time())

-- Void function display menu
local function display_menu()
    print("------------------------------------------")
    print("Welcome! The time and date is "..os.date())
    print("1. Generate random enemy position")
    print("2. Distance from enemy to player")
    print("3. Get angle from enemy to player")
    print("4. Exit")
    print("------------------------------------------")
end

-- Function that calculates distance
local function get_distance(x1, y1, x2, y2)
    return math.sqrt((x1 - x2)^2 + (y1 - y2)^2)
end

-- Player position in the middle of the screen (assuming resolution is 800 x 600)
local player = {x = 400, y = 300} -- enhanced to use tables

-- Initialize Enemy position
local enemy = {x = 0, y = 0} -- enhanced to use tables

local user_option = 0

while user_option ~= 4 do
    -- call function
    display_menu()

    -- ask user for input
    print("Please select an option: ")
    -- prompts user for input
    -- *n -> a number value is expected
    user_option = io.read("*n")

    -- Option 1: Generate random enemy position
    if user_option == 1 then
        enemy.x = math.random(0, 800) -- shortcut for enemy["x"]
        enemy.y = math.random(0, 600) -- shortcut for enemy["y"]
        print("New enemy position: "..(enemy.x)..", "..(enemy.y))
    end

    -- Option 2: Distance from enemy to player
    -- Needs a little trigonometry!
    -- We need to calculate the hypotenuse of the triangle to determine the distance of enemy to player
    -- Hypotenuse^2 = adjacent^2 + opposite^2, or Hypotenuse = square root of (adjacent + opposite)
    -- Adjacent = enemy_x - player_x
    -- Opposite = enemy_y - player_y
    if user_option == 2 then
        local distance = get_distance(enemy.x, enemy.y, player.x, player.y)
        print("Distance from enemy to player: "..distance)
    end

    -- Option 3: Get angle from enemy to player
    -- Needs more trigonometry!
    if user_option == 3 then
        -- this will return value in radians, not the actual degre
        local angle = math.atan2((enemy.y - player.y), (enemy.x - player.x))
        -- convert from radians to degrees
        local degree = math.deg(angle)
        print("Angle between enemy and player: "..degree)
    end
end

print("Thank you for visiting. See you again!")