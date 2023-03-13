-- 字符串长度
print(#"666")

-- 返回找到的初始下标和结束下标
print(string.find("#jmc#", "jmc"))
-- 查找固定格式字符串并返回初始和结束下标
print(string.find("!!!2023/03/13!!!", "%d%d%d%d/%d%d/%d%d"))

-- 正则匹配
print(string.match("I have 2 questions for you.", "%d+ %a+"))

print(string.upper("jmc"))
print(string.reverse("cmd"))
print(string.format("j%sc", "m"))
print(string.rep("jmc", 3, " "))
print(string.sub("jmc", 1, 2))
