class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if self.a <= 0 || self.b <= 0 || self.c <= 0 || self.a + self.b <= self.c || self.a + self.c <= self.b || self.b + self.c <= self.a
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a != b && b != c && c != a
      :scalene
    else
      :isosceles
    end
  end

  class TriangleError < StandardError
  end
end
