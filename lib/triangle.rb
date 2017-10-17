class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid?
    if a == b && b == c && c == a
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else
      :scalene
    end
  end

  def valid?
    if ((a + b) <= c) || ((c + a) <= b) || ((b + c) <= a)
      raise TriangleError
    end
    if (a <= 0) || (b <= 0) || (c <= 0)
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
 # triangle error code
end
