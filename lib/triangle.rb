require 'pry'

class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def validTriangle
    if (@sideA <= 0 && @sideB <= 0 && @sideC <= 0) || (@sideA + @sideB <= @sideC || @sideA + @sideC <= @sideB || @sideB + @sideC <= @sideA)
      false
    else
      true
    end
  end

  def kind
    if validTriangle != true
      raise TriangleError
    elsif @sideA == @sideB && @sideB == @sideC
      :equilateral
    elsif @sideA == @sideB && @sideA != @sideC || @sideA == @sideC && @sideA != @sideB || @sideB == @sideC && @sideB != @sideA
      :isosceles
    elsif @sideA != @sideB && @sideB != @sideC
      :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "You must input a valid triangle; sides must be greater than zero and the sum of two sides must be larger than the value of the third."
  end
end
