"19. Написать рекурсивную функцию, перемещающую робота до упора в
заданном направлении."

include("somefunctions.jl")

function number_18!(robot, side)
    if !isborder(robot, side)
        move!(robot,side)
        number_18!(robot, side)
    end
end

