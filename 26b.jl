"28. Написать функцию, возвращающую значение n-го члена
последовательности Фибоначчи (1, 1, 2, 3, 5, 8, ...)
б) с использованием рекурсии;"

include("somefunctions.jl")

function fibonachi(n)
    if n in (1,2)
        return 1
    end
    fibonachi(n-1) + fibonachi(n-2)
end