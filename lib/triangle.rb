class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c  || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(a + b > c), (b + c > a), (a + c > b)]
    [a, b, c].each do |x| real_triangle << false if x <= 0
    end
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
end
