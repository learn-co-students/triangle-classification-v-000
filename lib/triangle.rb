class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def kind
    if a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    elsif a == b && a == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
  def illegal_error
    "invalid triangle"
  end
end