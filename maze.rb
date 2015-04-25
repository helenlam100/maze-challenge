require_relative 'maze_modules'
require_relative 'node'

class Maze
  include North, West, East, South, BuildMaze
  attr_reader :data_store

  def initialize(x = 3, y = 4)
    @data_store = Array.new(y){ Array.new(x) { Node.new } }
    p data_store[0][0]
    generate_maze(x, y)
  end
end

a = Maze.new
p a.data_store







#2 dimensional array that stores
#[[a, b, c],
#[d, e, f],
# [g, h, i],
# ]


#LOC less than 3 lines
#classes have one instance method and one constructor class method maximum
#classes can include as many modules as you want
#modules can't use instance variables
#emphasize readability
#write tests


#once we have
