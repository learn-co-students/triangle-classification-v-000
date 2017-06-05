class Triangle
  # write code here
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if invalid_side || inequal_triangle
      raise TriangleError
    else
      if @side_1 == @side_2 && @side_1 == @side_3
        :equilateral
      elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
        :isosceles
      else
        :scalene
      end
    end
  end

  def inequal_triangle
    (@side_1 + @side_2 <= @side_3) || (@side_2 + @side_3 <= @side_1) || (@side_1 + @side_3 <= @side_2)
  end

  def invalid_side
    @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
  end

end

class TriangleError < StandardError

end
