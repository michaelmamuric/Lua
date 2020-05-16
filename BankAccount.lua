BankAccount = {
    account_number = 0,
    owner_name = "",
    balance = 0.0
}

-- constructor
function BankAccount:new(table)
    -- if parameter table is not null, set the value
    -- if parameter table is null, initialize myTable to an empty table
    local myTable = table or {}
    -- set meta table
    setmetatable(myTable, self)
    -- We need to set this, to ensure access to the deposit and withdraw methods
    -- This method only returns a table. When we try to access something from a table that does not exist,
    -- Lua will check if there is a metatable for that table. If there is, it will attempt to access the __index
    -- metamethod.
    self.__index = self
    return myTable
end

-- self -> similar to the "this" keyword in Java
function BankAccount:deposit(amount)
    self.balance = self.balance + amount
    return self.balance
end

function BankAccount:withdraw(amount)
    self.balance = self.balance - amount
    return self.balance
end

-----
local myAccount = BankAccount:new({
    account_number = 12345,
    owner_name = "John Doe",
    balance = 100.0
})

print('Initial values')
print('Account Number: '..myAccount.account_number)
print('Owner Name: '..myAccount.owner_name)
print('Balance: '..myAccount.balance)

print('Depositing 400: '..myAccount:deposit(400))
print('Withdrawing 50: '..myAccount:withdraw(50))