class Triangle
  attr_accessor :sides, :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = []
    @sides << a
    @sides << b
    @sides << c
    if @sides.any? { |e| e < 0 } || a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    end
  end

  def kind
    if self.a == self.b && self.a == self.c
      return :equilateral
    elsif (a == b && a != c ) || (a == c && b != c ) || b == c && a != c
      return :isosceles
    else
      return :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "this is an invalid triangle"
  end
end
