require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3, :greater_than_zero

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    diff1 = @side2 + @side3 - @side1
    diff2 = @side1 + @side3 - @side2
    diff3 = @side1 + @side2 - @side3

    if diff1 <= 0 || diff2 <= 0 || diff3 <= 0 || @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError, "This is not a valid triangle!"
    elsif @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
