class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    x, y, z = [side1, side2, side3].sort
    if [side1, side2, side3].min <= 0 || x + y <= z
      raise TriangleError
    elsif (side1 == side2) && (side2 == side3)
      :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      :isosceles
    else
      :scalene
    end
  end

  # OR
  # def kind
  #   validate_triangle
  #   if a == b && b == c
  #     :equilateral
  #   elsif a == b || b == c || a == c
  #     :isosceles
  #   else
  #     :scalene
  #   end
  # end
  #
  # def validate_triangle
  #   real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
  #   [a, b, c].each { |s| real_triangle << false if s <= 0 }
  #   raise TriangleError if real_triangle.include?(false)
  # end
end

class TriangleError < StandardError
end
