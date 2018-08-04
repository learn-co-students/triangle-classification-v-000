class Triangle
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if ([a, b, c].any?{ |side| (side <= 0) }) || ((a + b) <= c) || ((b + c) <= a) || ((c + a) <= b)
      raise TriangleError
    end
    
    if a == b && b == c && a == c
      return :equilateral
    elsif a == b || b == c || c == a
      return :isosceles
    elsif a != b && b != c && c != a
      return :scalene
    end
  end

  class TriangleError < StandardError

  end
end
