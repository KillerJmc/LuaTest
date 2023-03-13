lines = {}

-- 以只读模式打开文件，assert用于检查文件是否打开成功
file = assert(io.open("../temp/a.txt", "r"))

-- file:lines每次调用返回一个函数
-- 这个函数在for .. in ..中会被调用，该函数返回文件的一行
for line in file:lines()
do
    -- 放进table里
    table.insert(lines, line)
end

file:close()

-- 遍历lines table
for _, line in pairs(lines)
do
    print(line)
end
