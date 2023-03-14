-- 建立table作为对象
Student = {
    id = nil,
    name = nil
}

function Student.new(id, name)
    -- 建立一个空表
    local instance = {}

    -- 设置Student为该空表的元表（instance继承自Student，拥有其所有属性）
    -- 但是注意：查找属性的时候不再是直接从元表Student获取，而是调用其__index方法获取
    setmetatable(instance, Student)

    -- 当instance的属性或者方法被调用时，会：
    -- 1. 在instance中查找，找到就返回
    -- 2. 在元表Student中调用__index方法查找（所有table的__index默认都是nil）
    -- 因此可以把__index设置为Student，使instance查找时可以从元表Student的属性和方法中找
    Student.__index = Student

    instance.id = id
    instance.name = name

    return instance
end

-- 定义类方法，需要传入自身
function Student.to_string(this)
    return ("Student(id: %s, name: %s)"):format(this.id, this.name)
end

-- 初始化对象
s = Student.new(1, "Jmc")
-- 调用类方法，传入自身对象
print(s.to_string(s))

s2 = Student.new(2, "Lucy")
-- 语法糖，相当于s2.to_string(s2)
print(s2:to_string())
