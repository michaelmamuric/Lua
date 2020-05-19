-- Metatables acts as helpers to tables
-- https://www.lua.org/pil/13.html

-- Meta Methods:
-- __index
-- __newindex

-- Operator examples: __add, __sub, __mul, __concat

local meta = {}

-- Declare vector3d constructor
local function newVector(x, y, z)
    local view = {x = x, y = y, z = z}
    setmetatable(view, meta)
    return view
end

-- Adds two vector tables together
local function addVectors(vector1, vector2)
    return newVector(vector1.x + vector2.x, vector1.y + vector2.y, vector1.z + vector2.z)
end
meta.__add = addVectors

-- Displays vector table values
function tostring(table)
    return "("..(table.x)..", "..(table.y)..", "..(table.z)..")"
end
meta.__tostring = tostring

-- Create vector3d tables
local position = newVector(5.0, 5.0, 5.0)
local velocity = newVector(10.0, -3.5, 0.0)

local result = position + velocity

print(position)
print(velocity)
print(result)