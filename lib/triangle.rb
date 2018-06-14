

 class Triangle
  attr_reader :side_a, :side_b, :side_c
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    validate_triangle
    if side_a == side_b && side_b == side_c
      :equilateral
    elsif side_a == side_b || side_b == side_c || side_a == side_c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    valid_triangle = [(side_a + side_b > side_c), (side_a + side_c > side_b), (side_b + side_c > side_a)]
    [side_a, side_b, side_c].each { |s| valid_triangle << false if s <= 0 }
    raise TriangleError if valid_triangle.include?(false)
  end

  class TriangleError < StandardError
  end

end
