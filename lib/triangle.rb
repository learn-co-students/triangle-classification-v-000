class Triangle
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def all_sides_equal
    @side_1 == @side_2 && @side_1 == @side_3
  end

  def two_sides_equal
    (@side_1 == @side_2) || (@side_1 == @side_3) || (@side_3 == @side_2)
  end

  def all_sides_different
    @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
  end

  def invalid_triangle?
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError
    elsif (@side_1 + @side_2) <= @side_3 || (@side_1 + @side_3) <= @side_2 || (@side_3 + @side_2) <= @side_1
      raise TriangleError
    end
  end

  def kind
    if invalid_triangle?
      raise TriangleError
    end
    if all_sides_equal
      :equilateral
    elsif two_sides_equal
      :isosceles
    elsif all_sides_different
      :scalene
    end
  end
end

class TriangleError < StandardError
end
