"24. Написать рекурсивную функцию, перемещающую робота на расстояние
от перегородки с заданного направления вдвое меньшее исходного.
Указание: воспользоваться косвенной рекурсией."
include("somefunctions.jl")

function halfdist!(robot, side)
    if !isborder(robot, side)
        move!(robot, side)
        no_delayed_action!(robot, side)
        move!(robot, inverse(side))
    end
end

function no_delayed_action!(robot,side)
    if !isborder(robot, side)
        move!(robot, side)
        halfdist!(robot, side)
    end
end