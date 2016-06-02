class Triangle
  attr_reader :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
  end

  def kind
    case
    when @sides[0] <= 0 || @sides[1] <= 0 || @sides [2] <= 0
      raise TriangleError
    when @sides[0] + @sides[1] <= @sides[2] || @sides[0] + @sides[2] <= @sides[1] || @sides[1] + @sides[2] <= @sides[0]
      raise TriangleError
    when @sides[0] == @sides[1] && @sides[0] == @sides[2]
      :equilateral
    when @sides[0] == @sides[1] && @sides[0] != @sides[2]
      :isosceles
    when @sides[1] == @sides[2] && @sides[1] != @sides[0]
      :isosceles
    when @sides[2] == @sides[0] && @sides[2] != @sides[1]
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
