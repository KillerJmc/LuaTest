-- io.lines每次调用返回一个函数
-- 这个函数在for .. in ..中会被调用，该函数返回文件的一行
for line in io.lines("../temp/a.txt")
do
    print(line)
end

