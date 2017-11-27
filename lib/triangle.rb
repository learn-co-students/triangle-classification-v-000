class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    confirm_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  def confirm_triangle
    triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each {|s| triangle << false if s <= 0}
    raise TriangleError if triangle.include?(false)
  end
end

class TriangleError < StandardError
end
