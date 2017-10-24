class Triangle
  attr_accessor :side1, :side2, :side3, :sides

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3].sort
  end

  def kind
    case
    when @sides.include?(0) || @sides[0] + @sides[1] <= @sides[2]
      raise TriangleError
    when @sides[0] == @sides[2]
      kind = :equilateral
      return kind
    when @sides[0] == @sides[1] || @sides[2] == @sides[1]
      kind = :isosceles
      return kind
    when @sides[0] != @sides[1] && @sides[0] != @sides[2]
      kind = :scalene
      return kind
    end
  end

end

class TriangleError < StandardError
  "Triangle Error"
end
