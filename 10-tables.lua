-- Tables are only data structure available in Lua

-- Tables can be used to act as a simple array
local tableA = {34, 22, 12, 9, -34, 55, 89, 1672, 12}

-- Fetching by index
-- Returns the first element in the table, i.e. 34. Indices in Lua start with 1!
print("First element: "..tableA[1])
-- Returns the last element in the table, i.e. 12
-- #[tableA] -> returns the length of table
print("Last element: "..tableA[#tableA])

-- Tables in Lua are more commonly used as associative arrays, using key-value pairs
local quiz_scores = {
    ["michael"] = 10,
    ["john"] = 8,
    ["peter"] = 9,
    ["mary"] = 10
}
-- Fetching by key
print("Michael's score: "..quiz_scores["michael"]) -- returns 10
print("Peter's score: "..quiz_scores["peter"]) -- returns 9

-- If key values are simple (no special characters and spaces), the square brackets and quotes can be removed
local quiz_scores_2 = {
    michael = 10,
    john = 8,
    peter = 9,
    mary = 10
}

-- looping through table key-value pairs

-- pairs() - loops thru key-value pairs IN RANDOM ORDER
for k, v in pairs(quiz_scores) do
    print('[Looping using pairs] Key: '..k.. ', Value: '..v)
end

-- ipairs() - loops thru key-value pairs IN ORDER
-- for key, value in ipairs(quiz_scores) do
--     print('[Looping using ipairs] Key: '..key.. ', Value: '..value)
-- end
