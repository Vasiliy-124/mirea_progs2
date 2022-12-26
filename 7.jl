"7. ДАНО: Робот - рядом с горизонтальной бесконечно продолжающейся в
обе стороны перегородкой (под ней), в которой имеется проход шириной в одну
клетку.
РЕЗУЛЬТАТ: Робот - в клетке под проходом"

include("somefunctions.jl")

function number_7!(robot)
    n = 0; 
    side = Ost
    while isborder(robot, Nord)
        n += 1
        moves!(robot, side, n)
        side = inverse(side)
    end
end