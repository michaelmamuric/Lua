colour = "#ce10e3"
print("Original colour: "..colour)

-- string.gsub -> replace specified character with something else
-- first param -> string to be manipulated
-- second param -> string to replace
-- third param -> string to use as replacement
pure_colour = string.gsub(colour, '#', '')
print("Pure colour: "..pure_colour)

-- string.sub -> similar to Java's substr
-- string.len -> string length
-- Indices/positions in Lua start with 1, not 0!
-- first param -> string to be manipulated
-- second param -> starting index
-- third param -> ending index
substr_colour = string.sub(colour, 2, string.len(colour))
print("Substr colour: "..substr_colour)

-- this one uses shorthand of string.len -> #[variable name]
substr_colour2 = string.sub(colour, 2, #colour)
print("Substr colour2: "..substr_colour2)

-- string.find: returns a key value pair of starting and ending indices where characters have been found
-- within the string
substr_indices = string.find(colour, "ce")
print("Using string.find: "..substr_indices)

--multi-level string - does not have to be enclosed in quotes
multilevel_string = [[Line 1
Line 2
Line 3]]
print("Multi-level String: "..multilevel_string)