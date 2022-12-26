"12. Отличается от предыдущей задачи тем, что если в перегородке имеются
разрывы не более одной клетки каждый, то такая перегородка считается одной
перегородкой."

include("somefunctions.jl")

function try_move!(robot, direct)::Bool
    if isborder(robot, direct)
        return false
    end
    move!(robot, direct)
    return true
end

function num_borders!(robot, side)
    state = 0 
    global num_borders = 0

    while try_move!(robot, side)
        if state == 0
            if isborder(robot, Nord)
                state = 1
            end
        elseif state == 1
            if !isborder(robot, Nord)
                state = 2
            end
        else 
            if !isborder(robot, Nord)
                state = 0
                num_borders += 1
            end
        end
    end
    return num_borders
end

function number_12!(robot)
    start_pos_define(r)
    total = 0
    while !isborder(r, Nord)
        num_borders!(robot, Ost)
        while !isborder(r, West)
            move!(r, West)
        end
        move!(r, Nord)
        total += num_borders
    end
    south_west(r)
    goto_start_pos(r)
    return total
end