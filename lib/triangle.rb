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

  class TriangleError < StandardError
    # triangle error code
  end
end
