class Triangle

  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    validate_triangle
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    valid_triangle = [(@side1 + @side2 > @side3), (@side1 + @side3 > @side2), (@side2 + @side3 > @side1)]

    [@side1, @side2, @side3].each do |side|
      if side <= 0
        valid_triangle << false
      end
    end

    if valid_triangle.include?(false)
      raise TriangleError
    end
  end

end

class TriangleError < StandardError

end
