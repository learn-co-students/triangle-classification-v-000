class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    check_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def check_triangle
    is_triangle = [(a + b > c), (a + c > b), (b + c > a)]
     [a, b, c].each { |side| is_triangle << false if side <= 0 }
     raise TriangleError if is_triangle.include?(false)
   end
 end

class TriangleError < StandardError
end
