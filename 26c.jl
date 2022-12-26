"28. Написать функцию, возвращающую значение n-го члена
последовательности Фибоначчи (1, 1, 2, 3, 5, 8, ...)
в) с использованием рекурсии и с мемоизацией;
убедиться, что полученный алгоритм будет достаточно эффективен в
вычислительном отношении."

include("somefunctions.jl")

function fibonacсi(n)
    if n == 0
        return 1, 0
    else
        current, prev = fibonacсi(n-1)
        return current, prev+current
    end
end