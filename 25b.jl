"25. Написать рекурсивную функцию, перемещающую робота в заданном
направлении до упора и расставляющую маркеры в шахматном порядке,
б) начиная с установки маркера;"

include("somefunctions.jl")

function number_25b!(robot, side)
    if !isborder(r, side)
        putmarker!(r)
        move!(r, side)
        sub25b!(r, side)
    end
    putmarker!(r)
end

function sub25b!(robot, side)
    if !isborder(robot, side)
        move!(r, side)
        number_25b!(robot, side)
    end
end