class Triangle

  attr_accessor :type, :a, :b, :c

  def initialize(a, b, c)
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif (!(a + b > c) || !(a + c > b) || !(b + c > a))
      raise TriangleError
    else
      @a = a
      @b = b
      @c = c
    end
  end

  def kind
    if self.a == self.b && self.b == self.c
      self.type = :equilateral
    elsif self.a == self.b || self.a == self.c || self.b == self.c
      self.type = :isosceles
    else
      self.type = :scalene
    end
    self.type
  end

end


class TriangleError < StandardError

  def invalid_side_length
    "No side of your triangle may have any side length less than or equal to 0."
  end

  def invalid_triangle
    "The sum of the lengths of any two sides of a triangle must exceed the length of the third side."
  end

end
