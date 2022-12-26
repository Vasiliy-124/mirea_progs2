"5. ДАНО: На ограниченном внешней прямоугольной рамкой поле имеется
ровно одна внутренняя перегородка в форме прямоугольника. Робот - в
произвольной клетке поля между внешней и внутренней перегородками.
РЕЗУЛЬТАТ: Робот - в исходном положении и по всему периметру
внутренней, как внутренней, так и внешней, перегородки поставлены маркеры."

include("somefunctions.jl")

function n5!(robot)
      start_pos_define(robot)
      perimeter_area!(robot)
      side = Ost
      count = 0
      while !isborder(robot, Nord)
            while !isborder(robot, side)
                  move!(robot, side)
                  if isborder(robot, right(side))
                        for side in [Ost, Nord, West, Sud]
                              while isborder(robot, right(side))
                                    putmarker!(robot)
                                    move!(robot, side)
                              end
                              move!(robot, right(side))
                              count += 1
                        end
                        if count == 4
                              break
                        end          
                  end
            end
            along!(robot, inverse(side))
            move!(robot, Nord)
      end
      south_west(robot)
      goto_start_pos(robot)    
end

function perimeter_area!(robot)
      putmarker!(robot)
      for side in (Nord, Ost, Sud, West)
          along_markers!(r, side)
      end
end