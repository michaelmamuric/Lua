-- copied from previous lua script
math.randomseed(os.time())

-- for loop from 1 to 500
for i = 1, 500 do
    enemy_x = math.random(0, 800)
    enemy_y = math.random(0, 600)

    print("Enemy #"..i.." coordinates: ("..enemy_x..", "..enemy_y..")")
end

-- for loop from 1 to 10, increment by 2 each time
for j = 1, 10, 2 do
    print("Odd number: "..j)
end