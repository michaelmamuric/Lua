print("Examples of variables")

-- No variable types defined!
score = 0
lives = "Zero"
level = 1

-- Lua is a dynamically-typed language
-- Variables do not have types. Only values do!
print(type(score))
print(type(lives))

-- Lua Main Value types:
-- nil -> similar to null
-- number
-- string
-- function
-- table

salary = 10 / 2
-- This is how you concatenate in Lua
print("The value of salary is "..salary)

salary2 = 25 // 2 -- this ensures only the integer part of the value is returned
print("The value of salary2 is "..salary2)

-- Printing a variable that has not been declared. This will simply return nil,
-- unlike in other languages where it will result in a compilation error
print(nonexistent_variable)
-- When you try to concatenate, however, will result in run-time error
-- print('Trying to concatenate nonexistent_variable: '..nonexistent_variable)

-- There is no shorthand for increment/decrement in Lua! You cannot do level++ or level--
-- incrementing level
level = level + 1
print('Level after increment: '..level)
-- decrementing level
level = level - 1
print('Level after decrement: '..level)



