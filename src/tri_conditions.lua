-- and: 对象和布尔值同级，优先返回后面
print(true and 3)
-- 存在false就返回false
print(false and 3)
print(3 and false)


-- or: 对象和布尔值同级，优先返回前面
print(true or 4)

-- 存在false就返回另一个
print(false or 4)
print(4 or false)


a, b = 3, 4

-- 模拟三目表达式
-- (((a > b) and a) or b)
-- a > b -> false
-- false and a -> false
-- false or b -> b
print(a > b and a or b)

-- (((a < b) and a) or b)
-- a > b -> true
-- true and a -> a
-- a or b -> a
print(a < b and a or b)
