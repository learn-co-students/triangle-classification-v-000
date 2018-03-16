class Triangle
  attr_accessor :a, :b,:c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_triangle
    if a != b && a != c && b != c
      :scalene
    elsif a == b && a == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    end
  end

  def valid_triangle
    if a <= 0 || b <= 0 || c <= 0 || a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  def message
    "That values that you have entered are invalid for a triangle"
  end
end
