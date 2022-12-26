"20. Написать рекурсивную функцию, перемещающую робота до упора в
заданном направлении, ставящую возле перегородки маркер и возвращающую
робота в исходное положение."

include("somefunctions.jl")

function number_19!(robot, side)
    if isborder(robot, side)
        putmarker!(robot)
    else
        move!(robot, side)
        number_19!(robot, side)
        move!(robot, inverse(side))
    end
end
