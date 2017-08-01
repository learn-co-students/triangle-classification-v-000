class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    is_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end


  def is_triangle
      real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
      [a, b, c].each {|t| real_triangle << false if t <= 0}
      raise TriangleError if real_triangle.include?(false)
    end
end

  class TriangleError < StandardError
end
