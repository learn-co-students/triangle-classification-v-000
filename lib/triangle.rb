class Triangle
  # write code here
  attr_accessor :side_A, :side_B, :side_C

  def initialize(side_A, side_B, side_C)
    @side_A = side_A
    @side_B = side_B
    @side_C = side_C
  end

  def kind
    if @side_A <= 0 || @side_B <= 0 || @side_C <= 0
      raise TriangleError
    elsif @side_A + @side_B <= @side_C
      raise TriangleError
    elsif @side_A + @side_C <= @side_B
      raise TriangleError
    elsif @side_B + @side_C <= @side_A
      raise TriangleError
    elsif @side_A == @side_B && @side_B == @side_C
      return :equilateral
    elsif @side_A == @side_B && @side_B != @side_C
      return :isosceles
    elsif @side_A == @side_C && @side_C != @side_B
      return :isosceles
    elsif @side_B == @side_C && @side_C != @side_A
      return :isosceles
    else
      return :scalene
    end








  end

end

class TriangleError < StandardError

end
