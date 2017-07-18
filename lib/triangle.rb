class Triangle
  attr_accessor :kind
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def valid_triangle
    if (a + b <= c) || (a + c <= b) || (b + c <= a) || (a == 0) || (b == 0) || (c == 0)
      false
    else
      true
    end
  end

  def kind
    if self.valid_triangle == false
      raise TriangleError
    elsif a == b && b == c
      self.kind = :equilateral
    elsif a == b || b == c || a == c
      self.kind = :isosceles
    else
      self.kind = :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "Not a valid triangle"
  end
end
