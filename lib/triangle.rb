class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def valid
    if self.a <= 0 || self.b <= 0 || self.c <= 0
      false
    elsif self.a + self.b <= self.c
      false
    elsif self.a + self.c <= self.b
      false
    elsif self.b + self.c <= self.a
      false
    else
      true
    end
  end

  def kind
    if !valid
      raise TriangleError
    elsif self.a == self.b && self.b == self.c
      :equilateral
    elsif self.a == self.b || self.b == self.c || self.a == self.c
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError

end
