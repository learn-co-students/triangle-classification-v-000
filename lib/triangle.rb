class Triangle
  attr_accessor :kind

  def initialize(a, b, c)
    sides = [a, b, c].sort
    if sides.min <=0 || sides[0] + sides[1] <= sides[2]
      raise TriangleError
    elsif sides.min == sides.max
      @kind = :equilateral
    elsif sides[0] == sides[1] || sides[1] == sides[2]
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end
end

class TriangleError < StandardError
end