local meta = {}

local function newVector(x, y, z)
    local newTable = {x = x, y = y, z = z}
    setmetatable(newTable, meta)
    return newTable
end

meta.__add = local function addVectors(table1, table2)
    return newVector(table1.x + table2.x, table1.y + table2.y, table1.z + table2.z)
end

meta.__tostring = local function toString(table)
    return table.x..', '..table.y..', '..table.z
end

local vector1 = newVector(1.0, 2.0, 3.0)
local vector2 = newVector(2.0, -4.0, 5.0)

print(vector1 + vector2)
