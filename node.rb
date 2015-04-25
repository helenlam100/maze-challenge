
class Node
  include Print
  attr_accessor :west, :east, :north, :south
  def initialize
    @north = false
    @west = false
    @south = false
    @east = false
  end
end
