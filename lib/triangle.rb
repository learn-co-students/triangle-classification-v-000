class Triangle
  attr_accessor :kind
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
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    valid_traingle = [(a + b > c), (a + c > b), (b + c > a)]
    [a,b,c].each {|s| valid_traingle << false if s <= 0}
    raise TriangleError if valid_traingle.include?(false)
  end
end

class TriangleError < StandardError
end
