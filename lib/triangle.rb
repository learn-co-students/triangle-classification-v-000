require 'pry'
class Triangle
  attr_accessor :sides

  def initialize(side1,side2,side3)
    @sides = []
    @sides << side1
    @sides << side2
    @sides << side3
    @sides.sort!
  end
  def kind
    if (sides[0] + sides[1]) <= sides[2] || sides[0] <= 0
      raise TriangleError
    elsif sides[0] == sides[2]
      :equilateral
    elsif sides[0] == sides[1] || sides[1] == sides[2]
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "Triangle Error: Please check the sides."
  end
end