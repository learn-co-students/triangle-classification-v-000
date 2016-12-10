class Triangle
  attr_accessor :a, :b, :c

  def initialize(side1, side2, side3)
    @a = side1
    @b = side2
    @c = side3
  end

  def kind
    validate_triangle

    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    #The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.
    real_triangle = [(a + b > c), (b + c > a), (a + c > b)]
    #Further, each side must be larger than 0.
    [a, b, c].each {|side| real_triangle << false if side <= 0}
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
end
