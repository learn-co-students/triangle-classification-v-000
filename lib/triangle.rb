class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def valid_triangle?
    (@a > 0 && @b > 0 && @c > 0) && 
    (@a + @b > @c && @a + @c > @b && @b + @c > @a)
  end

  def kind
  if valid_triangle?
    if a == b && b == c
      return :equilateral
    elsif a == b || b == c || a == c
      return :isosceles
    else
      return :scalene
    end
  elsif  valid_triangle? == false
    raise TriangleError
    end
  end
end

  class TriangleError < StandardError
    "Got an error message"
  end