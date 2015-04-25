
module West
  def open_west(node)
    puts "opening west"
    node.west = true
  end
end

module North
  def open_north(node)
    puts "opening north"
    node.north = true
  end
end

module East
  def open_east(node)
    puts "opening east"
    node.east = true
  end
end

module South
  def open_south(node)
    puts "opening south"
    node.south = true
  end
end

module BuildMaze

  def generate_maze(x_max, y_max)
    (0...y_max).each do |y|
      (0...x_max).each do |x|
        puts "node #{y}, #{x}"
        if y == 0
          next if x == x_max - 1  #means skip this upper north east corner
          open_east(data_store[y][x])  #write this method
          puts "#{y}, #{x+1}"
          open_west(data_store[y][x + 1]) if x + 1 < x_max
        elsif y > 0 && x < (x_max - 1)
          if rand(2) == 1
            open_east(data_store[y][x])
            open_west(data_store[y][x + 1]) if x + 1 < x_max
          else
            open_north(data_store[y][x])
            open_south(data_store[y - 1][x]) if y - 1 >= 0
          end
        else   #y > 0 && x == x_max - 1 #all east nodes except the upper east node
          open_north(data_store[y][x]) #write thie method
          open_south(data_store[y - 1][x]) if y - 1 >= 0
        end
      end
    end
  end
end

module Print

  def print

    while


    end
  end

end
