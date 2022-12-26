"8. ДАНО: Где-то на неограниченном со всех сторон поле без внутренних
перегородок имеется единственный маркер. Робот - в произвольной клетке этого
поля.
РЕЗУЛЬТАТ: Робот - в клетке с маркером."

include("somefunctions.jl")

function find_marker(robot)
    num_steps_max = 1
    side = Nord
    while !ismarker(robot)
        for _ in 1:2
            find_marker(robot, side, num_steps_max)
            side = next(side)
        end
        num_steps_max+=1
    end
end
function find_marker(robot, side, num_steps_max)
    for _ in 1:num_steps_max
        if ismarker(robot)
            return nothing
        end
        move!(robot, side)
    end
end
