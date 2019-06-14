class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if self.invalid?
      raise TriangleError
    elsif @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
      :isosceles
    else
      :scalene
    end
  end

  def invalid?
    true if @side_3 >= @side_1 + @side_2 || @side_1 >= @side_2 + @side_3 || @side_2>= @side_1 + @side_3  || @side_1 == 0 || @side_2 == 0 || @side_3 == 0
  end

  # def kind
  #   validate_triangle
  #   if a == b && b == c
  #     :equilateral
  #   elsif a == b || b == c || a == c
  #     :isosceles
  #   else
  #     :scalene
  #   end
  # end
  #
  # def validate_triangle
  #   real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
  #   [a, b, c].each { |s| real_triangle << false if s <= 0 }
  #   raise TriangleError if real_triangle.include?(false)
  # end

  class TriangleError < StandardError
    # triangle error code
  end
end
