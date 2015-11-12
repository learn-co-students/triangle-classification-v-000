require 'pry'

class Triangle
  attr_accessor :side_one, :side_two, :side_three
  def initialize(side_one, side_two, side_three)
    invalid_triangle(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def invalid_triangle(side_one, side_two, side_three)
    raise TriangleError if [side_one, side_two, side_three].any? { |side| side <= 0 }
    raise TriangleError if side_one + side_two < side_three || side_one + side_three < side_two || side_three + side_two < side_one
    raise TriangleError if (side_one + side_two == side_three) || (side_one + side_three == side_two) || (side_two + side_three == side_one)
  end

  def triangle_type(sides)
    return :equilateral if sides.all? { |side| side == sides[0]}
    return :isosceles if sides.count(sides[0]) == 2 || sides.count(sides[1]) == 2
    return :scalene if sides.count(sides[0]) != 2 || sides.count(sides[1]) != 2
  end

  def kind
    triangle_type([side_one, side_two, side_three])
  end
end

class TriangleError < StandardError
 
end