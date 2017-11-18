class Triangle
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if @side_a <= 0 || @side_b <= 0 || @side_c <= 0 || (@side_a + @side_b) <= @side_c || (@side_c + @side_b) <= @side_a || (@side_a + @side_c) <= @side_b
        raise TriangleError
    elsif @side_a == @side_b && @side_b == @side_c
      :equilateral
    elsif @side_a == @side_b || @side_b == @side_c || @side_c == @side_a
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "Triangles must have 3 non-negative sides. The sum of any two sides must be greater than the 3rd side"
  end
end
