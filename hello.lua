g_var = 0

function function1()
    -- global_var can be accessed here
    local var1 = g_var + 1
end

function function2()
    -- global_var can be accessed here
    local var2 = g_var + 2
    -- NO compilation error, but now, var1 cannot be accessed here
    print(var1)
end

-- Function calls
function1() -- will set var1 value
-- This will print nil, since it won't be able to find var1. Remember,
-- Lua returns nil when it cannot find a variable with a specified name
function2()