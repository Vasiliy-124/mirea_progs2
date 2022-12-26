"25. Написать рекурсивную функцию, перемещающую робота в заданном
направлении до упора и расставляющую маркеры в шахматном порядке,
a) начиная без установки маркера (в стартовой клетке)"

include("somefunctions.jl")

function number_25a!(robot, side)
    if !isborder(r, side)
        move!(r, side)
        putmarker!(r)
        sub25a!(r, side)
    end
end

function sub25a!(robot, side)
    if !isborder(robot, side)
        move!(r, side)
        number_25a!(robot, side)
    end
end