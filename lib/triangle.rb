require "pry"
class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3
  end

  def kind
    sides = [side1, side2, side3].sort
    if sides[0] <= 0 || (sides[0] + sides[1]) <= sides[2]
      #binding.pry
      raise TriangleError
    elsif sides.uniq.length == 1
      :equilateral
    elsif sides.uniq.length == 2
      :isosceles
    else
     :scalene
    end
  end

  class TriangleError < StandardError

  end
end
