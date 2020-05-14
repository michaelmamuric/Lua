-- x = 1
-- y = 2

-- example below is equivalent to commented line above
x, y = 1, 2
print("X-coordinate: "..x)
print("Y-coordinate: "..y)

-- you can swap variable values easily as well
x, y = y, x
-- output:
-- X-coordinate: 2
-- Y-coordinate: 1
print("X-coordinate: "..x)
print("Y-coordinate: "..y)

-- Random
enemy_x = math.random(0, 800)
enemy_y = math.random(0, 600)

print("Enemy coordinates: ("..enemy_x..", "..enemy_y..")")
-- This will produce the same results as the call above -- NOT new random values!
print("Enemy coordinates: ("..enemy_x..", "..enemy_y..")")

-- math.randomseed is used to use a different seed every time
-- os.time gets current time in os
math.randomseed(os.time())

enemy_x = math.random(0, 800)
enemy_y = math.random(0, 600)

print("Enemy coordinates: ("..enemy_x..", "..enemy_y..")")



