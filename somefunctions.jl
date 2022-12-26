inverse(side::HorizonSide) = HorizonSide(mod(Int(side)+2,4))
right(side::HorizonSide)::HorizonSide = HorizonSide(mod(Int(side)+1, 4))
left(side::HorizonSide)::HorizonSide = HorizonSide(mod(Int(side)-1, 4))
walk_by(r::Robot,side::HorizonSide) = while isborder(r,Nord)==true move!(r,side) end
next(side::HorizonSide)=HorizonSide(mod(Int(side)+1,4))
moves!(r,side,num_steps)=for _ in 1:num_steps move!(r,side) end

function start_pos_define(robot)
    global x_pos = 0
    global y_pos = 0
    global z_pos = 0
    while !isborder(robot, Sud)
        x_pos += 1
        move!(robot, Sud)
    end
    while !isborder(robot, West)
        move!(robot, West)
        y_pos += 1
    end
    while !isborder(robot, Sud)
        move!(robot, Sud)
        z_pos += 1
    end
end

function goto_start_pos(robot)
    for i = 1:z_pos
        move!(robot, Nord)
    end
    for i = 1:y_pos
        move!(robot, Ost)
    end
    for i = 1:x_pos
        move!(robot, Nord)
    end
end

function along!(robot, side)
    while !isborder(robot, side)
        move!(robot, side)
    end
end

function along_markers!(robot, side)
    while !isborder(robot, side)
        putmarker!(robot)
        move!(robot, side)
        putmarker!(robot)
    end
end

function south_west(robot)
        along!(robot, West)
        along!(robot, Sud)
end
