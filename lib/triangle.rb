class Triangle

  attr_reader :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    triangle_checker
    if side_a == side_b && side_b == side_c
      :equilateral
    elsif side_a == side_b || side_a == side_c || side_b == side_c
      :isosceles
    else
      :scalene
    end
  end

  def triangle_checker
    valid_triangle = [(side_a + side_b > side_c), (side_a + side_c > side_b), (side_b + side_c > side_a)]
    [side_a, side_b, side_c].each {|side| valid_triangle << false if side <= 0}
    raise TriangleError if valid_triangle.include?(false)
  end


  class TriangleError < StandardError
  end

end
