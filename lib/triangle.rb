class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
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
end

def validate_triangle
  real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
  [a, b, c].each { |side| real_triangle << false if side <= 0}
  raise TriangleError if real_triangle.include?(false)
end

class TriangleError < StandardError
  #triangle error code
  p "This is not a triangle"
end
