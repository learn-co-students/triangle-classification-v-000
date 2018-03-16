require 'pry'
class Triangle
  # write code here
  attr_reader :sides
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    @sides = [@side_a, @side_b, @side_c]
  end

  def kind
    sides_arr = sides.sort
    if sides.any? { |side| side <= 0 || sides_arr[0] + sides_arr[1] <= sides_arr[2] }
      raise TriangleError
    end
    return :equilateral if sides.uniq.count <= 1
    return :isosceles if sides.uniq.count <= 2
    return :scalene if sides.uniq.count <= 3
  end

end

class TriangleError < StandardError
  def message
    "Please enter valid triangle measurements."
  end
end
