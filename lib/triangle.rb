class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if positive_triangle == true && triangle_sides == true
      puts true
    else
      raise TriangleError
    end

    if a == b && b == c && a == c
      :equilateral
    elsif a != b && b != c && c != a
      :scalene
    else
      :isosceles
    end
  end

  def positive_triangle
    a.positive? && b.positive? && c.positive?
  end

  def triangle_sides
    a + b > c && a + c > b && b + c > a
  end

  class TriangleError < StandardError
  end
end
