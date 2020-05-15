-- Metatables acts as helpers to tables
-- https://www.lua.org/pil/13.html

-- Meta Methods:
-- __index
-- __newindex

-- Operator examples: __add, __sub, __mul, __concat

local meta = {}
local vector3d = {}

-- Declare vector3d constructor
function vector3d.new(x, y, z)
    local view = {x = x, y = y, z = z}
    setmetatable(view, meta)
    return view
end

-- Adds two vector tables together
function vector3d.add(v1, v2)
    return vector3d.new(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z)
end
meta.__add = vector3d.add

-- Displays vector table values
function vector3d.tostring(v)
    return "("..(v.x)..", "..(v.y)..", "..(v.z)..")"
end
meta.__tostring = vector3d.tostring

-- Create vector3d tables
local position = vector3d.new(5.0, 5.0, 5.0)
local velocity = vector3d.new(10.0, -3.5, 0.0)

local result = position + velocity

print(position)
print(velocity)
print(result)