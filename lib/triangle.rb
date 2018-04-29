class Triangle
  # write code here
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
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
  def validate_triangle
    true_tri = [(a+b>c), (a+c>b), (b+c>a)]
    [a, b, c].each { |side| true_tri << false if side <= 0 }
    raise TriangleError if true_tri.include?(false)
  end

  class TriangleError < StandardError
  end
end
