
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if validate_triangle == false
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b && b !=c || b == c && c != a || c == a && a != b
      :isosceles
    elsif a != b && b != c && c != a
      :scalene
    end
  end

  def validate_triangle
    if (a + b <= c) || (b + c <= a) || c + a <= b
      false
    elsif a <= 0 || b <= 0 || c <= 0
      false
    end
  end
end

class TriangleError < StandardError
end
