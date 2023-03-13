-- 使用变长参数
function max(...)
    -- 解构到列表中
    args = {...}

    return #args == 0 and "nil" or
           #args == 1 and args[1] or
           #args == 2 and (args[1] > args[2] and args[1] or args[2]) or
           -- 将max分解出一个参数，其他参数继续调用max
           max(args[1], max(select(2, ...)))
end

print("[1, 4, 3, 2]中最大值是：" .. max(1, 4, 3, 2))
