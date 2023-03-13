function sum(...)
    res = 0

    for _, v in pairs({...})
    do
        res = res + v
    end

    return res
end

-- 模块需要返回一个table，键值对：函数名 -> 函数
return {
    sum = sum
}
