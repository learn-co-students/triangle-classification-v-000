class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    valid_triangle
    if side_1 == side_2 && side_2 == side_3
      :equilateral
    elsif
      side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle
    valid_triangle = [(side_1 + side_2 > side_3), (side_1 + side_3 > side_2), (side_2 + side_3 > side_1)]
    [side_1, side_2, side_3].each {|s| valid_triangle << false if s <=0}
    raise TriangleError if valid_triangle.include?(false)
  end
end

class TriangleError < StandardError
end
