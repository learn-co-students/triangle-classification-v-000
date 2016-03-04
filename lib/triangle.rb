class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if self.valid_triangle == false
      raise TriangleError
    else
      if a == b && a == c && b == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      else
        :scalene
      end
    end
  end

  def valid_triangle
    (a + b > c) && (a + c > b) && (b + c > a) && a > 0 && b > 0 && c > 0
  end

end

class TriangleError < StandardError
  "Invalid side lengths for a triangle."
end