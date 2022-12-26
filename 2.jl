"2. ДАНО: Робот - в произвольной клетке поля (без внутренних перегородок
и маркеров)
РЕЗУЛЬТАТ: Робот - в исходном положении, и все клетки по периметру
внешней рамки промаркированы."

include("somefunctions.jl")

function number_2!(robot)
    start_pos_define(r)
    putmarker!(robot)
    for side in (Nord, Ost, Sud, West)
        along_markers!(r, side)
    end
    goto_start_pos(r)
end