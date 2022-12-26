"1. ДАНО: Робот находится в произвольной клетке ограниченного
прямоугольного поля без внутренних перегородок и маркеров.
РЕЗУЛЬТАТ: Робот — в исходном положении в центре прямого креста из
маркеров, расставленных вплоть до внешней рамки."

include("somefunctions.jl")

function number_1!(robot)
    putmarker!(robot)
    for side in (Nord, Sud, Ost, West)
        step = 0
        while !isborder(robot, side)
            move!(robot, side)
            putmarker!(robot)
            step += 1
        end
        for i = 1:step
            move!(robot, inverse(side))
        end
    end
end

