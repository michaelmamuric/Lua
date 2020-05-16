-- Variadic functions - functions with an unknown number of arguments
-- ... is NOT a placeholder; it's the actual syntax!

-- Find the maximum number
function find_max(...)
    local numbers = {...}
    local max = numbers[1]

    for index, num in ipairs(numbers) do
        if num > max then
            max = num
        end
    end

    return max
end

local max = find_max(4, 2, -3, 8, 100, 1)
print("The maximum number is "..max) -- will return 100