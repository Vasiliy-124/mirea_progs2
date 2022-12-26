"3. ДАНО: Робот - в произвольной клетке ограниченного прямоугольного
поля
РЕЗУЛЬТАТ: Робот - в исходном положении, и все клетки поля
промаркированы."

include("somefunctions.jl")

function number_3!(robot)
    side = Ost
    start_pos_define(robot)
    while !isborder(robot, Nord)
        along_markers!(robot, side)
        move!(robot, Nord)
        along_markers!(robot, inverse(side))
    end
    along_markers!(robot, inverse(side))
    south_west(robot)
    goto_start_pos(robot)
end