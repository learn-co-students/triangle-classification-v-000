class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    illegal_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def illegal_triangle
    side_array = [a, b, c]
    raise TriangleError unless (a + b > c && a + c > b && b + c > a)
    raise TriangleError if side_array.any? { |side| side <= 0 }
  end
end

class TriangleError < StandardError
end
