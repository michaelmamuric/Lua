local matrix = {
    {3.4, 2.0, 2.0},
    {-3.5, 3.3, 0.5},
    {0.1, 0.1, 3.3}    
}

print('Row 1 Column 1: '..matrix[1][1]) -- returns 3.4
print('Row 2 Column 3: '..matrix[2][3]) --returns 0.5

-- Loop through all Matrix Values
for i = 1, 3 do
    for j = 1, 3 do
        print('[Loop] Row '..i.. ' Column '..j..': '..matrix[i][j])
    end
end