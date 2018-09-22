require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  # Triangle inequality: The sum of the lengths of any two sides of a triangle always exceeds the length of the third side
  # Further, each side must be larger than 0.
  def kind
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
    elsif @side3 >= (@side1 + @side2) || @side2 >= (@side1 + @side3) || @side1 >= (@side2 + @side3)
      raise TriangleError
    else
      proper_triangle
    end
  end

  # Scalene triangle: has no equal sides.
  # Isosceles triangle: has two equal sides
  # Equilateral triangle: has three equal sides
  def proper_triangle
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
      :scalene
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    end
  end

  class TriangleError < StandardError
  end
end
