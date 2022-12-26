"21. Написать рекурсивную функцию, перемещающую робота в соседнюю
клетку в заданном направлении, при этом на пути робота может находиться
изолированная прямолинейная перегородка конечной длины."

include("somefunctions.jl")

function number_20!(robot, side)
    if !isborder(robot, side)
        move!(robot, side)
    else
        move!(robot, left(side))
        number_20!(robot, side)
        move!(robot, right(side))
    end
end