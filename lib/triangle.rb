class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene, :a, :b, :c
  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def valid
    valid_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each { |side| valid_triangle << false if side <= 0 }
    raise TriangleError if valid_triangle.include?(false)
  end

  class TriangleError < StandardError

  end
end
