def count_pushes(floors, start, goal, up, down)
  remaining_floors = (floors.to_i - start.to_i) % up.to_i
  if remaining_floors != 0
    up_pushes = ((floors.to_i - start.to_i) / up.to_i) + 1
    current_floors = remaining_floors + (up_pushes * up.to_i)
    down_floors = current_floors - goal.to_i
    return "use the stairs" if current_floors < goal.to_i || ((down_floors % down.to_i) != 0)
    down_pushes = down_floors / down.to_i
    return down_pushes + up_pushes
  end
  "use the stairs"
end

input_data = ARGF.read.split
puts count_pushes(input_data[0], input_data[1], input_data[2], input_data[3], input_data[4])
