class Triangle
  attr_reader :kind, :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

    if (@side1 <= 0) || (@side2 <= 0) || (@side3 <= 0)
      raise TriangleError
    end

    if (@side1 + @side2 <= @side3) || (@side1 + @side3 <= @side2) || (@side2 + @side3 <= @side1)
      raise TriangleError
    end
  end

  def kind
    if @side1 == @side2 && @side1 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      return :isosceles
    else
      return :scalene
    end
  end

end

class TriangleError < StandardError
  def side_zero_message
    "A valid triangle needs all sides to be greater than zero"
  end

  def triangle_inequality_message
    "A valid triangle needs to have the sum of any two sides larger than the third side"
  end
end
