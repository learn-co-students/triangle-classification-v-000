class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @triangle = [@side_1, @side_2, @side_3].sort
  end

  def not_a_triangle?
    @triangle.any?{ |side| side <= 0} || @triangle[0] + @triangle[1] <= @triangle[2]
  end

  def kind
    if not_a_triangle?
      begin
        raise TriangleError
      end
    elsif
      @side_1 == @side_2 && @side_2 == @side_3
        :equilateral
    elsif
      @side_1 != @side_2 && @side_2 != @side_3 && @side_1 != @side_3
        :scalene
    else
        :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      "not a triangle"
    end
  end
end
