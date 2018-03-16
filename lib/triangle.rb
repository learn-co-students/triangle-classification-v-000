class Triangle
  # write code here
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else
      :scalene
    end
  end

  def validate
    validate_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each {|n| validate_triangle << false if n <= 0}
    raise TriangleError if validate_triangle.include?(false)
  end
end

class TriangleError < StandardError
end