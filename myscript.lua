print("Examples of variables")

-- No variable types defined!
score = 0
lives = "Zero"

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