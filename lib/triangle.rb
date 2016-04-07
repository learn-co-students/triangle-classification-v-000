class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def triangle_inequality_unsatisfied?
    (side_1 + side_2 <= side_3) || (side_2 + side_3 <= side_1) || (side_3 + side_1 <= side_2)
  end

  def kind
    if (side_1 <= 0) || (side_2 <= 0) || (side_3 <= 0) || triangle_inequality_unsatisfied?
      raise TriangleError
    elsif (side_1 == side_2) && (side_2 == side_3)
      :equilateral
    elsif (side_1 == side_2) || (side_2 == side_3) || (side_1 == side_3)
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
 # triangle error code
end