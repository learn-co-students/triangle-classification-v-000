require 'pry'

class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    sides = [@side1, @side2, @side3].sort

    zero_or_negative_side = sides.any? {|s| s <= 0}
    triangle_inequality_violation = (sides[0] + sides[1]) <= sides[2]

    equilateral = sides.all? {|s| s == sides[0]}
    isosceles = (sides[0] == sides[1] && sides[0] != sides[2]) || (sides[1] == sides[2] && sides[0] != sides[1])
    scalene = (sides[0] + sides[1]) > sides[2]

    if zero_or_negative_side || triangle_inequality_violation
      raise TriangleError
    elsif equilateral
      :equilateral
    elsif isosceles
      :isosceles
    elsif scalene
      :scalene
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  def message
    "not a triangle"
  end
end
