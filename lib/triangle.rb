class Triangle

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    validate_triangle
    if @length_1 == @length_2 && @length_2 == @length_3
      :equilateral
    elsif @length_1 == @length_2 || @length_2 == @length_3 || @length_1 == @length_3
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    if (@length_1 + @length_2 <= @length_3) || (@length_1 + @length_3 <= @length_2) || (@length_3 + @length_2 <= @length_1) || @length_1 <= 0 || @length_2 <= 0 || @length_3 <= 0
      raise TriangleError
    end
  end

end

class TriangleError < StandardError


end
