class Triangle

  attr_reader :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if @side_a + @side_b <= @side_c || @side_a + @side_c <= @side_b || @side_b + @side_c <= @side_a
      raise TriangleError
    else
      if @side_a == @side_b && @side_a == @side_c && @side_b == @side_c
        :equilateral
      elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
        :isosceles
      elsif @side_a != @side_b || @side_a != @side_c || @side_b != @side_c
        :scalene
      end

    end
  end

end

class TriangleError < StandardError

end
