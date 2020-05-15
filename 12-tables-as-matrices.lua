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

-- Creating a matrix using loops

-- create an empty table
local matrix2 = {}

for x = 1, 3 do
    -- new row
    matrix2[x] = {}
    for y = 1, 3 do
        matrix2[x][y] = 0
    end
end

print('[Matrix2] Row 1 Column 1: '..matrix2[1][1])
print('[Matrix2] Row 2 Column 2: '..matrix2[2][2])
print('[Matrix3] Row 3 Column 3: '..matrix2[3][3])