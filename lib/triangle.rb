class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    sides = [side1, side2, side3].sort
    raise TriangleError if sides[0] <= 0 or sides[0] + sides[1] <= sides[2]
    return :equilateral if sides[0] == sides[2]
    return :isosceles if sides[0] == sides[1] or sides[1] == sides[2]
    return :scalene
  end
end

class TriangleError < StandardError
  def message
    "Illegal"
  end
end
