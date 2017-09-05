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
    sorted_array = sides.sort
    if sides.any? { |side| side.zero? || side < 0 }
      raise TriangleError
    elsif sorted_array[0] + sorted_array[1] <= sorted_array[2]
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
