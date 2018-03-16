class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3

  def initialize(x, y, z)
    @side_1 = x
    @side_2 = y
    @side_3 = z
  end

  def kind
    if @side_1 + @side_2 <= @side_3 || @side_2 + @side_3 <= @side_1 || @side_1 + @side_3 <= @side_2 || @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError
    elsif @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif @side_1 == @side_2 && @side_2 != @side_3 || @side_2 == @side_3 && @side_3 != @side_1 || @side_1 == @side_3 && @side_3 != @side_2
      :isosceles
    elsif @side_1 != @side_2 && @side_2 != @side_3 && @side_3 != @side_1
      :scalene
    end
  end
end

class TriangleError < StandardError
end
