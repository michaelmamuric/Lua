print("Examples of variables")

-- No variable types defined!
score = 0
lives = "Zero"
level = 1

-- Lua is a dynamically-typed language!
print(type(score)) -- prints "number"
print(type(lives)) -- prints "string"
print(type(nonexistent_variable)) -- prints "nil" (will NOT produce runtime error)

-- Lua Main Value types:
-- nil -> similar to null
-- number
-- string
-- function
-- table

salary = 10 / 2
-- This is how you concatenate in Lua
print("The value of salary is "..salary) -- prints 5

salary2 = 25 // 2 --  ensure only the integer part of the value is returned
print("The value of salary2 is "..salary2) -- prints 12

-- Printing a variable that has not been declared. This will simply return nil,
-- unlike in other languages where it will result in a compilation error
print(nonexistent_variable)
-- When you try to concatenate, however, will result in run-time error
-- print('Trying to concatenate nonexistent_variable: '..nonexistent_variable)

level = 1
-- No increment/decrement shorthand. You cannot do level++ or level--
-- increment
level = level + 1
-- decrement
level = level - 1



