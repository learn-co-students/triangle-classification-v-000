require 'pry'
class Triangle

  attr_accessor :kind, :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if side_one <= 0 || side_two <= 0 || side_three <= 0
      raise TriangleError
    elsif (side_one + side_two) <= side_three || (side_one + side_three) <= side_two || (side_two + side_three) <= side_one
      raise TriangleError
    elsif side_one == side_two && side_three == side_one
      @kind = :equilateral
    elsif side_two == side_three || side_one == side_two || side_one == side_three
      @kind = :isosceles
    elsif side_one != side_two && side_three != side_one
      @kind = :scalene
    end
  end
end

class TriangleError < StandardError

  def message
    "The triangle is not valid."
  end
end
