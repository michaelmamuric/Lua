print('Conditionals 2')

menu_option = 1

-- Lua conditionals
-- value1 == value2
-- value1 ~= value2 --> notice the use of ~= for not equal
-- value1 > value2
-- value1 >= value2
-- value1 < value2
-- value1 <= value2

-- if-else-if
if menu_option == 1 then
    menu_text = "Can I play?"
elseif menu_option == 2 then
    menu_text = "Do not hurt me!"
elseif menu_option == 3 then
    menu_text = "Bring it on!"
elseif  menu_option == 4 then
    menu_text = "I am Death incarnate!"
end

print("Menu option: ".. menu_text)

-- fighter_name = "RyU"
fighter_name = "Ken"

-- logical operators
-- if x and y then
-- if x or y then
-- if not x then

-- string manipulation
if string.lower(fighter_name) == "ryu" 
or string.lower(fighter_name) == "ken" then
    attack_move = "Hadouken"
elseif string.lower(fighter_name) == "chun li" then
    attack_move = "Lightning Kick"
elseif string.lower(fighter_name) == "guile" then
    attack_move = "Sonic Boom"
elseif string.lower(fighter_name) == "blanka" then
    attack_move = "Electric Shock"
end

print(fighter_name..' attacks with '..attack_move)