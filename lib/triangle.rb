class Triangle
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
    elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      raise TriangleError
    end

    if @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif @side2 == @side3 || @side1 == @side3 || @side1 == @side2
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError; end
