-- resume: goto到协程代码块中执行协程代码，并携带参数
-- yield: goto回main代码中，并携带参数
-- 这逻辑总体不太通，不好理解

co = coroutine.create(function(arg)
    -- main第一次使用resume，goto到此开始运行
    print("协程 -> 执行，接收初始参数：" .. arg)

    -- goto到main中，携带参数a
    -- main用resume时goto到这，接收参数b
    print(coroutine.yield("a"))

    print("协程 -> 结束")
end)

print("main -> 执行")
-- goto到协程代码块，传入初始参数what
-- 协程用yield时goto回到这，接收协程是否执行成功和它携带的参数a
print(coroutine.resume(co, "what"))

-- goto到协程代码块，携带参数b
print(coroutine.resume(co, "b"))

print("main -> 结束")
