-- Tables within tables!

local prince_codes = {
    { Page = 1, Line = 2, Word = 2, Code="W" },
    { Page = 1, Line = 5, Word = 4, Code="O" },
    { Page = 1, Line = 8, Word = 6, Code="E" },
    { Page = 1, Line = 10, Word = 6, Code="S" },
}

-- Ask for user input
print("What is the page you're looking for?")
local page = io.read("*n")

print("What is the line you're looking for?")
local line = io.read("*n")

print("What is the word you're looking for?")
local word = io.read("*n")

-- boolean variable declaration
local found = false

-- loop through prince_codes
for index, entry in ipairs(prince_codes) do
    -- remember the shortcut: entry["Page"] = entry.Page
    if entry.Page == page and entry.Line == line and entry.Word == word then
        print("The entry for this combination is "..entry.Code)
        found = true
    end
end

if not found then
    print("No code for this combination")
end