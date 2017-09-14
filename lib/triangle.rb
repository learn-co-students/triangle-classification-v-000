class Triangle

  attr_reader :side_1, :side_2, :side_3

  def initialize(s_1, s_2, s_3)
    @side_1 = s_1
    @side_2 = s_2
    @side_3 = s_3
  end

  def kind
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0 ||
       @side_1 + @side_2 <= @side_3 || @side_1 + @side_3 <= @side_2 || @side_2 + @side_3 <= @side_1
    raise TriangleError

    elsif @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif @side_1 < @side_2 && @side_2 == @side_3 ||
          @side_1 > @side_3 && @side_1 == @side_2 ||
          @side_1 > @side_2 && @side_1 == @side_3
      :isosceles
    elsif @side_1 != @side_2 && @side_2 != @side_3 &&
          @side_1 != @side_3
      :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "given side lengths violate triangle inequality"
  end
end
