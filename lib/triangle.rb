class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  def kind
    validate_triangle
    if side_1 == side_2 && side_2 == side_3
      :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(side_1 + side_2 > side_3), (side_1 + side_3 > side_2), (side_2 + side_3 > side_1)]
    [side_1, side_2, side_3].each { |s| real_triangle << false if s <= 0}
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
end
