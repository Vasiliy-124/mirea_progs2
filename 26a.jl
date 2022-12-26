"28. Написать функцию, возвращающую значение n-го члена
последовательности Фибоначчи (1, 1, 2, 3, 5, 8, ...)
а) без использования рекурсии;"

include("somefunctions.jl")

function fibonachi(n)
    if n == 1 && n == 2
        return 1
    else
        num1 = num2 = 1
        while (n-2) > 0
            num1, num2 = num2, num1 + num2
            n-=1
        end
        return num2
    end
end