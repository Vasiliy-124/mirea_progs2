"23. Написать рекурсивную функцию, перемещающую робота в позицию,
симметричную по отношению к перегородке, находящейся с заданного
направления, т.е. требуется, чтобы в результате робот оказался на расстоянии от
противоположной перегородки равном расстоянию до заданной перегородки."

include("somefunctions.jl")

function number_22!(robot, side)
    if isborder(robot, side)
        tolim!(robot, inverse(side))
    else
        move!(robot,side)
        number_22!(robot, side)
        move!(robot,side)
    end
end

function tolim!(robot, side)
    if !isborder(robot, side)
        move!(robot,side)
        tolim!(robot, side)
    end
end